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

# [START iamcredentials_v1_generated_IAMCredentials_GenerateAccessToken_sync]
require "google/iam/credentials/v1"

##
# Snippet for the generate_access_token call in the IAMCredentials service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Iam::Credentials::V1::IAMCredentials::Client#generate_access_token. It
# may require modification in order to execute successfully.
#
def generate_access_token
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Iam::Credentials::V1::IAMCredentials::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Iam::Credentials::V1::GenerateAccessTokenRequest.new

  # Call the generate_access_token method.
  result = client.generate_access_token request

  # The returned object is of type Google::Iam::Credentials::V1::GenerateAccessTokenResponse.
  p result
end
# [END iamcredentials_v1_generated_IAMCredentials_GenerateAccessToken_sync]
