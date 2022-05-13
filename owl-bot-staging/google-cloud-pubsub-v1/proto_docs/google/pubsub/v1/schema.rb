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
    module PubSub
      module V1
        # A schema resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the schema.
        #     Format is `projects/{project}/schemas/{schema}`.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::PubSub::V1::Schema::Type]
        #     The type of the schema definition.
        # @!attribute [rw] definition
        #   @return [::String]
        #     The definition of the schema. This should contain a string representing
        #     the full definition of the schema that is a valid schema definition of
        #     the type specified in `type`.
        class Schema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Possible schema definition types.
          module Type
            # Default value. This value is unused.
            TYPE_UNSPECIFIED = 0

            # A Protocol Buffer schema definition.
            PROTOCOL_BUFFER = 1

            # An Avro schema definition.
            AVRO = 2
          end
        end

        # Request for the CreateSchema method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project in which to create the schema.
        #     Format is `projects/{project-id}`.
        # @!attribute [rw] schema
        #   @return [::Google::Cloud::PubSub::V1::Schema]
        #     Required. The schema object to create.
        #
        #     This schema's `name` parameter is ignored. The schema object returned
        #     by CreateSchema will have a `name` made using the given `parent` and
        #     `schema_id`.
        # @!attribute [rw] schema_id
        #   @return [::String]
        #     The ID to use for the schema, which will become the final component of
        #     the schema's resource name.
        #
        #     See https://cloud.google.com/pubsub/docs/admin#resource_names for resource
        #     name constraints.
        class CreateSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the GetSchema method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the schema to get.
        #     Format is `projects/{project}/schemas/{schema}`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::PubSub::V1::SchemaView]
        #     The set of fields to return in the response. If not set, returns a Schema
        #     with `name` and `type`, but not `definition`. Set to `FULL` to retrieve all
        #     fields.
        class GetSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `ListSchemas` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project in which to list schemas.
        #     Format is `projects/{project-id}`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::PubSub::V1::SchemaView]
        #     The set of Schema fields to return in the response. If not set, returns
        #     Schemas with `name` and `type`, but not `definition`. Set to `FULL` to
        #     retrieve all fields.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of schemas to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last `ListSchemasResponse`; indicates that
        #     this is a continuation of a prior `ListSchemas` call, and that the
        #     system should return the next page of data.
        class ListSchemasRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for the `ListSchemas` method.
        # @!attribute [rw] schemas
        #   @return [::Array<::Google::Cloud::PubSub::V1::Schema>]
        #     The resulting schemas.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If not empty, indicates that there may be more schemas that match the
        #     request; this value should be passed in a new `ListSchemasRequest`.
        class ListSchemasResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `DeleteSchema` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the schema to delete.
        #     Format is `projects/{project}/schemas/{schema}`.
        class DeleteSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `ValidateSchema` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project in which to validate schemas.
        #     Format is `projects/{project-id}`.
        # @!attribute [rw] schema
        #   @return [::Google::Cloud::PubSub::V1::Schema]
        #     Required. The schema object to validate.
        class ValidateSchemaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for the `ValidateSchema` method.
        # Empty for now.
        class ValidateSchemaResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `ValidateMessage` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the project in which to validate schemas.
        #     Format is `projects/{project-id}`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the schema against which to validate.
        #
        #     Format is `projects/{project}/schemas/{schema}`.
        # @!attribute [rw] schema
        #   @return [::Google::Cloud::PubSub::V1::Schema]
        #     Ad-hoc schema against which to validate
        # @!attribute [rw] message
        #   @return [::String]
        #     Message to validate against the provided `schema_spec`.
        # @!attribute [rw] encoding
        #   @return [::Google::Cloud::PubSub::V1::Encoding]
        #     The encoding expected for messages
        class ValidateMessageRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for the `ValidateMessage` method.
        # Empty for now.
        class ValidateMessageResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # View of Schema object fields to be returned by GetSchema and ListSchemas.
        module SchemaView
          # The default / unset value.
          # The API will default to the BASIC view.
          SCHEMA_VIEW_UNSPECIFIED = 0

          # Include the name and type of the schema, but not the definition.
          BASIC = 1

          # Include all Schema object fields.
          FULL = 2
        end

        # Possible encoding types for messages.
        module Encoding
          # Unspecified
          ENCODING_UNSPECIFIED = 0

          # JSON encoding
          JSON = 1

          # Binary encoding, as defined by the schema type. For some schema types,
          # binary encoding may not be available.
          BINARY = 2
        end
      end
    end
  end
end
