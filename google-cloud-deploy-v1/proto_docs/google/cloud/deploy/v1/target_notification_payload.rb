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
    module Deploy
      module V1
        # Payload proto for "clouddeploy.googleapis.com/target_notification"
        # Platform Log event that describes the failure to send target status change
        # Pub/Sub notification.
        # @!attribute [rw] message
        #   @return [::String]
        #     Debug message for when a notification fails to send.
        # @!attribute [rw] target
        #   @return [::String]
        #     The name of the `Target`.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Deploy::V1::Type]
        #     Type of this notification, e.g. for a Pub/Sub failure.
        class TargetNotificationEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

