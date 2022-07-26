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
require "google/cloud/compute/v1/license_codes"


class ::Google::Cloud::Compute::V1::LicenseCodes::ClientTest < Minitest::Test
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

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::LicenseCode.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    license_code = "hello world"
    project = "hello world"

    get_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, get_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::LicenseCodes::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.get({ license_code: license_code, project: project }) do |_result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.get license_code: license_code, project: project do |_result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.get ::Google::Cloud::Compute::V1::GetLicenseCodeRequest.new(license_code: license_code, project: project) do |_result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.get({ license_code: license_code, project: project }, call_options) do |_result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.get(::Google::Cloud::Compute::V1::GetLicenseCodeRequest.new(license_code: license_code, project: project), call_options) do |_result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, get_client_stub.call_count
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::TestPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    resource = "hello world"
    test_permissions_request_resource = {}

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::Compute::V1::LicenseCodes::Rest::Client.new do |config|
        config.credentials = :dummy_value
      end

      # Use hash object
      client.test_iam_permissions({ project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource }) do |_result, response|
        assert_equal http_response, response
      end

      # Use named arguments
      client.test_iam_permissions project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource do |_result, response|
        assert_equal http_response, response
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Cloud::Compute::V1::TestIamPermissionsLicenseCodeRequest.new(project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource) do |_result, response|
        assert_equal http_response, response
      end

      # Use hash object with options
      client.test_iam_permissions({ project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource }, call_options) do |_result, response|
        assert_equal http_response, response
      end

      # Use protobuf object with options
      client.test_iam_permissions(::Google::Cloud::Compute::V1::TestIamPermissionsLicenseCodeRequest.new(project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource), call_options) do |_result, response|
        assert_equal http_response, response
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_count
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Compute::V1::LicenseCodes::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::LicenseCodes::Rest::Client::Configuration, config
  end
end
