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

require "google/cloud/firestore/admin/v1/firestore_admin"

class ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::ClientPathsTest < Minitest::Test
  def test_collection_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.collection_group_path project: "value0", database: "value1", collection: "value2"
      assert_equal "projects/value0/databases/value1/collectionGroups/value2", path
    end
  end

  def test_database_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.database_path project: "value0", database: "value1"
      assert_equal "projects/value0/databases/value1", path
    end
  end

  def test_field_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.field_path project: "value0", database: "value1", collection: "value2", field: "value3"
      assert_equal "projects/value0/databases/value1/collectionGroups/value2/fields/value3", path
    end
  end

  def test_index_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.index_path project: "value0", database: "value1", collection: "value2", index: "value3"
      assert_equal "projects/value0/databases/value1/collectionGroups/value2/indexes/value3", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end
