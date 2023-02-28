# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START container_v1beta1_generated_ClusterManager_GetNodePool_sync]
require "google/cloud/container/v1beta1"

##
# Snippet for the get_node_pool call in the ClusterManager service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Container::V1beta1::ClusterManager::Client#get_node_pool. It
# may require modification in order to execute successfully.
#
def get_node_pool
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Container::V1beta1::ClusterManager::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Container::V1beta1::GetNodePoolRequest.new

  # Call the get_node_pool method.
  result = client.get_node_pool request

  # The returned object is of type Google::Cloud::Container::V1beta1::NodePool.
  p result
end
# [END container_v1beta1_generated_ClusterManager_GetNodePool_sync]
