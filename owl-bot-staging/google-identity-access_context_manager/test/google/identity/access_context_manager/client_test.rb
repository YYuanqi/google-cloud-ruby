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
require "google/identity/access_context_manager"
require "gapic/common"
require "gapic/grpc"

class Google::Identity::AccessContextManager::ClientConstructionMinitest < Minitest::Test
  def test_access_context_manager
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Identity::AccessContextManager.access_context_manager do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Identity::AccessContextManager::V1::AccessContextManager::Client, client
    end
  end
end
