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

# [START accessapproval_v1_generated_AccessApproval_DeleteAccessApprovalSettings_sync]
require "google/cloud/access_approval/v1"

##
# Snippet for the delete_access_approval_settings call in the AccessApproval service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::AccessApproval::V1::AccessApproval::Client#delete_access_approval_settings.
# It may require modification in order to execute successfully.
#
def delete_access_approval_settings
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AccessApproval::V1::AccessApproval::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AccessApproval::V1::DeleteAccessApprovalSettingsMessage.new

  # Call the delete_access_approval_settings method.
  result = client.delete_access_approval_settings request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END accessapproval_v1_generated_AccessApproval_DeleteAccessApprovalSettings_sync]
