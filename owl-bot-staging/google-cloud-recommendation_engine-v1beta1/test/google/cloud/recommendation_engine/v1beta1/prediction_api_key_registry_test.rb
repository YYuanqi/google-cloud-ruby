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

require "google/cloud/recommendationengine/v1beta1/prediction_apikey_registry_service_pb"
require "google/cloud/recommendationengine/v1beta1/prediction_apikey_registry_service_services_pb"
require "google/cloud/recommendation_engine/v1beta1/prediction_api_key_registry"

class ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::ClientTest < Minitest::Test
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

  def test_create_prediction_api_key_registration
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistration.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    prediction_api_key_registration = {}

    create_prediction_api_key_registration_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_prediction_api_key_registration, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::CreatePredictionApiKeyRegistrationRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistration), request["prediction_api_key_registration"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_prediction_api_key_registration_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_prediction_api_key_registration({ parent: parent, prediction_api_key_registration: prediction_api_key_registration }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_prediction_api_key_registration parent: parent, prediction_api_key_registration: prediction_api_key_registration do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_prediction_api_key_registration ::Google::Cloud::RecommendationEngine::V1beta1::CreatePredictionApiKeyRegistrationRequest.new(parent: parent, prediction_api_key_registration: prediction_api_key_registration) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_prediction_api_key_registration({ parent: parent, prediction_api_key_registration: prediction_api_key_registration }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_prediction_api_key_registration(::Google::Cloud::RecommendationEngine::V1beta1::CreatePredictionApiKeyRegistrationRequest.new(parent: parent, prediction_api_key_registration: prediction_api_key_registration), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_prediction_api_key_registration_client_stub.call_rpc_count
    end
  end

  def test_list_prediction_api_key_registrations
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecommendationEngine::V1beta1::ListPredictionApiKeyRegistrationsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_prediction_api_key_registrations_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_prediction_api_key_registrations, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::ListPredictionApiKeyRegistrationsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_prediction_api_key_registrations_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_prediction_api_key_registrations({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_prediction_api_key_registrations parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_prediction_api_key_registrations ::Google::Cloud::RecommendationEngine::V1beta1::ListPredictionApiKeyRegistrationsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_prediction_api_key_registrations({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_prediction_api_key_registrations(::Google::Cloud::RecommendationEngine::V1beta1::ListPredictionApiKeyRegistrationsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_prediction_api_key_registrations_client_stub.call_rpc_count
    end
  end

  def test_delete_prediction_api_key_registration
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_prediction_api_key_registration_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_prediction_api_key_registration, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::DeletePredictionApiKeyRegistrationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_prediction_api_key_registration_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_prediction_api_key_registration({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_prediction_api_key_registration name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_prediction_api_key_registration ::Google::Cloud::RecommendationEngine::V1beta1::DeletePredictionApiKeyRegistrationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_prediction_api_key_registration({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_prediction_api_key_registration(::Google::Cloud::RecommendationEngine::V1beta1::DeletePredictionApiKeyRegistrationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_prediction_api_key_registration_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client::Configuration, config
  end
end
