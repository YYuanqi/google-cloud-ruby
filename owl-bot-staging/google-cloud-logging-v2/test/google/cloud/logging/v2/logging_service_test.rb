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

require "google/logging/v2/logging_pb"
require "google/logging/v2/logging_services_pb"
require "google/cloud/logging/v2/logging_service"

class ::Google::Cloud::Logging::V2::LoggingService::ClientTest < Minitest::Test
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

  def test_delete_log
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    log_name = "hello world"

    delete_log_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_log, name
      assert_kind_of ::Google::Cloud::Logging::V2::DeleteLogRequest, request
      assert_equal "hello world", request["log_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_log_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::LoggingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_log({ log_name: log_name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_log log_name: log_name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_log ::Google::Cloud::Logging::V2::DeleteLogRequest.new(log_name: log_name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_log({ log_name: log_name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_log(::Google::Cloud::Logging::V2::DeleteLogRequest.new(log_name: log_name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_log_client_stub.call_rpc_count
    end
  end

  def test_write_log_entries
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::WriteLogEntriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    log_name = "hello world"
    resource = {}
    labels = {}
    entries = [{}]
    partial_success = true
    dry_run = true

    write_log_entries_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :write_log_entries, name
      assert_kind_of ::Google::Cloud::Logging::V2::WriteLogEntriesRequest, request
      assert_equal "hello world", request["log_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Api::MonitoredResource), request["resource"]
      assert_equal({}, request["labels"].to_h)
      assert_kind_of ::Google::Cloud::Logging::V2::LogEntry, request["entries"].first
      assert_equal true, request["partial_success"]
      assert_equal true, request["dry_run"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, write_log_entries_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::LoggingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.write_log_entries({ log_name: log_name, resource: resource, labels: labels, entries: entries, partial_success: partial_success, dry_run: dry_run }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.write_log_entries log_name: log_name, resource: resource, labels: labels, entries: entries, partial_success: partial_success, dry_run: dry_run do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.write_log_entries ::Google::Cloud::Logging::V2::WriteLogEntriesRequest.new(log_name: log_name, resource: resource, labels: labels, entries: entries, partial_success: partial_success, dry_run: dry_run) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.write_log_entries({ log_name: log_name, resource: resource, labels: labels, entries: entries, partial_success: partial_success, dry_run: dry_run }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.write_log_entries(::Google::Cloud::Logging::V2::WriteLogEntriesRequest.new(log_name: log_name, resource: resource, labels: labels, entries: entries, partial_success: partial_success, dry_run: dry_run), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, write_log_entries_client_stub.call_rpc_count
    end
  end

  def test_list_log_entries
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::ListLogEntriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource_names = ["hello world"]
    filter = "hello world"
    order_by = "hello world"
    page_size = 42
    page_token = "hello world"

    list_log_entries_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_log_entries, name
      assert_kind_of ::Google::Cloud::Logging::V2::ListLogEntriesRequest, request
      assert_equal ["hello world"], request["resource_names"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_log_entries_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::LoggingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_log_entries({ resource_names: resource_names, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_log_entries resource_names: resource_names, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_log_entries ::Google::Cloud::Logging::V2::ListLogEntriesRequest.new(resource_names: resource_names, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_log_entries({ resource_names: resource_names, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_log_entries(::Google::Cloud::Logging::V2::ListLogEntriesRequest.new(resource_names: resource_names, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_log_entries_client_stub.call_rpc_count
    end
  end

  def test_list_monitored_resource_descriptors
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::ListMonitoredResourceDescriptorsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    page_size = 42
    page_token = "hello world"

    list_monitored_resource_descriptors_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_monitored_resource_descriptors, name
      assert_kind_of ::Google::Cloud::Logging::V2::ListMonitoredResourceDescriptorsRequest, request
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_monitored_resource_descriptors_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::LoggingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_monitored_resource_descriptors({ page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_monitored_resource_descriptors page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_monitored_resource_descriptors ::Google::Cloud::Logging::V2::ListMonitoredResourceDescriptorsRequest.new(page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_monitored_resource_descriptors({ page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_monitored_resource_descriptors(::Google::Cloud::Logging::V2::ListMonitoredResourceDescriptorsRequest.new(page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_monitored_resource_descriptors_client_stub.call_rpc_count
    end
  end

  def test_list_logs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::ListLogsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    resource_names = ["hello world"]

    list_logs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_logs, name
      assert_kind_of ::Google::Cloud::Logging::V2::ListLogsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal ["hello world"], request["resource_names"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_logs_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::LoggingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_logs({ parent: parent, page_size: page_size, page_token: page_token, resource_names: resource_names }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_logs parent: parent, page_size: page_size, page_token: page_token, resource_names: resource_names do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_logs ::Google::Cloud::Logging::V2::ListLogsRequest.new(parent: parent, page_size: page_size, page_token: page_token, resource_names: resource_names) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_logs({ parent: parent, page_size: page_size, page_token: page_token, resource_names: resource_names }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_logs(::Google::Cloud::Logging::V2::ListLogsRequest.new(parent: parent, page_size: page_size, page_token: page_token, resource_names: resource_names), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_logs_client_stub.call_rpc_count
    end
  end

  def test_tail_log_entries
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::TailLogEntriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a bidi streaming method.
    resource_names = ["hello world"]
    filter = "hello world"
    buffer_window = {}

    tail_log_entries_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :tail_log_entries, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, tail_log_entries_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::LoggingService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { resource_names: resource_names, filter: filter, buffer_window: buffer_window }
      request_proto = ::Google::Cloud::Logging::V2::TailLogEntriesRequest.new resource_names: resource_names, filter: filter, buffer_window: buffer_window
      enum_input = [request_hash, request_proto].to_enum
      client.tail_log_entries enum_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Logging::V2::TailLogEntriesResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { resource_names: resource_names, filter: filter, buffer_window: buffer_window }
      request_proto = ::Google::Cloud::Logging::V2::TailLogEntriesRequest.new resource_names: resource_names, filter: filter, buffer_window: buffer_window
      stream_input = Gapic::StreamInput.new
      client.tail_log_entries stream_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Logging::V2::TailLogEntriesResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { resource_names: resource_names, filter: filter, buffer_window: buffer_window }
      request_proto = ::Google::Cloud::Logging::V2::TailLogEntriesRequest.new resource_names: resource_names, filter: filter, buffer_window: buffer_window
      enum_input = [request_hash, request_proto].to_enum
      client.tail_log_entries enum_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Logging::V2::TailLogEntriesResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { resource_names: resource_names, filter: filter, buffer_window: buffer_window }
      request_proto = ::Google::Cloud::Logging::V2::TailLogEntriesRequest.new resource_names: resource_names, filter: filter, buffer_window: buffer_window
      stream_input = Gapic::StreamInput.new
      client.tail_log_entries stream_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Logging::V2::TailLogEntriesResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, tail_log_entries_client_stub.call_rpc_count
      tail_log_entries_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Logging::V2::TailLogEntriesRequest, r
          assert_equal ["hello world"], r["resource_names"]
          assert_equal "hello world", r["filter"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Duration), r["buffer_window"]
        end
      end
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Logging::V2::LoggingService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Logging::V2::LoggingService::Client::Configuration, config
  end
end
