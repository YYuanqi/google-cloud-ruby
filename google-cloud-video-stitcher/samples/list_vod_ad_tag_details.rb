# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# [START videostitcher_list_vod_ad_tag_details]
require "google/cloud/video/stitcher"

##
# List the ad tag details for a VOD session
#
# @param project_id [String] Your Google Cloud project (e.g. "my-project")
# @param location [String] The location (e.g. "us-central1")
# @param session_id [String] The VOD session ID (e.g. "my-vod-session-id")
#
def list_vod_ad_tag_details project_id:, location:, session_id:
  # Create a Video Stitcher client.
  client = Google::Cloud::Video::Stitcher.video_stitcher_service

  # Build the resource name of the parent.
  parent = client.vod_session_path project: project_id, location: location, vod_session: session_id

  # List all ad tag details for the VOD session.
  response = client.list_vod_ad_tag_details parent: parent

  puts "VOD ad tag details:"
  # Print out all VOD ad tag details.
  response.each do |vod_ad_tag_detail|
    puts vod_ad_tag_detail.name
  end
end
# [END videostitcher_list_vod_ad_tag_details]
