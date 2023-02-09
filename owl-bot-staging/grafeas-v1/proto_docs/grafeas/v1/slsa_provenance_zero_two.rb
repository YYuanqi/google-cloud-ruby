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


module Grafeas
  module V1
    # @!attribute [rw] builder
    #   @return [::Grafeas::V1::SlsaProvenanceZeroTwo::SlsaBuilder]
    # @!attribute [rw] build_type
    #   @return [::String]
    # @!attribute [rw] invocation
    #   @return [::Grafeas::V1::SlsaProvenanceZeroTwo::SlsaInvocation]
    # @!attribute [rw] build_config
    #   @return [::Google::Protobuf::Struct]
    # @!attribute [rw] metadata
    #   @return [::Grafeas::V1::SlsaProvenanceZeroTwo::SlsaMetadata]
    # @!attribute [rw] materials
    #   @return [::Array<::Grafeas::V1::SlsaProvenanceZeroTwo::SlsaMaterial>]
    class SlsaProvenanceZeroTwo
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # Identifies the entity that executed the recipe, which is trusted to have
      # correctly performed the operation and populated this provenance.
      # @!attribute [rw] id
      #   @return [::String]
      class SlsaBuilder
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # The collection of artifacts that influenced the build including sources,
      # dependencies, build tools, base images, and so on.
      # @!attribute [rw] uri
      #   @return [::String]
      # @!attribute [rw] digest
      #   @return [::Google::Protobuf::Map{::String => ::String}]
      class SlsaMaterial
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # @!attribute [rw] key
        #   @return [::String]
        # @!attribute [rw] value
        #   @return [::String]
        class DigestEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end

      # Identifies the event that kicked off the build.
      # @!attribute [rw] config_source
      #   @return [::Grafeas::V1::SlsaProvenanceZeroTwo::SlsaConfigSource]
      # @!attribute [rw] parameters
      #   @return [::Google::Protobuf::Struct]
      # @!attribute [rw] environment
      #   @return [::Google::Protobuf::Struct]
      class SlsaInvocation
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Describes where the config file that kicked off the build came from.
      # This is effectively a pointer to the source where buildConfig came from.
      # @!attribute [rw] uri
      #   @return [::String]
      # @!attribute [rw] digest
      #   @return [::Google::Protobuf::Map{::String => ::String}]
      # @!attribute [rw] entry_point
      #   @return [::String]
      class SlsaConfigSource
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # @!attribute [rw] key
        #   @return [::String]
        # @!attribute [rw] value
        #   @return [::String]
        class DigestEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end

      # Other properties of the build.
      # @!attribute [rw] build_invocation_id
      #   @return [::String]
      # @!attribute [rw] build_started_on
      #   @return [::Google::Protobuf::Timestamp]
      # @!attribute [rw] build_finished_on
      #   @return [::Google::Protobuf::Timestamp]
      # @!attribute [rw] completeness
      #   @return [::Grafeas::V1::SlsaProvenanceZeroTwo::SlsaCompleteness]
      # @!attribute [rw] reproducible
      #   @return [::Boolean]
      class SlsaMetadata
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Indicates that the builder claims certain fields in this message to be
      # complete.
      # @!attribute [rw] parameters
      #   @return [::Boolean]
      # @!attribute [rw] environment
      #   @return [::Boolean]
      # @!attribute [rw] materials
      #   @return [::Boolean]
      class SlsaCompleteness
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end
  end
end

