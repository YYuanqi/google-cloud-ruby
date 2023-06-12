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

# [START alloydb_v1_generated_AlloyDBAdmin_ListBackups_sync]
require "google/cloud/alloy_db/v1"

##
# Snippet for the list_backups call in the AlloyDBAdmin service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::AlloyDB::V1::AlloyDBAdmin::Client#list_backups. It may require
# modification in order to execute successfully.
#
def list_backups
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AlloyDB::V1::AlloyDBAdmin::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AlloyDB::V1::ListBackupsRequest.new

  # Call the list_backups method.
  result = client.list_backups request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::AlloyDB::V1::Backup.
    p item
  end
end
# [END alloydb_v1_generated_AlloyDBAdmin_ListBackups_sync]
