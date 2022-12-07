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

# [START apigeeregistry_v1_generated_Registry_TagApiSpecRevision_sync]
require "google/cloud/apigee_registry/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::ApigeeRegistry::V1::Registry::Client#tag_api_spec_revision
#
def tag_api_spec_revision
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ApigeeRegistry::V1::Registry::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ApigeeRegistry::V1::TagApiSpecRevisionRequest.new

  # Call the tag_api_spec_revision method.
  result = client.tag_api_spec_revision request

  # The returned object is of type Google::Cloud::ApigeeRegistry::V1::ApiSpec.
  p result
end
# [END apigeeregistry_v1_generated_Registry_TagApiSpecRevision_sync]
