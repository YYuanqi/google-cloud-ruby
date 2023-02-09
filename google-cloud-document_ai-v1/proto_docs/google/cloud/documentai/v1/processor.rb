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
    module DocumentAI
      module V1
        # A processor version is an implementation of a processor. Each processor
        # can have multiple versions, pre-trained by Google internally or up-trained
        # by the customer. At a time, a processor can only have one default version
        # version. So the processor's behavior (when processing documents) is defined
        # by a default version
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the processor version.
        #     Format:
        #     `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the processor version.
        # @!attribute [rw] document_schema
        #   @return [::Google::Cloud::DocumentAI::V1::DocumentSchema]
        #     The schema of the processor version. Describes the output.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1::ProcessorVersion::State]
        #     The state of the processor version.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the processor version was created.
        # @!attribute [rw] kms_key_name
        #   @return [::String]
        #     The KMS key name used for encryption.
        # @!attribute [rw] kms_key_version_name
        #   @return [::String]
        #     The KMS key version with which data is encrypted.
        # @!attribute [rw] google_managed
        #   @return [::Boolean]
        #     Denotes that this ProcessorVersion is managed by google.
        # @!attribute [rw] deprecation_info
        #   @return [::Google::Cloud::DocumentAI::V1::ProcessorVersion::DeprecationInfo]
        #     If set, information about the eventual deprecation of this version.
        class ProcessorVersion
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Information about the upcoming deprecation of this processor version.
          # @!attribute [rw] deprecation_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which this processor version will be deprecated.
          # @!attribute [rw] replacement_processor_version
          #   @return [::String]
          #     If set, the processor version that will be used as a replacement.
          class DeprecationInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The possible states of the processor version.
          module State

            # The processor version is in an unspecified state.
            STATE_UNSPECIFIED = 0

            # The processor version is deployed and can be used for processing.
            DEPLOYED = 1

            # The processor version is being deployed.
            DEPLOYING = 2

            # The processor version is not deployed and cannot be used for processing.
            UNDEPLOYED = 3

            # The processor version is being undeployed.
            UNDEPLOYING = 4

            # The processor version is being created.
            CREATING = 5

            # The processor version is being deleted.
            DELETING = 6

            # The processor version failed and is in an indeterminate state.
            FAILED = 7
          end
        end

        # The first-class citizen for Document AI. Each processor defines how to
        # extract structural information from a document.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Immutable. The resource name of the processor.
        #     Format: `projects/{project}/locations/{location}/processors/{processor}`
        # @!attribute [rw] type
        #   @return [::String]
        #     The processor type, e.g., `OCR_PROCESSOR`, `INVOICE_PROCESSOR`, etc.
        #     To get a list of processors types, see
        #     {::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client#fetch_processor_types FetchProcessorTypes}.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the processor.
        # @!attribute [r] state
        #   @return [::Google::Cloud::DocumentAI::V1::Processor::State]
        #     Output only. The state of the processor.
        # @!attribute [rw] default_processor_version
        #   @return [::String]
        #     The default processor version.
        # @!attribute [r] process_endpoint
        #   @return [::String]
        #     Output only. Immutable. The http endpoint that can be called to invoke
        #     processing.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the processor was created.
        # @!attribute [rw] kms_key_name
        #   @return [::String]
        #     The KMS key used for encryption/decryption in CMEK scenarios.
        #     See https://cloud.google.com/security-key-management.
        class Processor
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The possible states of the processor.
          module State

            # The processor is in an unspecified state.
            STATE_UNSPECIFIED = 0

            # The processor is enabled, i.e., has an enabled version which can
            # currently serve processing requests and all the feature dependencies have
            # been successfully initialized.
            ENABLED = 1

            # The processor is disabled.
            DISABLED = 2

            # The processor is being enabled, will become `ENABLED` if successful.
            ENABLING = 3

            # The processor is being disabled, will become `DISABLED` if successful.
            DISABLING = 4

            # The processor is being created, will become either `ENABLED` (for
            # successful creation) or `FAILED` (for failed ones).
            # Once a processor is in this state, it can then be used for document
            # processing, but the feature dependencies of the processor might not be
            # fully created yet.
            CREATING = 5

            # The processor failed during creation or initialization of feature
            # dependencies. The user should delete the processor and recreate one as
            # all the functionalities of the processor are disabled.
            FAILED = 6

            # The processor is being deleted, will be removed if successful.
            DELETING = 7
          end
        end
      end
    end
  end
end

