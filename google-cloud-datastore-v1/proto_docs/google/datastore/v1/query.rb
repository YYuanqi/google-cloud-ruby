# frozen_string_literal: true

# Copyright 2020 Google LLC
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
        # The result of fetching an entity from Datastore.
        # @!attribute [rw] entity
        #   @return [::Google::Cloud::Datastore::V1::Entity]
        #     The resulting entity.
        # @!attribute [rw] version
        #   @return [::Integer]
        #     The version of the entity, a strictly positive number that monotonically
        #     increases with changes to the entity.
        #
        #     This field is set for
        #     {::Google::Cloud::Datastore::V1::EntityResult::ResultType::FULL `FULL`} entity results.
        #
        #     For {::Google::Cloud::Datastore::V1::LookupResponse#missing missing} entities in
        #     `LookupResponse`, this is the version of the snapshot that was used to look
        #     up the entity, and it is always set except for eventually consistent reads.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time at which the entity was created.
        #     This field is set for
        #     {::Google::Cloud::Datastore::V1::EntityResult::ResultType::FULL `FULL`} entity results.
        #     If this entity is missing, this field will not be set.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time at which the entity was last changed.
        #     This field is set for
        #     {::Google::Cloud::Datastore::V1::EntityResult::ResultType::FULL `FULL`} entity results.
        #     If this entity is missing, this field will not be set.
        # @!attribute [rw] cursor
        #   @return [::String]
        #     A cursor that points to the position after the result entity.
        #     Set only when the `EntityResult` is part of a `QueryResultBatch` message.
        class EntityResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specifies what data the 'entity' field contains.
          # A `ResultType` is either implied (for example, in `LookupResponse.missing`
          # from `datastore.proto`, it is always `KEY_ONLY`) or specified by context
          # (for example, in message `QueryResultBatch`, field `entity_result_type`
          # specifies a `ResultType` for all the values in field `entity_results`).
          module ResultType
            # Unspecified. This value is never used.
            RESULT_TYPE_UNSPECIFIED = 0

            # The key and properties.
            FULL = 1

            # A projected subset of properties. The entity may have no key.
            PROJECTION = 2

            # Only the key.
            KEY_ONLY = 3
          end
        end

        # A query for entities.
        # @!attribute [rw] projection
        #   @return [::Array<::Google::Cloud::Datastore::V1::Projection>]
        #     The projection to return. Defaults to returning all properties.
        # @!attribute [rw] kind
        #   @return [::Array<::Google::Cloud::Datastore::V1::KindExpression>]
        #     The kinds to query (if empty, returns entities of all kinds).
        #     Currently at most 1 kind may be specified.
        # @!attribute [rw] filter
        #   @return [::Google::Cloud::Datastore::V1::Filter]
        #     The filter to apply.
        # @!attribute [rw] order
        #   @return [::Array<::Google::Cloud::Datastore::V1::PropertyOrder>]
        #     The order to apply to the query results (if empty, order is unspecified).
        # @!attribute [rw] distinct_on
        #   @return [::Array<::Google::Cloud::Datastore::V1::PropertyReference>]
        #     The properties to make distinct. The query results will contain the first
        #     result for each distinct combination of values for the given properties
        #     (if empty, all results are returned).
        # @!attribute [rw] start_cursor
        #   @return [::String]
        #     A starting point for the query results. Query cursors are
        #     returned in query result batches and
        #     [can only be used to continue the same
        #     query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
        # @!attribute [rw] end_cursor
        #   @return [::String]
        #     An ending point for the query results. Query cursors are
        #     returned in query result batches and
        #     [can only be used to limit the same
        #     query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
        # @!attribute [rw] offset
        #   @return [::Integer]
        #     The number of results to skip. Applies before limit, but after all other
        #     constraints. Optional. Must be >= 0 if specified.
        # @!attribute [rw] limit
        #   @return [::Google::Protobuf::Int32Value]
        #     The maximum number of results to return. Applies after all other
        #     constraints. Optional.
        #     Unspecified is interpreted as no limit.
        #     Must be >= 0 if specified.
        class Query
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Datastore query for running an aggregation over a
        # {::Google::Cloud::Datastore::V1::Query Query}.
        # @!attribute [rw] nested_query
        #   @return [::Google::Cloud::Datastore::V1::Query]
        #     Nested query for aggregation
        # @!attribute [rw] aggregations
        #   @return [::Array<::Google::Cloud::Datastore::V1::AggregationQuery::Aggregation>]
        #     Optional. Series of aggregations to apply over the results of the
        #     `nested_query`.
        #
        #     Requires:
        #
        #     * A minimum of one and maximum of five aggregations per query.
        class AggregationQuery
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Defines a aggregation that produces a single result.
          # @!attribute [rw] count
          #   @return [::Google::Cloud::Datastore::V1::AggregationQuery::Aggregation::Count]
          #     Count aggregator.
          # @!attribute [rw] alias
          #   @return [::String]
          #     Optional. Optional name of the property to store the result of the
          #     aggregation.
          #
          #     If not provided, Datastore will pick a default name following the format
          #     `property_<incremental_id++>`. For example:
          #
          #     ```
          #     AGGREGATE
          #       COUNT_UP_TO(1) AS count_up_to_1,
          #       COUNT_UP_TO(2),
          #       COUNT_UP_TO(3) AS count_up_to_3,
          #       COUNT_UP_TO(4)
          #     OVER (
          #       ...
          #     );
          #     ```
          #
          #     becomes:
          #
          #     ```
          #     AGGREGATE
          #       COUNT_UP_TO(1) AS count_up_to_1,
          #       COUNT_UP_TO(2) AS property_1,
          #       COUNT_UP_TO(3) AS count_up_to_3,
          #       COUNT_UP_TO(4) AS property_2
          #     OVER (
          #       ...
          #     );
          #     ```
          #
          #     Requires:
          #
          #     * Must be unique across all aggregation aliases.
          #     * Conform to [entity property
          #     name][google.datastore.v1.Entity.properties] limitations.
          class Aggregation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Count of entities that match the query.
            #
            # The `COUNT(*)` aggregation function operates on the entire entity
            # so it does not require a field reference.
            # @!attribute [rw] up_to
            #   @return [::Google::Protobuf::Int64Value]
            #     Optional. Optional constraint on the maximum number of entities to
            #     count.
            #
            #     This provides a way to set an upper bound on the number of entities
            #     to scan, limiting latency and cost.
            #
            #     Unspecified is interpreted as no bound.
            #
            #     If a zero value is provided, a count result of zero should always be
            #     expected.
            #
            #     High-Level Example:
            #
            #     ```
            #     AGGREGATE COUNT_UP_TO(1000) OVER ( SELECT * FROM k );
            #     ```
            #
            #     Requires:
            #
            #     * Must be non-negative when present.
            class Count
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # A representation of a kind.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the kind.
        class KindExpression
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A reference to a property relative to the kind expressions.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the property.
        #     If name includes "."s, it may be interpreted as a property name path.
        class PropertyReference
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A representation of a property in a projection.
        # @!attribute [rw] property
        #   @return [::Google::Cloud::Datastore::V1::PropertyReference]
        #     The property to project.
        class Projection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The desired order for a specific property.
        # @!attribute [rw] property
        #   @return [::Google::Cloud::Datastore::V1::PropertyReference]
        #     The property to order by.
        # @!attribute [rw] direction
        #   @return [::Google::Cloud::Datastore::V1::PropertyOrder::Direction]
        #     The direction to order by. Defaults to `ASCENDING`.
        class PropertyOrder
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The sort direction.
          module Direction
            # Unspecified. This value must not be used.
            DIRECTION_UNSPECIFIED = 0

            # Ascending.
            ASCENDING = 1

            # Descending.
            DESCENDING = 2
          end
        end

        # A holder for any type of filter.
        # @!attribute [rw] composite_filter
        #   @return [::Google::Cloud::Datastore::V1::CompositeFilter]
        #     A composite filter.
        # @!attribute [rw] property_filter
        #   @return [::Google::Cloud::Datastore::V1::PropertyFilter]
        #     A filter on a property.
        class Filter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A filter that merges multiple other filters using the given operator.
        # @!attribute [rw] op
        #   @return [::Google::Cloud::Datastore::V1::CompositeFilter::Operator]
        #     The operator for combining multiple filters.
        # @!attribute [rw] filters
        #   @return [::Array<::Google::Cloud::Datastore::V1::Filter>]
        #     The list of filters to combine.
        #
        #     Requires:
        #
        #     * At least one filter is present.
        class CompositeFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A composite filter operator.
          module Operator
            # Unspecified. This value must not be used.
            OPERATOR_UNSPECIFIED = 0

            # The results are required to satisfy each of the combined filters.
            AND = 1

            # Documents are required to satisfy at least one of the combined filters.
            OR = 2
          end
        end

        # A filter on a specific property.
        # @!attribute [rw] property
        #   @return [::Google::Cloud::Datastore::V1::PropertyReference]
        #     The property to filter by.
        # @!attribute [rw] op
        #   @return [::Google::Cloud::Datastore::V1::PropertyFilter::Operator]
        #     The operator to filter by.
        # @!attribute [rw] value
        #   @return [::Google::Cloud::Datastore::V1::Value]
        #     The value to compare the property to.
        class PropertyFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A property filter operator.
          module Operator
            # Unspecified. This value must not be used.
            OPERATOR_UNSPECIFIED = 0

            # The given `property` is less than the given `value`.
            #
            # Requires:
            #
            # * That `property` comes first in `order_by`.
            LESS_THAN = 1

            # The given `property` is less than or equal to the given `value`.
            #
            # Requires:
            #
            # * That `property` comes first in `order_by`.
            LESS_THAN_OR_EQUAL = 2

            # The given `property` is greater than the given `value`.
            #
            # Requires:
            #
            # * That `property` comes first in `order_by`.
            GREATER_THAN = 3

            # The given `property` is greater than or equal to the given `value`.
            #
            # Requires:
            #
            # * That `property` comes first in `order_by`.
            GREATER_THAN_OR_EQUAL = 4

            # The given `property` is equal to the given `value`.
            EQUAL = 5

            # The given `property` is equal to at least one value in the given array.
            #
            # Requires:
            #
            # * That `value` is a non-empty `ArrayValue` with at most 10 values.
            # * No other `IN` or `NOT_IN` is in the same query.
            IN = 6

            # The given `property` is not equal to the given `value`.
            #
            # Requires:
            #
            # * No other `NOT_EQUAL` or `NOT_IN` is in the same query.
            # * That `property` comes first in the `order_by`.
            NOT_EQUAL = 9

            # Limit the result set to the given entity and its descendants.
            #
            # Requires:
            #
            # * That `value` is an entity key.
            # * No other `HAS_ANCESTOR` is in the same query.
            HAS_ANCESTOR = 11

            # The value of the `property` is not in the given array.
            #
            # Requires:
            #
            # * That `value` is a non-empty `ArrayValue` with at most 10 values.
            # * No other `IN`, `NOT_IN`, `NOT_EQUAL` is in the same query.
            # * That `field` comes first in the `order_by`.
            NOT_IN = 13
          end
        end

        # A [GQL
        # query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
        # @!attribute [rw] query_string
        #   @return [::String]
        #     A string of the format described
        #     [here](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).
        # @!attribute [rw] allow_literals
        #   @return [::Boolean]
        #     When false, the query string must not contain any literals and instead must
        #     bind all values. For example,
        #     `SELECT * FROM Kind WHERE a = 'string literal'` is not allowed, while
        #     `SELECT * FROM Kind WHERE a = @value` is.
        # @!attribute [rw] named_bindings
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Datastore::V1::GqlQueryParameter}]
        #     For each non-reserved named binding site in the query string, there must be
        #     a named parameter with that name, but not necessarily the inverse.
        #
        #     Key must match regex `[A-Za-z_$][A-Za-z_$0-9]*`, must not match regex
        #     `__.*__`, and must not be `""`.
        # @!attribute [rw] positional_bindings
        #   @return [::Array<::Google::Cloud::Datastore::V1::GqlQueryParameter>]
        #     Numbered binding site @1 references the first numbered parameter,
        #     effectively using 1-based indexing, rather than the usual 0.
        #
        #     For each binding site numbered i in `query_string`, there must be an i-th
        #     numbered parameter. The inverse must also be true.
        class GqlQuery
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Datastore::V1::GqlQueryParameter]
          class NamedBindingsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A binding parameter for a GQL query.
        # @!attribute [rw] value
        #   @return [::Google::Cloud::Datastore::V1::Value]
        #     A value parameter.
        # @!attribute [rw] cursor
        #   @return [::String]
        #     A query cursor. Query cursors are returned in query
        #     result batches.
        class GqlQueryParameter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A batch of results produced by a query.
        # @!attribute [rw] skipped_results
        #   @return [::Integer]
        #     The number of results skipped, typically because of an offset.
        # @!attribute [rw] skipped_cursor
        #   @return [::String]
        #     A cursor that points to the position after the last skipped result.
        #     Will be set when `skipped_results` != 0.
        # @!attribute [rw] entity_result_type
        #   @return [::Google::Cloud::Datastore::V1::EntityResult::ResultType]
        #     The result type for every entity in `entity_results`.
        # @!attribute [rw] entity_results
        #   @return [::Array<::Google::Cloud::Datastore::V1::EntityResult>]
        #     The results for this batch.
        # @!attribute [rw] end_cursor
        #   @return [::String]
        #     A cursor that points to the position after the last result in the batch.
        # @!attribute [rw] more_results
        #   @return [::Google::Cloud::Datastore::V1::QueryResultBatch::MoreResultsType]
        #     The state of the query after the current batch.
        # @!attribute [rw] snapshot_version
        #   @return [::Integer]
        #     The version number of the snapshot this batch was returned from.
        #     This applies to the range of results from the query's `start_cursor` (or
        #     the beginning of the query if no cursor was given) to this batch's
        #     `end_cursor` (not the query's `end_cursor`).
        #
        #     In a single transaction, subsequent query result batches for the same query
        #     can have a greater snapshot version number. Each batch's snapshot version
        #     is valid for all preceding batches.
        #     The value will be zero for eventually consistent queries.
        # @!attribute [rw] read_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Read timestamp this batch was returned from.
        #     This applies to the range of results from the query's `start_cursor` (or
        #     the beginning of the query if no cursor was given) to this batch's
        #     `end_cursor` (not the query's `end_cursor`).
        #
        #     In a single transaction, subsequent query result batches for the same query
        #     can have a greater timestamp. Each batch's read timestamp
        #     is valid for all preceding batches.
        #     This value will not be set for eventually consistent queries in Cloud
        #     Datastore.
        class QueryResultBatch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The possible values for the `more_results` field.
          module MoreResultsType
            # Unspecified. This value is never used.
            MORE_RESULTS_TYPE_UNSPECIFIED = 0

            # There may be additional batches to fetch from this query.
            NOT_FINISHED = 1

            # The query is finished, but there may be more results after the limit.
            MORE_RESULTS_AFTER_LIMIT = 2

            # The query is finished, but there may be more results after the end
            # cursor.
            MORE_RESULTS_AFTER_CURSOR = 4

            # The query is finished, and there are no more results.
            NO_MORE_RESULTS = 3
          end
        end
      end
    end
  end
end
