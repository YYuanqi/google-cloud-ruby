# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataproc/v1/operations.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataproc/v1/operations.proto", :syntax => :proto3) do
    add_message "google.cloud.dataproc.v1.BatchOperationMetadata" do
      optional :batch, :string, 1
      optional :batch_uuid, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :done_time, :message, 4, "google.protobuf.Timestamp"
      optional :operation_type, :enum, 6, "google.cloud.dataproc.v1.BatchOperationMetadata.BatchOperationType"
      optional :description, :string, 7
      map :labels, :string, :string, 8
      repeated :warnings, :string, 9
    end
    add_enum "google.cloud.dataproc.v1.BatchOperationMetadata.BatchOperationType" do
      value :BATCH_OPERATION_TYPE_UNSPECIFIED, 0
      value :BATCH, 1
    end
    add_message "google.cloud.dataproc.v1.ClusterOperationStatus" do
      optional :state, :enum, 1, "google.cloud.dataproc.v1.ClusterOperationStatus.State"
      optional :inner_state, :string, 2
      optional :details, :string, 3
      optional :state_start_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.dataproc.v1.ClusterOperationStatus.State" do
      value :UNKNOWN, 0
      value :PENDING, 1
      value :RUNNING, 2
      value :DONE, 3
    end
    add_message "google.cloud.dataproc.v1.ClusterOperationMetadata" do
      optional :cluster_name, :string, 7
      optional :cluster_uuid, :string, 8
      optional :status, :message, 9, "google.cloud.dataproc.v1.ClusterOperationStatus"
      repeated :status_history, :message, 10, "google.cloud.dataproc.v1.ClusterOperationStatus"
      optional :operation_type, :string, 11
      optional :description, :string, 12
      map :labels, :string, :string, 13
      repeated :warnings, :string, 14
      repeated :child_operation_ids, :string, 15
    end
    add_message "google.cloud.dataproc.v1.NodeGroupOperationMetadata" do
      optional :node_group_id, :string, 1
      optional :cluster_uuid, :string, 2
      optional :status, :message, 3, "google.cloud.dataproc.v1.ClusterOperationStatus"
      repeated :status_history, :message, 4, "google.cloud.dataproc.v1.ClusterOperationStatus"
      optional :operation_type, :enum, 5, "google.cloud.dataproc.v1.NodeGroupOperationMetadata.NodeGroupOperationType"
      optional :description, :string, 6
      map :labels, :string, :string, 7
      repeated :warnings, :string, 8
    end
    add_enum "google.cloud.dataproc.v1.NodeGroupOperationMetadata.NodeGroupOperationType" do
      value :NODE_GROUP_OPERATION_TYPE_UNSPECIFIED, 0
      value :CREATE, 1
      value :UPDATE, 2
      value :DELETE, 3
      value :RESIZE, 4
    end
  end
end

module Google
  module Cloud
    module Dataproc
      module V1
        BatchOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.BatchOperationMetadata").msgclass
        BatchOperationMetadata::BatchOperationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.BatchOperationMetadata.BatchOperationType").enummodule
        ClusterOperationStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterOperationStatus").msgclass
        ClusterOperationStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterOperationStatus.State").enummodule
        ClusterOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterOperationMetadata").msgclass
        NodeGroupOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.NodeGroupOperationMetadata").msgclass
        NodeGroupOperationMetadata::NodeGroupOperationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.NodeGroupOperationMetadata.NodeGroupOperationType").enummodule
      end
    end
  end
end
