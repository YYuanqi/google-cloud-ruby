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
    module Firestore
      module V1
        # The result of a single bucket from a Firestore aggregation query.
        #
        # The keys of `aggregate_fields` are the same for all results in an aggregation
        # query, unlike document queries which can have different fields present for
        # each result.
        # @!attribute [rw] aggregate_fields
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Firestore::V1::Value}]
        #     The result of the aggregation functions, ex: `COUNT(*) AS total_docs`.
        #
        #     The key is the
        #     {::Google::Cloud::Firestore::V1::StructuredAggregationQuery::Aggregation#alias alias}
        #     assigned to the aggregation function on input and the size of this map
        #     equals the number of aggregation functions in the query.
        class AggregationResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Firestore::V1::Value]
          class AggregateFieldsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
