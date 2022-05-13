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

# [START spanner_v1_generated_Spanner_GetSession_sync]
require "google/cloud/spanner/v1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::Spanner::V1::Spanner::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::Spanner::V1::GetSessionRequest.new

# Call the get_session method.
result = client.get_session request

# The returned object is of type Google::Cloud::Spanner::V1::Session.
p result
# [END spanner_v1_generated_Spanner_GetSession_sync]
