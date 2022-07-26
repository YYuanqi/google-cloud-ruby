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
    module DataCatalog
      module V1
        # Describes a BigQuery table.
        # @!attribute [r] table_source_type
        #   @return [::Google::Cloud::DataCatalog::V1::TableSourceType]
        #     Output only. The table source type.
        # @!attribute [rw] view_spec
        #   @return [::Google::Cloud::DataCatalog::V1::ViewSpec]
        #     Table view specification. Populated only if
        #     the `table_source_type` is `BIGQUERY_VIEW`.
        # @!attribute [rw] table_spec
        #   @return [::Google::Cloud::DataCatalog::V1::TableSpec]
        #     Specification of a BigQuery table. Populated only if
        #     the `table_source_type` is `BIGQUERY_TABLE`.
        class BigQueryTableSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Table view specification.
        # @!attribute [r] view_query
        #   @return [::String]
        #     Output only. The query that defines the table view.
        class ViewSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Normal BigQuery table specification.
        # @!attribute [r] grouped_entry
        #   @return [::String]
        #     Output only. If the table is date-sharded, that is, it matches the `[prefix]YYYYMMDD`
        #     name pattern, this field is the Data Catalog resource name of the
        #     date-sharded grouped entry. For example:
        #
        #     `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`.
        #
        #     Otherwise, `grouped_entry` is empty.
        class TableSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name
        # pattern.
        #
        # For more information, see [Introduction to partitioned tables]
        # (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).
        # @!attribute [r] dataset
        #   @return [::String]
        #     Output only. The Data Catalog resource name of the dataset entry the current table
        #     belongs to. For example:
        #
        #     `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`.
        # @!attribute [r] table_prefix
        #   @return [::String]
        #     Output only. The table name prefix of the shards.
        #
        #     The name of any given shard is `[table_prefix]YYYYMMDD`.
        #     For example, for the `MyTable20180101` shard, the
        #     `table_prefix` is `MyTable`.
        # @!attribute [r] shard_count
        #   @return [::Integer]
        #     Output only. Total number of shards.
        # @!attribute [r] latest_shard_resource
        #   @return [::String]
        #     Output only. BigQuery resource name of the latest shard.
        class BigQueryDateShardedSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Table source type.
        module TableSourceType
          # Default unknown type.
          TABLE_SOURCE_TYPE_UNSPECIFIED = 0

          # Table view.
          BIGQUERY_VIEW = 2

          # BigQuery native table.
          BIGQUERY_TABLE = 5

          # BigQuery materialized view.
          BIGQUERY_MATERIALIZED_VIEW = 7
        end
      end
    end
  end
end
