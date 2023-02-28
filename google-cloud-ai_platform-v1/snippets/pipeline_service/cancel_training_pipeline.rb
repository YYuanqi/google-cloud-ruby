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

# [START aiplatform_v1_generated_PipelineService_CancelTrainingPipeline_sync]
require "google/cloud/ai_platform/v1"

##
# Snippet for the cancel_training_pipeline call in the PipelineService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::AIPlatform::V1::PipelineService::Client#cancel_training_pipeline.
# It may require modification in order to execute successfully.
#
def cancel_training_pipeline
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AIPlatform::V1::PipelineService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AIPlatform::V1::CancelTrainingPipelineRequest.new

  # Call the cancel_training_pipeline method.
  result = client.cancel_training_pipeline request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END aiplatform_v1_generated_PipelineService_CancelTrainingPipeline_sync]
