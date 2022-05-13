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

require "google/cloud/recaptchaenterprise/v1beta1/recaptchaenterprise_pb"
require "google/cloud/recaptchaenterprise/v1beta1/recaptchaenterprise_services_pb"
require "google/cloud/recaptcha_enterprise/v1beta1/recaptcha_enterprise_service"

class ::Google::Cloud::RecaptchaEnterprise::V1beta1::RecaptchaEnterpriseService::ClientTest < Minitest::Test
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

  def test_create_assessment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1beta1::Assessment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    assessment = {}

    create_assessment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_assessment, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1beta1::CreateAssessmentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecaptchaEnterprise::V1beta1::Assessment), request["assessment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_assessment_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1beta1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_assessment({ parent: parent, assessment: assessment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_assessment parent: parent, assessment: assessment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_assessment ::Google::Cloud::RecaptchaEnterprise::V1beta1::CreateAssessmentRequest.new(parent: parent, assessment: assessment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_assessment({ parent: parent, assessment: assessment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_assessment(::Google::Cloud::RecaptchaEnterprise::V1beta1::CreateAssessmentRequest.new(parent: parent, assessment: assessment), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_assessment_client_stub.call_rpc_count
    end
  end

  def test_annotate_assessment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1beta1::AnnotateAssessmentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    annotation = :ANNOTATION_UNSPECIFIED
    reasons = [:REASON_UNSPECIFIED]
    hashed_account_id = "hello world"

    annotate_assessment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :annotate_assessment, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1beta1::AnnotateAssessmentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :ANNOTATION_UNSPECIFIED, request["annotation"]
      assert_equal [:REASON_UNSPECIFIED], request["reasons"]
      assert_equal "hello world", request["hashed_account_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, annotate_assessment_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1beta1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.annotate_assessment({ name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.annotate_assessment name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.annotate_assessment ::Google::Cloud::RecaptchaEnterprise::V1beta1::AnnotateAssessmentRequest.new(name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.annotate_assessment({ name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.annotate_assessment(::Google::Cloud::RecaptchaEnterprise::V1beta1::AnnotateAssessmentRequest.new(name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, annotate_assessment_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::RecaptchaEnterprise::V1beta1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1beta1::RecaptchaEnterpriseService::Client::Configuration, config
  end
end
