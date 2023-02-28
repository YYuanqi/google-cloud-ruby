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

# [START analyticshub_v1beta1_generated_AnalyticsHubService_UpdateListing_sync]
require "google/cloud/bigquery/data_exchange/v1beta1"

##
# Snippet for the update_listing call in the AnalyticsHubService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Bigquery::DataExchange::V1beta1::AnalyticsHubService::Client#update_listing.
# It may require modification in order to execute successfully.
#
def update_listing
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigquery::DataExchange::V1beta1::AnalyticsHubService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigquery::DataExchange::V1beta1::UpdateListingRequest.new

  # Call the update_listing method.
  result = client.update_listing request

  # The returned object is of type Google::Cloud::Bigquery::DataExchange::V1beta1::Listing.
  p result
end
# [END analyticshub_v1beta1_generated_AnalyticsHubService_UpdateListing_sync]
