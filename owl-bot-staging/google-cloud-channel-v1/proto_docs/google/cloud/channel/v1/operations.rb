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
    module Channel
      module V1
        # Provides contextual information about a {::Google::Longrunning::Operation google.longrunning.Operation}.
        # @!attribute [rw] operation_type
        #   @return [::Google::Cloud::Channel::V1::OperationMetadata::OperationType]
        #     The RPC that initiated this Long Running Operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # RPCs that return a Long Running Operation.
          module OperationType
            # Default value. This state doesn't show unless an error occurs.
            OPERATION_TYPE_UNSPECIFIED = 0

            # Long Running Operation was triggered by CreateEntitlement.
            CREATE_ENTITLEMENT = 1

            # Long Running Operation was triggered by ChangeRenewalSettings.
            CHANGE_RENEWAL_SETTINGS = 3

            # Long Running Operation was triggered by StartPaidService.
            START_PAID_SERVICE = 5

            # Long Running Operation was triggered by ActivateEntitlement.
            ACTIVATE_ENTITLEMENT = 7

            # Long Running Operation was triggered by SuspendEntitlement.
            SUSPEND_ENTITLEMENT = 8

            # Long Running Operation was triggered by CancelEntitlement.
            CANCEL_ENTITLEMENT = 9

            # Long Running Operation was triggered by TransferEntitlements.
            TRANSFER_ENTITLEMENTS = 10

            # Long Running Operation was triggered by TransferEntitlementsToGoogle.
            TRANSFER_ENTITLEMENTS_TO_GOOGLE = 11

            # Long Running Operation was triggered by ChangeOffer.
            CHANGE_OFFER = 14

            # Long Running Operation was triggered by ChangeParameters.
            CHANGE_PARAMETERS = 15

            # Long Running Operation was triggered by ProvisionCloudIdentity.
            PROVISION_CLOUD_IDENTITY = 16
          end
        end
      end
    end
  end
end
