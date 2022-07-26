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

require "google/cloud/dialogflow/cx/v3/agents"

class ::Google::Cloud::Dialogflow::CX::V3::Agents::ClientPathsTest < Minitest::Test
  def test_agent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.agent_path project: "value0", location: "value1", agent: "value2"
      assert_equal "projects/value0/locations/value1/agents/value2", path
    end
  end

  def test_agent_validation_result_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.agent_validation_result_path project: "value0", location: "value1", agent: "value2"
      assert_equal "projects/value0/locations/value1/agents/value2/validationResult", path
    end
  end

  def test_environment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.environment_path project: "value0", location: "value1", agent: "value2", environment: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/environments/value3", path
    end
  end

  def test_flow_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.flow_path project: "value0", location: "value1", agent: "value2", flow: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_security_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.security_settings_path project: "value0", location: "value1", security_settings: "value2"
      assert_equal "projects/value0/locations/value1/securitySettings/value2", path
    end
  end
end
