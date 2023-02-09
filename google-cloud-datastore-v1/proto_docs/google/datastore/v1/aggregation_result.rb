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
    module Datastore
      module V1
        # The result of a single bucket from a Datastore aggregation query.
        #
        # The keys of `aggregate_properties` are the same for all results in an
        # aggregation query, unlike entity queries which can have different fields
        # present for each result.
        # @!attribute [rw] aggregate_properties
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Datastore::V1::Value}]
        #     The result of the aggregation functions, ex: `COUNT(*) AS total_entities`.
        #
        #     The key is the {::Google::Cloud::Datastore::V1::AggregationQuery::Aggregation#alias alias}
        #     assigned to the aggregation function on input and the size of this map
        #     equals the number of aggregation functions in the query.
        class AggregationResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Datastore::V1::Value]
          class AggregatePropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A batch of aggregation results produced by an aggregation query.
        # @!attribute [rw] aggregation_results
        #   @return [::Array<::Google::Cloud::Datastore::V1::AggregationResult>]
        #     The aggregation results for this batch.
        # @!attribute [rw] more_results
        #   @return [::Google::Cloud::Datastore::V1::QueryResultBatch::MoreResultsType]
        #     The state of the query after the current batch.
        #     Only COUNT(*) aggregations are supported in the initial launch. Therefore,
        #     expected result type is limited to `NO_MORE_RESULTS`.
        # @!attribute [rw] read_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Read timestamp this batch was returned from.
        #
        #     In a single transaction, subsequent query result batches for the same query
        #     can have a greater timestamp. Each batch's read timestamp
        #     is valid for all preceding batches.
        class AggregationResultBatch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

