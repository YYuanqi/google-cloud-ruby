# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/datastore/v1/datastore_pb"
require "google/datastore/v1/datastore_services_pb"
require "google/cloud/datastore/v1/datastore"

class ::Google::Cloud::Datastore::V1::Datastore::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_lookup
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::V1::LookupResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    read_options = {}
    keys = [{}]

    lookup_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :lookup, name
      assert_kind_of ::Google::Cloud::Datastore::V1::LookupRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::V1::ReadOptions), request["read_options"]
      assert_kind_of ::Google::Cloud::Datastore::V1::Key, request["keys"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, lookup_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.lookup({ project_id: project_id, read_options: read_options, keys: keys }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.lookup project_id: project_id, read_options: read_options, keys: keys do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.lookup ::Google::Cloud::Datastore::V1::LookupRequest.new(project_id: project_id, read_options: read_options, keys: keys) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.lookup({ project_id: project_id, read_options: read_options, keys: keys }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.lookup(::Google::Cloud::Datastore::V1::LookupRequest.new(project_id: project_id, read_options: read_options, keys: keys), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, lookup_client_stub.call_rpc_count
    end
  end

  def test_run_query
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::V1::RunQueryResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    partition_id = {}
    read_options = {}
    query = {}

    run_query_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_query, name
      assert_kind_of ::Google::Cloud::Datastore::V1::RunQueryRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::V1::PartitionId), request["partition_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::V1::ReadOptions), request["read_options"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::V1::Query), request["query"]
      assert_equal :query, request.query_type
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_query_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_query({ project_id: project_id, partition_id: partition_id, read_options: read_options, query: query }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_query project_id: project_id, partition_id: partition_id, read_options: read_options, query: query do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_query ::Google::Cloud::Datastore::V1::RunQueryRequest.new(project_id: project_id, partition_id: partition_id, read_options: read_options, query: query) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_query({ project_id: project_id, partition_id: partition_id, read_options: read_options, query: query }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_query(::Google::Cloud::Datastore::V1::RunQueryRequest.new(project_id: project_id, partition_id: partition_id, read_options: read_options, query: query), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_query_client_stub.call_rpc_count
    end
  end

  def test_begin_transaction
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::V1::BeginTransactionResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    transaction_options = {}

    begin_transaction_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :begin_transaction, name
      assert_kind_of ::Google::Cloud::Datastore::V1::BeginTransactionRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Datastore::V1::TransactionOptions), request["transaction_options"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, begin_transaction_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.begin_transaction({ project_id: project_id, transaction_options: transaction_options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.begin_transaction project_id: project_id, transaction_options: transaction_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.begin_transaction ::Google::Cloud::Datastore::V1::BeginTransactionRequest.new(project_id: project_id, transaction_options: transaction_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.begin_transaction({ project_id: project_id, transaction_options: transaction_options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.begin_transaction(::Google::Cloud::Datastore::V1::BeginTransactionRequest.new(project_id: project_id, transaction_options: transaction_options), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, begin_transaction_client_stub.call_rpc_count
    end
  end

  def test_commit
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::V1::CommitResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    mode = :MODE_UNSPECIFIED
    transaction = "hello world"
    mutations = [{}]

    commit_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :commit, name
      assert_kind_of ::Google::Cloud::Datastore::V1::CommitRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal :MODE_UNSPECIFIED, request["mode"]
      assert_equal "hello world", request["transaction"]
      assert_equal :transaction, request.transaction_selector
      assert_kind_of ::Google::Cloud::Datastore::V1::Mutation, request["mutations"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, commit_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.commit({ project_id: project_id, mode: mode, transaction: transaction, mutations: mutations }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.commit project_id: project_id, mode: mode, transaction: transaction, mutations: mutations do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.commit ::Google::Cloud::Datastore::V1::CommitRequest.new(project_id: project_id, mode: mode, transaction: transaction, mutations: mutations) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.commit({ project_id: project_id, mode: mode, transaction: transaction, mutations: mutations }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.commit(::Google::Cloud::Datastore::V1::CommitRequest.new(project_id: project_id, mode: mode, transaction: transaction, mutations: mutations), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, commit_client_stub.call_rpc_count
    end
  end

  def test_rollback
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::V1::RollbackResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    transaction = "hello world"

    rollback_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :rollback, name
      assert_kind_of ::Google::Cloud::Datastore::V1::RollbackRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["transaction"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, rollback_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.rollback({ project_id: project_id, transaction: transaction }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.rollback project_id: project_id, transaction: transaction do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.rollback ::Google::Cloud::Datastore::V1::RollbackRequest.new(project_id: project_id, transaction: transaction) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.rollback({ project_id: project_id, transaction: transaction }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.rollback(::Google::Cloud::Datastore::V1::RollbackRequest.new(project_id: project_id, transaction: transaction), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, rollback_client_stub.call_rpc_count
    end
  end

  def test_allocate_ids
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::V1::AllocateIdsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    keys = [{}]

    allocate_ids_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :allocate_ids, name
      assert_kind_of ::Google::Cloud::Datastore::V1::AllocateIdsRequest, request
      assert_equal "hello world", request["project_id"]
      assert_kind_of ::Google::Cloud::Datastore::V1::Key, request["keys"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, allocate_ids_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.allocate_ids({ project_id: project_id, keys: keys }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.allocate_ids project_id: project_id, keys: keys do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.allocate_ids ::Google::Cloud::Datastore::V1::AllocateIdsRequest.new(project_id: project_id, keys: keys) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.allocate_ids({ project_id: project_id, keys: keys }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.allocate_ids(::Google::Cloud::Datastore::V1::AllocateIdsRequest.new(project_id: project_id, keys: keys), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, allocate_ids_client_stub.call_rpc_count
    end
  end

  def test_reserve_ids
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Datastore::V1::ReserveIdsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    database_id = "hello world"
    keys = [{}]

    reserve_ids_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :reserve_ids, name
      assert_kind_of ::Google::Cloud::Datastore::V1::ReserveIdsRequest, request
      assert_equal "hello world", request["project_id"]
      assert_equal "hello world", request["database_id"]
      assert_kind_of ::Google::Cloud::Datastore::V1::Key, request["keys"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, reserve_ids_client_stub do
      # Create client
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.reserve_ids({ project_id: project_id, database_id: database_id, keys: keys }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.reserve_ids project_id: project_id, database_id: database_id, keys: keys do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.reserve_ids ::Google::Cloud::Datastore::V1::ReserveIdsRequest.new(project_id: project_id, database_id: database_id, keys: keys) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.reserve_ids({ project_id: project_id, database_id: database_id, keys: keys }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.reserve_ids(::Google::Cloud::Datastore::V1::ReserveIdsRequest.new(project_id: project_id, database_id: database_id, keys: keys), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, reserve_ids_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastore::V1::Datastore::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Datastore::V1::Datastore::Client::Configuration, config
  end
end
