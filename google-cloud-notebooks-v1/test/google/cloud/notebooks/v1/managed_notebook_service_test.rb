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

require "google/cloud/notebooks/v1/managed_service_pb"
require "google/cloud/notebooks/v1/managed_service_services_pb"
require "google/cloud/notebooks/v1/managed_notebook_service"

class ::Google::Cloud::Notebooks::V1::ManagedNotebookService::ClientTest < Minitest::Test
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

  def test_list_runtimes
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Notebooks::V1::ListRuntimesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_runtimes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_runtimes, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::ListRuntimesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_runtimes_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_runtimes({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_runtimes parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_runtimes ::Google::Cloud::Notebooks::V1::ListRuntimesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_runtimes({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_runtimes(::Google::Cloud::Notebooks::V1::ListRuntimesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_runtimes_client_stub.call_rpc_count
    end
  end

  def test_get_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Notebooks::V1::Runtime.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::GetRuntimeRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_runtime({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_runtime name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_runtime ::Google::Cloud::Notebooks::V1::GetRuntimeRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_runtime({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_runtime(::Google::Cloud::Notebooks::V1::GetRuntimeRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_runtime_client_stub.call_rpc_count
    end
  end

  def test_create_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    runtime_id = "hello world"
    runtime = {}
    request_id = "hello world"

    create_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::CreateRuntimeRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["runtime_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V1::Runtime), request["runtime"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_runtime({ parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_runtime parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_runtime ::Google::Cloud::Notebooks::V1::CreateRuntimeRequest.new(parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_runtime({ parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_runtime(::Google::Cloud::Notebooks::V1::CreateRuntimeRequest.new(parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_runtime_client_stub.call_rpc_count
    end
  end

  def test_update_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    runtime = {}
    update_mask = {}
    request_id = "hello world"

    update_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::UpdateRuntimeRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V1::Runtime), request["runtime"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_runtime({ runtime: runtime, update_mask: update_mask, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_runtime runtime: runtime, update_mask: update_mask, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_runtime ::Google::Cloud::Notebooks::V1::UpdateRuntimeRequest.new(runtime: runtime, update_mask: update_mask, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_runtime({ runtime: runtime, update_mask: update_mask, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_runtime(::Google::Cloud::Notebooks::V1::UpdateRuntimeRequest.new(runtime: runtime, update_mask: update_mask, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_runtime_client_stub.call_rpc_count
    end
  end

  def test_delete_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::DeleteRuntimeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_runtime({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_runtime name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_runtime ::Google::Cloud::Notebooks::V1::DeleteRuntimeRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_runtime({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_runtime(::Google::Cloud::Notebooks::V1::DeleteRuntimeRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_runtime_client_stub.call_rpc_count
    end
  end

  def test_start_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    start_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::StartRuntimeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_runtime({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_runtime name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_runtime ::Google::Cloud::Notebooks::V1::StartRuntimeRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_runtime({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_runtime(::Google::Cloud::Notebooks::V1::StartRuntimeRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_runtime_client_stub.call_rpc_count
    end
  end

  def test_stop_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    stop_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :stop_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::StopRuntimeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, stop_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.stop_runtime({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.stop_runtime name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.stop_runtime ::Google::Cloud::Notebooks::V1::StopRuntimeRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.stop_runtime({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.stop_runtime(::Google::Cloud::Notebooks::V1::StopRuntimeRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, stop_runtime_client_stub.call_rpc_count
    end
  end

  def test_switch_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    machine_type = "hello world"
    accelerator_config = {}
    request_id = "hello world"

    switch_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :switch_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::SwitchRuntimeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["machine_type"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V1::RuntimeAcceleratorConfig), request["accelerator_config"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, switch_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.switch_runtime({ name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.switch_runtime name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.switch_runtime ::Google::Cloud::Notebooks::V1::SwitchRuntimeRequest.new(name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.switch_runtime({ name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.switch_runtime(::Google::Cloud::Notebooks::V1::SwitchRuntimeRequest.new(name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, switch_runtime_client_stub.call_rpc_count
    end
  end

  def test_reset_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    reset_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :reset_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::ResetRuntimeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, reset_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.reset_runtime({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.reset_runtime name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.reset_runtime ::Google::Cloud::Notebooks::V1::ResetRuntimeRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.reset_runtime({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.reset_runtime(::Google::Cloud::Notebooks::V1::ResetRuntimeRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, reset_runtime_client_stub.call_rpc_count
    end
  end

  def test_upgrade_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    upgrade_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :upgrade_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::UpgradeRuntimeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, upgrade_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.upgrade_runtime({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.upgrade_runtime name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.upgrade_runtime ::Google::Cloud::Notebooks::V1::UpgradeRuntimeRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.upgrade_runtime({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.upgrade_runtime(::Google::Cloud::Notebooks::V1::UpgradeRuntimeRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, upgrade_runtime_client_stub.call_rpc_count
    end
  end

  def test_report_runtime_event
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    vm_id = "hello world"
    event = {}

    report_runtime_event_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :report_runtime_event, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::ReportRuntimeEventRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["vm_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V1::Event), request["event"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, report_runtime_event_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.report_runtime_event({ name: name, vm_id: vm_id, event: event }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.report_runtime_event name: name, vm_id: vm_id, event: event do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.report_runtime_event ::Google::Cloud::Notebooks::V1::ReportRuntimeEventRequest.new(name: name, vm_id: vm_id, event: event) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.report_runtime_event({ name: name, vm_id: vm_id, event: event }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.report_runtime_event(::Google::Cloud::Notebooks::V1::ReportRuntimeEventRequest.new(name: name, vm_id: vm_id, event: event), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, report_runtime_event_client_stub.call_rpc_count
    end
  end

  def test_refresh_runtime_token_internal
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Notebooks::V1::RefreshRuntimeTokenInternalResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    vm_id = "hello world"

    refresh_runtime_token_internal_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :refresh_runtime_token_internal, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::RefreshRuntimeTokenInternalRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["vm_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, refresh_runtime_token_internal_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.refresh_runtime_token_internal({ name: name, vm_id: vm_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.refresh_runtime_token_internal name: name, vm_id: vm_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.refresh_runtime_token_internal ::Google::Cloud::Notebooks::V1::RefreshRuntimeTokenInternalRequest.new(name: name, vm_id: vm_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.refresh_runtime_token_internal({ name: name, vm_id: vm_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.refresh_runtime_token_internal(::Google::Cloud::Notebooks::V1::RefreshRuntimeTokenInternalRequest.new(name: name, vm_id: vm_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, refresh_runtime_token_internal_client_stub.call_rpc_count
    end
  end

  def test_diagnose_runtime
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    diagnostic_config = {}

    diagnose_runtime_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :diagnose_runtime, name
      assert_kind_of ::Google::Cloud::Notebooks::V1::DiagnoseRuntimeRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Notebooks::V1::DiagnosticConfig), request["diagnostic_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, diagnose_runtime_client_stub do
      # Create client
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.diagnose_runtime({ name: name, diagnostic_config: diagnostic_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.diagnose_runtime name: name, diagnostic_config: diagnostic_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.diagnose_runtime ::Google::Cloud::Notebooks::V1::DiagnoseRuntimeRequest.new(name: name, diagnostic_config: diagnostic_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.diagnose_runtime({ name: name, diagnostic_config: diagnostic_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.diagnose_runtime(::Google::Cloud::Notebooks::V1::DiagnoseRuntimeRequest.new(name: name, diagnostic_config: diagnostic_config), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, diagnose_runtime_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Operations, client.operations_client
  end
end
