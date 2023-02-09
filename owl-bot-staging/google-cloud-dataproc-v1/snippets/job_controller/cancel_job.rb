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

# [START dataproc_v1_generated_JobController_CancelJob_sync]
require "google/cloud/dataproc/v1"

##
# Snippet for the cancel_job call in the JobController service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dataproc::V1::JobController::Client#cancel_job. It may require
# modification in order to execute successfully.
#
def cancel_job
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dataproc::V1::JobController::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dataproc::V1::CancelJobRequest.new

  # Call the cancel_job method.
  result = client.cancel_job request

  # The returned object is of type Google::Cloud::Dataproc::V1::Job.
  p result
end
# [END dataproc_v1_generated_JobController_CancelJob_sync]
