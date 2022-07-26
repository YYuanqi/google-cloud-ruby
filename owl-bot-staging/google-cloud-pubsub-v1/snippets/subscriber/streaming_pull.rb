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

# [START pubsub_v1_generated_Subscriber_StreamingPull_sync]
require "google/cloud/pubsub/v1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::PubSub::V1::Subscriber::Client.new

# Create an input stream
input = Gapic::StreamInput.new

# Call the streaming_pull method to start streaming.
output = client.streaming_pull input

# Send requests on the stream. For each request, pass in keyword
# arguments to set fields. Be sure to close the stream when done.
input << Google::Cloud::PubSub::V1::StreamingPullRequest.new
input << Google::Cloud::PubSub::V1::StreamingPullRequest.new
input.close

# Handle streamed responses. These may be interleaved with inputs.
# Each response is of type ::Google::Cloud::PubSub::V1::StreamingPullResponse.
output.each do |response|
  p response
end
# [END pubsub_v1_generated_Subscriber_StreamingPull_sync]
