# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/security_center/v1/security_center"

class ::Google::Cloud::SecurityCenter::V1::SecurityCenter::ClientPathsTest < Minitest::Test
  def test_finding_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.finding_path organization: "value0", source: "value1", finding: "value2"
      assert_equal "organizations/value0/sources/value1/findings/value2", path
    end
  end

  def test_notification_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.notification_config_path organization: "value0", notification_config: "value1"
      assert_equal "organizations/value0/notificationConfigs/value1", path
    end
  end

  def test_organization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_path organization: "value0"
      assert_equal "organizations/value0", path
    end
  end

  def test_organization_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_settings_path organization: "value0"
      assert_equal "organizations/value0/organizationSettings", path
    end
  end

  def test_security_marks_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.security_marks_path organization: "value0", asset: "value1"
      assert_equal "organizations/value0/assets/value1/securityMarks", path

      path = client.security_marks_path organization: "value0", source: "value1", finding: "value2"
      assert_equal "organizations/value0/sources/value1/findings/value2/securityMarks", path
    end
  end

  def test_source_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.source_path organization: "value0", source: "value1"
      assert_equal "organizations/value0/sources/value1", path
    end
  end

  def test_topic_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::SecurityCenter::V1::SecurityCenter::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.topic_path project: "value0", topic: "value1"
      assert_equal "projects/value0/topics/value1", path
    end
  end
end
