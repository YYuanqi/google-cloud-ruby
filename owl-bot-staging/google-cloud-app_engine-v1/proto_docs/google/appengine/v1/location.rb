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
    module AppEngine
      module V1
        # Metadata for the given [google.cloud.location.Location][google.cloud.location.Location].
        # @!attribute [rw] standard_environment_available
        #   @return [::Boolean]
        #     App Engine standard environment is available in the given location.
        # @!attribute [rw] flexible_environment_available
        #   @return [::Boolean]
        #     App Engine flexible environment is available in the given location.
        # @!attribute [r] search_api_available
        #   @return [::Boolean]
        #     Output only. [Search API](https://cloud.google.com/appengine/docs/standard/python/search)
        #     is available in the given location.
        class LocationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
