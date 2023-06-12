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

require "google/cloud/alloy_db/v1beta/alloy_db_admin"

class ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::ClientPathsTest < Minitest::Test
  def test_backup_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.backup_path project: "value0", location: "value1", backup: "value2"
      assert_equal "projects/value0/locations/value1/backups/value2", path
    end
  end

  def test_cluster_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cluster_path project: "value0", location: "value1", cluster: "value2"
      assert_equal "projects/value0/locations/value1/clusters/value2", path
    end
  end

  def test_crypto_key_version_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_version_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3", crypto_key_version: "value4"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3/cryptoKeyVersions/value4", path
    end
  end

  def test_instance_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.instance_path project: "value0", location: "value1", cluster: "value2", instance: "value3"
      assert_equal "projects/value0/locations/value1/clusters/value2/instances/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_network_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_path project: "value0", network: "value1"
      assert_equal "projects/value0/global/networks/value1", path
    end
  end

  def test_user_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AlloyDB::V1beta::AlloyDBAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.user_path project: "value0", location: "value1", cluster: "value2", user: "value3"
      assert_equal "projects/value0/locations/value1/clusters/value2/users/value3", path
    end
  end
end
