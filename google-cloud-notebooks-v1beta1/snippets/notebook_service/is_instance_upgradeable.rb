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

# [START notebooks_v1beta1_generated_NotebookService_IsInstanceUpgradeable_sync]
require "google/cloud/notebooks/v1beta1"

##
# Snippet for the is_instance_upgradeable call in the NotebookService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Notebooks::V1beta1::NotebookService::Client#is_instance_upgradeable.
# It may require modification in order to execute successfully.
#
def is_instance_upgradeable
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Notebooks::V1beta1::NotebookService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Notebooks::V1beta1::IsInstanceUpgradeableRequest.new

  # Call the is_instance_upgradeable method.
  result = client.is_instance_upgradeable request

  # The returned object is of type Google::Cloud::Notebooks::V1beta1::IsInstanceUpgradeableResponse.
  p result
end
# [END notebooks_v1beta1_generated_NotebookService_IsInstanceUpgradeable_sync]
