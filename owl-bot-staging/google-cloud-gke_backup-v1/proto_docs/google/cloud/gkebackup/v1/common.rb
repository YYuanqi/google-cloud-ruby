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


module Google
  module Cloud
    module GkeBackup
      module V1
        # A list of Kubernetes Namespaces
        # @!attribute [rw] namespaces
        #   @return [::Array<::String>]
        #     A list of Kubernetes Namespaces
        class Namespaces
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A reference to a namespaced resource in Kubernetes.
        # @!attribute [rw] namespace
        #   @return [::String]
        #     The Namespace of the Kubernetes resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the Kubernetes resource.
        class NamespacedName
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of namespaced Kubernetes resources.
        # @!attribute [rw] namespaced_names
        #   @return [::Array<::Google::Cloud::GkeBackup::V1::NamespacedName>]
        #     A list of namespaced Kubernetes resources.
        class NamespacedNames
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Defined a customer managed encryption key that will be used to encrypt Backup
        # artifacts.
        # @!attribute [rw] gcp_kms_encryption_key
        #   @return [::String]
        #     Google Cloud KMS encryption key. Format:
        #     projects/*/locations/*/keyRings/*/cryptoKeys/*
        class EncryptionKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
