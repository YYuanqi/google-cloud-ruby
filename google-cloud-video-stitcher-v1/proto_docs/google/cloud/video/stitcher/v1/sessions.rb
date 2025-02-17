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


module Google
  module Cloud
    module Video
      module Stitcher
        module V1
          # Metadata for a VOD session. The session expires 4 hours after its creation.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. The name of the VOD session, in the form of
          #     `projects/{project_number}/locations/{location}/vodSessions/{id}`.
          # @!attribute [r] interstitials
          #   @return [::Google::Cloud::Video::Stitcher::V1::Interstitials]
          #     Output only. Metadata of what was stitched into the content.
          # @!attribute [r] play_uri
          #   @return [::String]
          #     Output only. The playback URI of the stitched content.
          # @!attribute [rw] source_uri
          #   @return [::String]
          #     Required. URI of the media to stitch.
          # @!attribute [rw] ad_tag_uri
          #   @return [::String]
          #     Required. Ad tag URI.
          # @!attribute [rw] ad_tag_macro_map
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Key value pairs for ad tag macro replacement. If the
          #     specified ad tag URI has macros, this field provides the mapping
          #     to the value that will replace the macro in the ad tag URI.
          #     Macros are designated by square brackets.
          #     For example:
          #
          #       Ad tag URI: `"https://doubleclick.google.com/ad/1?geo_id=[geoId]"`
          #
          #       Ad tag macro map: `{"geoId": "123"}`
          #
          #       Fully qualified ad tag:
          #       `"`https://doubleclick.google.com/ad/1?geo_id=123"`
          # @!attribute [rw] manifest_options
          #   @return [::Google::Cloud::Video::Stitcher::V1::ManifestOptions]
          #     Additional options that affect the output of the manifest.
          # @!attribute [r] asset_id
          #   @return [::String]
          #     Output only. The generated ID of the VodSession's source media.
          # @!attribute [rw] ad_tracking
          #   @return [::Google::Cloud::Video::Stitcher::V1::AdTracking]
          #     Required. Determines how the ad should be tracked. If
          #     [gam_vod_config][google.cloud.video.stitcher.v1.VodSession.gam_vod_config]
          #     is set, the value must be `CLIENT` because the IMA SDK handles ad tracking.
          # @!attribute [rw] gam_settings
          #   @return [::Google::Cloud::Video::Stitcher::V1::VodSession::GamSettings]
          #     This field should be set with appropriate values if GAM is being used for
          #     ads.
          class VodSession
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Defines fields related to Google Ad Manager (GAM). This should be set if
            # GAM is being used for ads.
            # @!attribute [rw] network_code
            #   @return [::String]
            #     Required. Ad Manager network code.
            # @!attribute [rw] stream_id
            #   @return [::String]
            #     Required. The stream ID generated by Ad Manager.
            class GamSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class AdTagMacroMapEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Describes what was stitched into a VOD session's manifest.
          # @!attribute [rw] ad_breaks
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::VodSessionAdBreak>]
          #     List of ad breaks ordered by time.
          # @!attribute [rw] session_content
          #   @return [::Google::Cloud::Video::Stitcher::V1::VodSessionContent]
          #     Information related to the content of the VOD session.
          class Interstitials
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for an inserted ad in a VOD session.
          # @!attribute [rw] duration
          #   @return [::Google::Protobuf::Duration]
          #     Duration in seconds of the ad.
          # @!attribute [rw] companion_ads
          #   @return [::Google::Cloud::Video::Stitcher::V1::CompanionAds]
          #     Metadata of companion ads associated with the ad.
          # @!attribute [rw] activity_events
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::Event>]
          #     The list of progress tracking events for the ad break. These can be of
          #     the following IAB types: `MUTE`, `UNMUTE`, `PAUSE`, `CLICK`,
          #     `CLICK_THROUGH`, `REWIND`, `RESUME`, `ERROR`, `FULLSCREEN`,
          #     `EXIT_FULLSCREEN`, `EXPAND`, `COLLAPSE`, `ACCEPT_INVITATION_LINEAR`,
          #     `CLOSE_LINEAR`, `SKIP`.
          class VodSessionAd
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for the entire stitched content in a VOD session.
          # @!attribute [rw] duration
          #   @return [::Google::Protobuf::Duration]
          #     The total duration in seconds of the content including the ads stitched
          #     in.
          class VodSessionContent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for an inserted ad break.
          # @!attribute [rw] progress_events
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::ProgressEvent>]
          #     List of events that are expected to be triggered, ordered by time.
          # @!attribute [rw] ads
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::VodSessionAd>]
          #     Ordered list of ads stitched into the ad break.
          # @!attribute [rw] end_time_offset
          #   @return [::Google::Protobuf::Duration]
          #     Ad break end time in seconds relative to the start of the VOD asset.
          # @!attribute [rw] start_time_offset
          #   @return [::Google::Protobuf::Duration]
          #     Ad break start time in seconds relative to the start of the VOD asset.
          class VodSessionAdBreak
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for a live session. The session expires 5 minutes after the client
          # stops fetching the session's playlists.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. The name of the live session, in the form of
          #     `projects/{project}/locations/{location}/liveSessions/{id}`.
          # @!attribute [r] play_uri
          #   @return [::String]
          #     Output only. The URI to play the live session's ad-stitched stream.
          # @!attribute [rw] ad_tag_macros
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Key value pairs for ad tag macro replacement. If the
          #     specified ad tag URI has macros, this field provides the mapping
          #     to the value that will replace the macro in the ad tag URI.
          #     Macros are designated by square brackets.
          #
          #     For example:
          #
          #       Ad tag URI: "https://doubleclick.google.com/ad/1?geo_id=[geoId]"
          #
          #       Ad tag macros: `{"geoId": "123"}`
          #
          #       Fully qualified ad tag:
          #       `"https://doubleclick.google.com/ad/1?geo_id=123"`
          # @!attribute [rw] manifest_options
          #   @return [::Google::Cloud::Video::Stitcher::V1::ManifestOptions]
          #     Additional options that affect the output of the manifest.
          # @!attribute [rw] gam_settings
          #   @return [::Google::Cloud::Video::Stitcher::V1::LiveSession::GamSettings]
          #     This field should be set with appropriate values if GAM is being used for
          #     ads.
          # @!attribute [rw] live_config
          #   @return [::String]
          #     Required. The resource name of the live config for this session, in the
          #     form of `projects/{project}/locations/{location}/liveConfigs/{id}`.
          class LiveSession
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Defines fields related to Google Ad Manager (GAM). This should be set if
            # GAM
            # is being used for ads.
            # @!attribute [rw] stream_id
            #   @return [::String]
            #     Required. The stream ID generated by Ad Manager.
            class GamSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class AdTagMacrosEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Options for manifest generation.
          # @!attribute [rw] include_renditions
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::RenditionFilter>]
          #     If specified, the output manifest will only return renditions matching the
          #     specified filters.
          # @!attribute [rw] bitrate_order
          #   @return [::Google::Cloud::Video::Stitcher::V1::ManifestOptions::OrderPolicy]
          #     If specified, the output manifest will orders the video and muxed
          #     renditions by bitrate according to the ordering policy.
          class ManifestOptions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Defines the ordering policy during manifest generation.
            module OrderPolicy
              # Ordering policy is not specified.
              ORDER_POLICY_UNSPECIFIED = 0

              # Order by ascending.
              ASCENDING = 1

              # Order by descending.
              DESCENDING = 2
            end
          end

          # Filters for a video or muxed redition.
          # @!attribute [rw] bitrate_bps
          #   @return [::Integer]
          #     Bitrate in bits per second for the rendition. If set, only renditions with
          #     the exact bitrate will match.
          # @!attribute [rw] codecs
          #   @return [::String]
          #     Codecs for the rendition. If set, only renditions with the exact value
          #     will match.
          class RenditionFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
