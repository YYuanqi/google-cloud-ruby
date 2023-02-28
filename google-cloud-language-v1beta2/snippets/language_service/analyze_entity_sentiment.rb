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

# [START language_v1beta2_generated_LanguageService_AnalyzeEntitySentiment_sync]
require "google/cloud/language/v1beta2"

##
# Snippet for the analyze_entity_sentiment call in the LanguageService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Language::V1beta2::LanguageService::Client#analyze_entity_sentiment.
# It may require modification in order to execute successfully.
#
def analyze_entity_sentiment
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Language::V1beta2::AnalyzeEntitySentimentRequest.new

  # Call the analyze_entity_sentiment method.
  result = client.analyze_entity_sentiment request

  # The returned object is of type Google::Cloud::Language::V1beta2::AnalyzeEntitySentimentResponse.
  p result
end
# [END language_v1beta2_generated_LanguageService_AnalyzeEntitySentiment_sync]
