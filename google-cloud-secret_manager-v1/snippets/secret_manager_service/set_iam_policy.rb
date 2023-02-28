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

# [START secretmanager_v1_generated_SecretManagerService_SetIamPolicy_sync]
require "google/cloud/secret_manager/v1"

##
# Snippet for the set_iam_policy call in the SecretManagerService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::SecretManager::V1::SecretManagerService::Client#set_iam_policy.
# It may require modification in order to execute successfully.
#
def set_iam_policy
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::SecretManager::V1::SecretManagerService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Iam::V1::SetIamPolicyRequest.new

  # Call the set_iam_policy method.
  result = client.set_iam_policy request

  # The returned object is of type Google::Iam::V1::Policy.
  p result
end
# [END secretmanager_v1_generated_SecretManagerService_SetIamPolicy_sync]
