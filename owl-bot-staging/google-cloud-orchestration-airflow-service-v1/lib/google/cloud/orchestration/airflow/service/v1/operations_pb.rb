# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/orchestration/airflow/service/v1/operations.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/orchestration/airflow/service/v1/operations.proto", :syntax => :proto3) do
    add_message "google.cloud.orchestration.airflow.service.v1.OperationMetadata" do
      optional :state, :enum, 1, "google.cloud.orchestration.airflow.service.v1.OperationMetadata.State"
      optional :operation_type, :enum, 2, "google.cloud.orchestration.airflow.service.v1.OperationMetadata.Type"
      optional :resource, :string, 3
      optional :resource_uuid, :string, 4
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :end_time, :message, 6, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.orchestration.airflow.service.v1.OperationMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :PENDING, 1
      value :RUNNING, 2
      value :SUCCEEDED, 3
      value :SUCCESSFUL, 3
      value :FAILED, 4
    end
    add_enum "google.cloud.orchestration.airflow.service.v1.OperationMetadata.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :CREATE, 1
      value :DELETE, 2
      value :UPDATE, 3
      value :CHECK, 4
    end
  end
end

module Google
  module Cloud
    module Orchestration
      module Airflow
        module Service
          module V1
            OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.OperationMetadata").msgclass
            OperationMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.OperationMetadata.State").enummodule
            OperationMetadata::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.OperationMetadata.Type").enummodule
          end
        end
      end
    end
  end
end
