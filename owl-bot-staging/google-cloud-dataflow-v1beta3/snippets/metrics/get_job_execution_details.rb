# frozen_string_literal: true

# Copyright 2023 Google LLC
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

# [START dataflow_v1beta3_generated_Metrics_GetJobExecutionDetails_sync]
require "google/cloud/dataflow/v1beta3"

##
# Snippet for the get_job_execution_details call in the Metrics service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dataflow::V1beta3::Metrics::Client#get_job_execution_details.
# It may require modification in order to execute successfully.
#
def get_job_execution_details
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dataflow::V1beta3::Metrics::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dataflow::V1beta3::GetJobExecutionDetailsRequest.new

  # Call the get_job_execution_details method.
  result = client.get_job_execution_details request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Dataflow::V1beta3::StageSummary.
    p item
  end
end
# [END dataflow_v1beta3_generated_Metrics_GetJobExecutionDetails_sync]
