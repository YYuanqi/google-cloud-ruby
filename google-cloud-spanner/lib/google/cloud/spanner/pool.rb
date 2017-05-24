# Copyright 2017 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require "thread"
require "google/cloud/spanner/errors"
require "google/cloud/spanner/session"

module Google
  module Cloud
    module Spanner
      ##
      # @private
      #
      # # Pool
      #
      # Implements a pool for managing and reusing
      # {Google::Cloud::Spanner::Session} instances.
      #
      class Pool
        attr_accessor :all_sessions, :session_queue, :transaction_queue

        def initialize client, min: 10, max: 100, keepalive: 1800,
                       write_ratio: 0.3, fail: true, block_on_init: nil
          @client = client
          @min = min
          @max = max
          @keepalive = keepalive
          @write_ratio = write_ratio
          @write_ratio = 0 if write_ratio < 0
          @write_ratio = 1 if write_ratio > 1
          @fail = fail

          @mutex = Mutex.new
          @resource = ConditionVariable.new

          # initialize pool and availability queue
          init block_on_init: block_on_init
        end

        def with_session
          session = checkout_session
          begin
            yield session
          ensure
            checkin_session session
          end
        end

        def checkout_session
          action = nil
          @mutex.synchronize do
            loop do
              fail ClientClosedError if @closed

              read_session = session_queue.shift
              return read_session if read_session
              write_transaction = transaction_queue.shift
              return write_transaction.session if write_transaction

              if can_allocate_more_sessions?
                action = :new
                break
              end

              fail SessionLimitError if @fail

              @resource.wait @mutex
            end
          end

          return new_session! if action == :new
        end

        def checkin_session session
          unless all_sessions.include? session
            fail ArgumentError, "Cannot checkin session"
          end

          @mutex.synchronize do
            session_queue.push session

            @resource.signal
          end

          nil
        end

        def with_transaction
          tx = checkout_transaction
          begin
            yield tx
          ensure
            checkin_transaction tx
          end
        end

        def checkout_transaction
          action = nil
          @mutex.synchronize do
            loop do
              fail ClientClosedError if @closed

              write_transaction = transaction_queue.shift
              return write_transaction if write_transaction
              read_session = session_queue.shift
              if read_session
                action = read_session
                break
              end

              if can_allocate_more_sessions?
                action = :new
                break
              end

              fail SessionLimitError if @fail

              @resource.wait @mutex
            end
          end
          if action.is_a? Google::Cloud::Spanner::Session
            return action.create_transaction
          end
          return new_transaction! if action == :new
        end

        def checkin_transaction tx
          unless all_sessions.include? tx.session
            fail ArgumentError, "Cannot checkin session"
          end

          @mutex.synchronize do
            transaction_queue.push tx.session.create_transaction

            @resource.signal
          end

          nil
        end

        def reset
          close
          init

          true
        end

        def close
          @thread.kill if @thread
          # Unblock all waiting threads
          @closed = true
          @resource.broadcast
          # Delete all sessions
          @mutex.synchronize do
            @all_sessions.map do |s|
              Thread.new do
                s.delete_session rescue nil
              end
            end.map(&:join)
            @all_sessions = []
            @session_queue = []
            @transaction_queue = []
          end

          true
        end

        private

        def init block_on_init: nil
          @all_sessions = []
          @session_queue = []
          @transaction_queue = []
          ensure_valid_thread!
          # init session queue
          num_transactions = (@min * @write_ratio).round
          num_sessions = @min.to_i - num_transactions
          init_session_threads = num_sessions.times.map do
            Thread.new do
              s = new_session!
              @mutex.synchronize do
                session_queue << s
              end
            end
          end
          init_session_threads.map(&:join) if block_on_init
          # init transaction queue
          init_transaction_threads = num_transactions.times.map do
            Thread.new do
              tx = new_transaction!
              @mutex.synchronize do
                transaction_queue << tx
              end
            end
          end
          init_transaction_threads.map(&:join) if block_on_init
          # Do not block on calling Thread#join on the threads by default
        end

        def new_session!
          session = @client.create_new_session
          @mutex.synchronize do
            all_sessions << session
          end
          session
        end

        def new_transaction!
          new_session!.create_transaction
        end

        def can_allocate_more_sessions?
          # This is expected to be called from within a synchronize block
          all_sessions.size < @max
        end

        def ensure_valid!
          ensure_valid_threads = []
          @mutex.synchronize do
            ensure_valid_threads += session_queue.map do |s|
              Thread.new do
                s.ensure_valid! since: @keepalive
              end
            end
            ensure_valid_threads += transaction_queue.map do |tx|
              Thread.new do
                tx.session.ensure_valid! since: @keepalive
              end
            end
          end
          # join all the threads before returning
          ensure_valid_threads.map(&:join)
        end

        def ensure_valid_thread!
          @thread ||= Thread.new do
            # before calling keepalive
            loop do
              ensure_valid!
              sleep 300
            end
          end
        end
      end
    end
  end
end
