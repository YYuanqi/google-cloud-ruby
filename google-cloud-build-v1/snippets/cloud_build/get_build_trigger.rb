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

# [START cloudbuild_v1_generated_CloudBuild_GetBuildTrigger_sync]
require "google/cloud/build/v1"

##
# Snippet for the get_build_trigger call in the CloudBuild service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Build::V1::CloudBuild::Client#get_build_trigger. It may require
# modification in order to execute successfully.
#
def get_build_trigger
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Build::V1::CloudBuild::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Build::V1::GetBuildTriggerRequest.new

  # Call the get_build_trigger method.
  result = client.get_build_trigger request

  # The returned object is of type Google::Cloud::Build::V1::BuildTrigger.
  p result
end
# [END cloudbuild_v1_generated_CloudBuild_GetBuildTrigger_sync]
