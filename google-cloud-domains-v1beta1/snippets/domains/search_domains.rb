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

# [START domains_v1beta1_generated_Domains_SearchDomains_sync]
require "google/cloud/domains/v1beta1"

##
# Snippet for the search_domains call in the Domains service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Domains::V1beta1::Domains::Client#search_domains. It may
# require modification in order to execute successfully.
#
def search_domains
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Domains::V1beta1::Domains::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Domains::V1beta1::SearchDomainsRequest.new

  # Call the search_domains method.
  result = client.search_domains request

  # The returned object is of type Google::Cloud::Domains::V1beta1::SearchDomainsResponse.
  p result
end
# [END domains_v1beta1_generated_Domains_SearchDomains_sync]
