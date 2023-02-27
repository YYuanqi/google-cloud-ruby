# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/functions/v1/functions_pb"
require "google/cloud/functions/v1/functions_services_pb"
require "google/cloud/functions/v1/cloud_functions_service"

class ::Google::Cloud::Functions::V1::CloudFunctionsService::ClientTest < Minitest::Test
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

  def test_list_functions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Functions::V1::ListFunctionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_functions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_functions, name
      assert_kind_of ::Google::Cloud::Functions::V1::ListFunctionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_functions_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_functions({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_functions parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_functions ::Google::Cloud::Functions::V1::ListFunctionsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_functions({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_functions(::Google::Cloud::Functions::V1::ListFunctionsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_functions_client_stub.call_rpc_count
    end
  end

  def test_get_function
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Functions::V1::CloudFunction.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_function_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_function, name
      assert_kind_of ::Google::Cloud::Functions::V1::GetFunctionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_function_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_function({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_function name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_function ::Google::Cloud::Functions::V1::GetFunctionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_function({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_function(::Google::Cloud::Functions::V1::GetFunctionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_function_client_stub.call_rpc_count
    end
  end

  def test_create_function
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    location = "hello world"
    function = {}

    create_function_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_function, name
      assert_kind_of ::Google::Cloud::Functions::V1::CreateFunctionRequest, request
      assert_equal "hello world", request["location"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Functions::V1::CloudFunction), request["function"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_function_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_function({ location: location, function: function }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_function location: location, function: function do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_function ::Google::Cloud::Functions::V1::CreateFunctionRequest.new(location: location, function: function) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_function({ location: location, function: function }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_function(::Google::Cloud::Functions::V1::CreateFunctionRequest.new(location: location, function: function), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_function_client_stub.call_rpc_count
    end
  end

  def test_update_function
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    function = {}
    update_mask = {}

    update_function_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_function, name
      assert_kind_of ::Google::Cloud::Functions::V1::UpdateFunctionRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Functions::V1::CloudFunction), request["function"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_function_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_function({ function: function, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_function function: function, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_function ::Google::Cloud::Functions::V1::UpdateFunctionRequest.new(function: function, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_function({ function: function, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_function(::Google::Cloud::Functions::V1::UpdateFunctionRequest.new(function: function, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_function_client_stub.call_rpc_count
    end
  end

  def test_delete_function
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_function_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_function, name
      assert_kind_of ::Google::Cloud::Functions::V1::DeleteFunctionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_function_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_function({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_function name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_function ::Google::Cloud::Functions::V1::DeleteFunctionRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_function({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_function(::Google::Cloud::Functions::V1::DeleteFunctionRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_function_client_stub.call_rpc_count
    end
  end

  def test_call_function
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Functions::V1::CallFunctionResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    data = "hello world"

    call_function_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :call_function, name
      assert_kind_of ::Google::Cloud::Functions::V1::CallFunctionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["data"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, call_function_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.call_function({ name: name, data: data }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.call_function name: name, data: data do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.call_function ::Google::Cloud::Functions::V1::CallFunctionRequest.new(name: name, data: data) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.call_function({ name: name, data: data }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.call_function(::Google::Cloud::Functions::V1::CallFunctionRequest.new(name: name, data: data), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, call_function_client_stub.call_rpc_count
    end
  end

  def test_generate_upload_url
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Functions::V1::GenerateUploadUrlResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    kms_key_name = "hello world"

    generate_upload_url_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :generate_upload_url, name
      assert_kind_of ::Google::Cloud::Functions::V1::GenerateUploadUrlRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["kms_key_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, generate_upload_url_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.generate_upload_url({ parent: parent, kms_key_name: kms_key_name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.generate_upload_url parent: parent, kms_key_name: kms_key_name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.generate_upload_url ::Google::Cloud::Functions::V1::GenerateUploadUrlRequest.new(parent: parent, kms_key_name: kms_key_name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.generate_upload_url({ parent: parent, kms_key_name: kms_key_name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.generate_upload_url(::Google::Cloud::Functions::V1::GenerateUploadUrlRequest.new(parent: parent, kms_key_name: kms_key_name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, generate_upload_url_client_stub.call_rpc_count
    end
  end

  def test_generate_download_url
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Functions::V1::GenerateDownloadUrlResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    version_id = 42

    generate_download_url_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :generate_download_url, name
      assert_kind_of ::Google::Cloud::Functions::V1::GenerateDownloadUrlRequest, request
      assert_equal "hello world", request["name"]
      assert_equal 42, request["version_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, generate_download_url_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.generate_download_url({ name: name, version_id: version_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.generate_download_url name: name, version_id: version_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.generate_download_url ::Google::Cloud::Functions::V1::GenerateDownloadUrlRequest.new(name: name, version_id: version_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.generate_download_url({ name: name, version_id: version_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.generate_download_url(::Google::Cloud::Functions::V1::GenerateDownloadUrlRequest.new(name: name, version_id: version_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, generate_download_url_client_stub.call_rpc_count
    end
  end

  def test_set_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_iam_policy, name
      assert_kind_of ::Google::Iam::V1::SetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::Policy), request["policy"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_get_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iam_policy, name
      assert_kind_of ::Google::Iam::V1::GetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::GetPolicyOptions), request["options"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iam_policy({ resource: resource, options: options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iam_policy resource: resource, options: options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iam_policy({ resource: resource, options: options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_test_iam_permissions
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::TestIamPermissionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :test_iam_permissions, name
      assert_kind_of ::Google::Iam::V1::TestIamPermissionsRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal ["hello world"], request["permissions"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.test_iam_permissions({ resource: resource, permissions: permissions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.test_iam_permissions resource: resource, permissions: permissions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.test_iam_permissions({ resource: resource, permissions: permissions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Functions::V1::CloudFunctionsService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Functions::V1::CloudFunctionsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Functions::V1::CloudFunctionsService::Operations, client.operations_client
  end
end
