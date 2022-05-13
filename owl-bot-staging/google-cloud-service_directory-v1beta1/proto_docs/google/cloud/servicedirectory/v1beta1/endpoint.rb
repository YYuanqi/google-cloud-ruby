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
    module ServiceDirectory
      module V1beta1
        # An individual endpoint that provides a
        # {::Google::Cloud::ServiceDirectory::V1beta1::Service service}. The service must
        # already exist to create an endpoint.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. The resource name for the endpoint in the format
        #     `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
        # @!attribute [rw] address
        #   @return [::String]
        #     Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like:
        #
        #     *   `8.8.8`
        #     *   `8.8.8.8:53`
        #     *   `test:bad:address`
        #     *   `[::1]`
        #     *   `[::1]:8080`
        #
        #     Limited to 45 characters.
        # @!attribute [rw] port
        #   @return [::Integer]
        #     Optional. Service Directory rejects values outside of `[0, 65535]`.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Metadata for the endpoint. This data can be consumed by service
        #     clients.
        #
        #     Restrictions:
        #
        #     *   The entire metadata dictionary may contain up to 512 characters,
        #         spread accoss all key-value pairs. Metadata that goes beyond this
        #         limit are rejected
        #     *   Valid metadata keys have two segments: an optional prefix and name,
        #         separated by a slash (/). The name segment is required and must be 63
        #         characters or less, beginning and ending with an alphanumeric character
        #         ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and
        #         alphanumerics between. The prefix is optional. If specified, the prefix
        #         must be a DNS subdomain: a series of DNS labels separated by dots (.),
        #         not longer than 253 characters in total, followed by a slash (/).
        #         Metadata that fails to meet these requirements are rejected
        #     *   The `(*.)google.com/` and `(*.)googleapis.com/` prefixes are reserved
        #         for system metadata managed by Service Directory. If the user tries
        #         to write to these keyspaces, those entries are silently ignored by
        #         the system
        #
        #     Note: This field is equivalent to the `annotations` field in the v1 API.
        #     They have the same syntax and read/write to the same location in Service
        #     Directory.
        # @!attribute [rw] network
        #   @return [::String]
        #     Immutable. The Google Compute Engine network (VPC) of the endpoint in the format
        #     `projects/<project number>/locations/global/networks/*`.
        #
        #     The project must be specified by project number (project id is rejected).
        #     Incorrectly formatted networks are rejected, but no other validation
        #     is performed on this field (ex. network or project existence, reachability,
        #     or permissions).
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the endpoint was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the endpoint was last updated.
        class Endpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
