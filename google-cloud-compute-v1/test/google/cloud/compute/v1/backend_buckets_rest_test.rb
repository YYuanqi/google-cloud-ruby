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
require "gapic/rest"
require "google/cloud/compute/v1/compute_pb"
require "google/cloud/compute/v1/backend_buckets/rest"


class ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_add_signed_url_key
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket = "hello world"
    project = "hello world"
    request_id = "hello world"
    signed_url_key_resource = {}

    add_signed_url_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_add_signed_url_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, add_signed_url_key_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.add_signed_url_key({ backend_bucket: backend_bucket, project: project, request_id: request_id, signed_url_key_resource: signed_url_key_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.add_signed_url_key backend_bucket: backend_bucket, project: project, request_id: request_id, signed_url_key_resource: signed_url_key_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.add_signed_url_key ::Google::Cloud::Compute::V1::AddSignedUrlKeyBackendBucketRequest.new(backend_bucket: backend_bucket, project: project, request_id: request_id, signed_url_key_resource: signed_url_key_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.add_signed_url_key({ backend_bucket: backend_bucket, project: project, request_id: request_id, signed_url_key_resource: signed_url_key_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.add_signed_url_key(::Google::Cloud::Compute::V1::AddSignedUrlKeyBackendBucketRequest.new(backend_bucket: backend_bucket, project: project, request_id: request_id, signed_url_key_resource: signed_url_key_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, add_signed_url_key_client_stub.call_count
      end
    end
  end

  def test_delete
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket = "hello world"
    project = "hello world"
    request_id = "hello world"

    delete_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_delete_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete({ backend_bucket: backend_bucket, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete backend_bucket: backend_bucket, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete ::Google::Cloud::Compute::V1::DeleteBackendBucketRequest.new(backend_bucket: backend_bucket, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete({ backend_bucket: backend_bucket, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete(::Google::Cloud::Compute::V1::DeleteBackendBucketRequest.new(backend_bucket: backend_bucket, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_client_stub.call_count
      end
    end
  end

  def test_delete_signed_url_key
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket = "hello world"
    key_name = "hello world"
    project = "hello world"
    request_id = "hello world"

    delete_signed_url_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_delete_signed_url_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_signed_url_key_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_signed_url_key({ backend_bucket: backend_bucket, key_name: key_name, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_signed_url_key backend_bucket: backend_bucket, key_name: key_name, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_signed_url_key ::Google::Cloud::Compute::V1::DeleteSignedUrlKeyBackendBucketRequest.new(backend_bucket: backend_bucket, key_name: key_name, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_signed_url_key({ backend_bucket: backend_bucket, key_name: key_name, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_signed_url_key(::Google::Cloud::Compute::V1::DeleteSignedUrlKeyBackendBucketRequest.new(backend_bucket: backend_bucket, key_name: key_name, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_signed_url_key_client_stub.call_count
      end
    end
  end

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::BackendBucket.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket = "hello world"
    project = "hello world"

    get_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_get_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get({ backend_bucket: backend_bucket, project: project }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get backend_bucket: backend_bucket, project: project do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get ::Google::Cloud::Compute::V1::GetBackendBucketRequest.new(backend_bucket: backend_bucket, project: project) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get({ backend_bucket: backend_bucket, project: project }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get(::Google::Cloud::Compute::V1::GetBackendBucketRequest.new(backend_bucket: backend_bucket, project: project), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_client_stub.call_count
      end
    end
  end

  def test_insert
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket_resource = {}
    project = "hello world"
    request_id = "hello world"

    insert_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_insert_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, insert_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.insert({ backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.insert backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.insert ::Google::Cloud::Compute::V1::InsertBackendBucketRequest.new(backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.insert({ backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.insert(::Google::Cloud::Compute::V1::InsertBackendBucketRequest.new(backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, insert_client_stub.call_count
      end
    end
  end

  def test_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::BackendBucketList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true

    list_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_list_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list ::Google::Cloud::Compute::V1::ListBackendBucketsRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list(::Google::Cloud::Compute::V1::ListBackendBucketsRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_client_stub.call_count
      end
    end
  end

  def test_patch
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket = "hello world"
    backend_bucket_resource = {}
    project = "hello world"
    request_id = "hello world"

    patch_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_patch_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, patch_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.patch({ backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.patch backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.patch ::Google::Cloud::Compute::V1::PatchBackendBucketRequest.new(backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.patch({ backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.patch(::Google::Cloud::Compute::V1::PatchBackendBucketRequest.new(backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, patch_client_stub.call_count
      end
    end
  end

  def test_set_edge_security_policy
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket = "hello world"
    project = "hello world"
    request_id = "hello world"
    security_policy_reference_resource = {}

    set_edge_security_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_set_edge_security_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_edge_security_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_edge_security_policy({ backend_bucket: backend_bucket, project: project, request_id: request_id, security_policy_reference_resource: security_policy_reference_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_edge_security_policy backend_bucket: backend_bucket, project: project, request_id: request_id, security_policy_reference_resource: security_policy_reference_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_edge_security_policy ::Google::Cloud::Compute::V1::SetEdgeSecurityPolicyBackendBucketRequest.new(backend_bucket: backend_bucket, project: project, request_id: request_id, security_policy_reference_resource: security_policy_reference_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_edge_security_policy({ backend_bucket: backend_bucket, project: project, request_id: request_id, security_policy_reference_resource: security_policy_reference_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_edge_security_policy(::Google::Cloud::Compute::V1::SetEdgeSecurityPolicyBackendBucketRequest.new(backend_bucket: backend_bucket, project: project, request_id: request_id, security_policy_reference_resource: security_policy_reference_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_edge_security_policy_client_stub.call_count
      end
    end
  end

  def test_update
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    backend_bucket = "hello world"
    backend_bucket_resource = {}
    project = "hello world"
    request_id = "hello world"

    update_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::BackendBuckets::Rest::ServiceStub.stub :transcode_update_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update({ backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update ::Google::Cloud::Compute::V1::UpdateBackendBucketRequest.new(backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update({ backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update(::Google::Cloud::Compute::V1::UpdateBackendBucketRequest.new(backend_bucket: backend_bucket, backend_bucket_resource: backend_bucket_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::BackendBuckets::Rest::Client::Configuration, config
  end
end
