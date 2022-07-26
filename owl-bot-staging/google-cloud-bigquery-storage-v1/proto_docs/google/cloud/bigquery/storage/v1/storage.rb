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
    module Bigquery
      module Storage
        module V1
          # Request message for `CreateReadSession`.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The request project that owns the session, in the form of
          #     `projects/{project_id}`.
          # @!attribute [rw] read_session
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ReadSession]
          #     Required. Session to be created.
          # @!attribute [rw] max_stream_count
          #   @return [::Integer]
          #     Max initial number of streams. If unset or zero, the server will
          #     provide a value of streams so as to produce reasonable throughput. Must be
          #     non-negative. The number of streams may be lower than the requested number,
          #     depending on the amount parallelism that is reasonable for the table.
          #     There is a default system max limit of 1,000.
          #
          #     This must be greater than or equal to preferred_min_stream_count.
          #     Typically, clients should either leave this unset to let the system to
          #     determine an upper bound OR set this a size for the maximum "units of work"
          #     it can gracefully handle.
          class CreateReadSessionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `ReadRows`.
          # @!attribute [rw] read_stream
          #   @return [::String]
          #     Required. Stream to read rows from.
          # @!attribute [rw] offset
          #   @return [::Integer]
          #     The offset requested must be less than the last row read from Read.
          #     Requesting a larger offset is undefined. If not specified, start reading
          #     from offset zero.
          class ReadRowsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Information on if the current connection is being throttled.
          # @!attribute [rw] throttle_percent
          #   @return [::Integer]
          #     How much this connection is being throttled. Zero means no throttling,
          #     100 means fully throttled.
          class ThrottleState
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Estimated stream statistics for a given read Stream.
          # @!attribute [rw] progress
          #   @return [::Google::Cloud::Bigquery::Storage::V1::StreamStats::Progress]
          #     Represents the progress of the current stream.
          class StreamStats
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] at_response_start
            #   @return [::Float]
            #     The fraction of rows assigned to the stream that have been processed by
            #     the server so far, not including the rows in the current response
            #     message.
            #
            #     This value, along with `at_response_end`, can be used to interpolate
            #     the progress made as the rows in the message are being processed using
            #     the following formula: `at_response_start + (at_response_end -
            #     at_response_start) * rows_processed_from_response / rows_in_response`.
            #
            #     Note that if a filter is provided, the `at_response_end` value of the
            #     previous response may not necessarily be equal to the
            #     `at_response_start` value of the current response.
            # @!attribute [rw] at_response_end
            #   @return [::Float]
            #     Similar to `at_response_start`, except that this value includes the
            #     rows in the current response.
            class Progress
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Response from calling `ReadRows` may include row data, progress and
          # throttling information.
          # @!attribute [rw] avro_rows
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AvroRows]
          #     Serialized row data in AVRO format.
          # @!attribute [rw] arrow_record_batch
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ArrowRecordBatch]
          #     Serialized row data in Arrow RecordBatch format.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     Number of serialized rows in the rows block.
          # @!attribute [rw] stats
          #   @return [::Google::Cloud::Bigquery::Storage::V1::StreamStats]
          #     Statistics for the stream.
          # @!attribute [rw] throttle_state
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ThrottleState]
          #     Throttling state. If unset, the latest response still describes
          #     the current throttling status.
          # @!attribute [r] avro_schema
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AvroSchema]
          #     Output only. Avro schema.
          # @!attribute [r] arrow_schema
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ArrowSchema]
          #     Output only. Arrow schema.
          class ReadRowsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `SplitReadStream`.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the stream to split.
          # @!attribute [rw] fraction
          #   @return [::Float]
          #     A value in the range (0.0, 1.0) that specifies the fractional point at
          #     which the original stream should be split. The actual split point is
          #     evaluated on pre-filtered rows, so if a filter is provided, then there is
          #     no guarantee that the division of the rows between the new child streams
          #     will be proportional to this fractional value. Additionally, because the
          #     server-side unit for assigning data is collections of rows, this fraction
          #     will always map to a data storage boundary on the server side.
          class SplitReadStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for `SplitReadStream`.
          # @!attribute [rw] primary_stream
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ReadStream]
          #     Primary stream, which contains the beginning portion of
          #     |original_stream|. An empty value indicates that the original stream can no
          #     longer be split.
          # @!attribute [rw] remainder_stream
          #   @return [::Google::Cloud::Bigquery::Storage::V1::ReadStream]
          #     Remainder stream, which contains the tail of |original_stream|. An empty
          #     value indicates that the original stream can no longer be split.
          class SplitReadStreamResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `CreateWriteStream`.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Reference to the table to which the stream belongs, in the format
          #     of `projects/{project}/datasets/{dataset}/tables/{table}`.
          # @!attribute [rw] write_stream
          #   @return [::Google::Cloud::Bigquery::Storage::V1::WriteStream]
          #     Required. Stream to be created.
          class CreateWriteStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `AppendRows`.
          #
          # Due to the nature of AppendRows being a bidirectional streaming RPC, certain
          # parts of the AppendRowsRequest need only be specified for the first request
          # sent each time the gRPC network connection is opened/reopened.
          # @!attribute [rw] write_stream
          #   @return [::String]
          #     Required. The write_stream identifies the target of the append operation, and only
          #     needs to be specified as part of the first request on the gRPC connection.
          #     If provided for subsequent requests, it must match the value of the first
          #     request.
          #
          #     For explicitly created write streams, the format is:
          #
          #     * `projects/{project}/datasets/{dataset}/tables/{table}/streams/{id}`
          #
          #     For the special default stream, the format is:
          #
          #     * `projects/{project}/datasets/{dataset}/tables/{table}/streams/_default`.
          # @!attribute [rw] offset
          #   @return [::Google::Protobuf::Int64Value]
          #     If present, the write is only performed if the next append offset is same
          #     as the provided value. If not present, the write is performed at the
          #     current end of stream. Specifying a value for this field is not allowed
          #     when calling AppendRows for the '_default' stream.
          # @!attribute [rw] proto_rows
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest::ProtoData]
          #     Rows in proto format.
          # @!attribute [rw] trace_id
          #   @return [::String]
          #     Id set by client to annotate its identity. Only initial request setting is
          #     respected.
          class AppendRowsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # ProtoData contains the data rows and schema when constructing append
            # requests.
            # @!attribute [rw] writer_schema
            #   @return [::Google::Cloud::Bigquery::Storage::V1::ProtoSchema]
            #     Proto schema used to serialize the data.  This value only needs to be
            #     provided as part of the first request on a gRPC network connection,
            #     and will be ignored for subsequent requests on the connection.
            # @!attribute [rw] rows
            #   @return [::Google::Cloud::Bigquery::Storage::V1::ProtoRows]
            #     Serialized row data in protobuf message format.
            #     Currently, the backend expects the serialized rows to adhere to
            #     proto2 semantics when appending rows, particularly with respect to
            #     how default values are encoded.
            class ProtoData
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Response message for `AppendRows`.
          # @!attribute [rw] append_result
          #   @return [::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse::AppendResult]
          #     Result if the append is successful.
          # @!attribute [rw] error
          #   @return [::Google::Rpc::Status]
          #     Error returned when problems were encountered.  If present,
          #     it indicates rows were not accepted into the system.
          #     Users can retry or continue with other append requests within the
          #     same connection.
          #
          #     Additional information about error signalling:
          #
          #     ALREADY_EXISTS: Happens when an append specified an offset, and the
          #     backend already has received data at this offset.  Typically encountered
          #     in retry scenarios, and can be ignored.
          #
          #     OUT_OF_RANGE: Returned when the specified offset in the stream is beyond
          #     the current end of the stream.
          #
          #     INVALID_ARGUMENT: Indicates a malformed request or data.
          #
          #     ABORTED: Request processing is aborted because of prior failures.  The
          #     request can be retried if previous failure is addressed.
          #
          #     INTERNAL: Indicates server side error(s) that can be retried.
          # @!attribute [rw] updated_schema
          #   @return [::Google::Cloud::Bigquery::Storage::V1::TableSchema]
          #     If backend detects a schema update, pass it to user so that user can
          #     use it to input new type of message. It will be empty when no schema
          #     updates have occurred.
          # @!attribute [rw] row_errors
          #   @return [::Array<::Google::Cloud::Bigquery::Storage::V1::RowError>]
          #     If a request failed due to corrupted rows, no rows in the batch will be
          #     appended. The API will return row level error info, so that the caller can
          #     remove the bad rows and retry the request.
          class AppendRowsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # AppendResult is returned for successful append requests.
            # @!attribute [rw] offset
            #   @return [::Google::Protobuf::Int64Value]
            #     The row offset at which the last append occurred. The offset will not be
            #     set if appending using default streams.
            class AppendResult
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Request message for `GetWriteStreamRequest`.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the stream to get, in the form of
          #     `projects/{project}/datasets/{dataset}/tables/{table}/streams/{stream}`.
          class GetWriteStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `BatchCommitWriteStreams`.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Parent table that all the streams should belong to, in the form of
          #     `projects/{project}/datasets/{dataset}/tables/{table}`.
          # @!attribute [rw] write_streams
          #   @return [::Array<::String>]
          #     Required. The group of streams that will be committed atomically.
          class BatchCommitWriteStreamsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for `BatchCommitWriteStreams`.
          # @!attribute [rw] commit_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time at which streams were committed in microseconds granularity.
          #     This field will only exist when there are no stream errors.
          #     **Note** if this field is not set, it means the commit was not successful.
          # @!attribute [rw] stream_errors
          #   @return [::Array<::Google::Cloud::Bigquery::Storage::V1::StorageError>]
          #     Stream level error if commit failed. Only streams with error will be in
          #     the list.
          #     If empty, there is no error and all streams are committed successfully.
          #     If non empty, certain streams have errors and ZERO stream is committed due
          #     to atomicity guarantee.
          class BatchCommitWriteStreamsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for invoking `FinalizeWriteStream`.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the stream to finalize, in the form of
          #     `projects/{project}/datasets/{dataset}/tables/{table}/streams/{stream}`.
          class FinalizeWriteStreamRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for `FinalizeWriteStream`.
          # @!attribute [rw] row_count
          #   @return [::Integer]
          #     Number of rows in the finalized stream.
          class FinalizeWriteStreamResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for `FlushRows`.
          # @!attribute [rw] write_stream
          #   @return [::String]
          #     Required. The stream that is the target of the flush operation.
          # @!attribute [rw] offset
          #   @return [::Google::Protobuf::Int64Value]
          #     Ending offset of the flush operation. Rows before this offset(including
          #     this offset) will be flushed.
          class FlushRowsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Respond message for `FlushRows`.
          # @!attribute [rw] offset
          #   @return [::Integer]
          #     The rows before this offset (including this offset) are flushed.
          class FlushRowsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Structured custom BigQuery Storage error message. The error can be attached
          # as error details in the returned rpc Status. In particular, the use of error
          # codes allows more structured error handling, and reduces the need to evaluate
          # unstructured error text strings.
          # @!attribute [rw] code
          #   @return [::Google::Cloud::Bigquery::Storage::V1::StorageError::StorageErrorCode]
          #     BigQuery Storage specific error code.
          # @!attribute [rw] entity
          #   @return [::String]
          #     Name of the failed entity.
          # @!attribute [rw] error_message
          #   @return [::String]
          #     Message that describes the error.
          class StorageError
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Error code for `StorageError`.
            module StorageErrorCode
              # Default error.
              STORAGE_ERROR_CODE_UNSPECIFIED = 0

              # Table is not found in the system.
              TABLE_NOT_FOUND = 1

              # Stream is already committed.
              STREAM_ALREADY_COMMITTED = 2

              # Stream is not found.
              STREAM_NOT_FOUND = 3

              # Invalid Stream type.
              # For example, you try to commit a stream that is not pending.
              INVALID_STREAM_TYPE = 4

              # Invalid Stream state.
              # For example, you try to commit a stream that is not finalized or is
              # garbaged.
              INVALID_STREAM_STATE = 5

              # Stream is finalized.
              STREAM_FINALIZED = 6

              # There is a schema mismatch and it is caused by user schema has extra
              # field than bigquery schema.
              SCHEMA_MISMATCH_EXTRA_FIELDS = 7

              # Offset already exists.
              OFFSET_ALREADY_EXISTS = 8

              # Offset out of range.
              OFFSET_OUT_OF_RANGE = 9
            end
          end

          # The message that presents row level error info in a request.
          # @!attribute [rw] index
          #   @return [::Integer]
          #     Index of the malformed row in the request.
          # @!attribute [rw] code
          #   @return [::Google::Cloud::Bigquery::Storage::V1::RowError::RowErrorCode]
          #     Structured error reason for a row error.
          # @!attribute [rw] message
          #   @return [::String]
          #     Description of the issue encountered when processing the row.
          class RowError
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Error code for `RowError`.
            module RowErrorCode
              # Default error.
              ROW_ERROR_CODE_UNSPECIFIED = 0

              # One or more fields in the row has errors.
              FIELDS_ERROR = 1
            end
          end
        end
      end
    end
  end
end
