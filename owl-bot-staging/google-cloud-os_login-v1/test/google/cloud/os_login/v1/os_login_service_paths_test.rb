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

require "google/cloud/os_login/v1/os_login_service"

class ::Google::Cloud::OsLogin::V1::OsLoginService::ClientPathsTest < Minitest::Test
  def test_posix_account_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::OsLogin::V1::OsLoginService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.posix_account_path user: "value0", project: "value1"
      assert_equal "users/value0/projects/value1", path
    end
  end

  def test_ssh_public_key_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::OsLogin::V1::OsLoginService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.ssh_public_key_path user: "value0", fingerprint: "value1"
      assert_equal "users/value0/sshPublicKeys/value1", path
    end
  end

  def test_user_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::OsLogin::V1::OsLoginService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.user_path user: "value0"
      assert_equal "users/value0", path
    end
  end
end
