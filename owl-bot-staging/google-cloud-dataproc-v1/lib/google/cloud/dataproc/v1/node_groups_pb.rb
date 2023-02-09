# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataproc/v1/node_groups.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataproc/v1/clusters_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataproc/v1/node_groups.proto", :syntax => :proto3) do
    add_message "google.cloud.dataproc.v1.CreateNodeGroupRequest" do
      optional :parent, :string, 1
      optional :node_group, :message, 2, "google.cloud.dataproc.v1.NodeGroup"
      optional :node_group_id, :string, 4
      optional :request_id, :string, 3
    end
    add_message "google.cloud.dataproc.v1.ResizeNodeGroupRequest" do
      optional :name, :string, 1
      optional :size, :int32, 2
      optional :request_id, :string, 3
      optional :graceful_decommission_timeout, :message, 4, "google.protobuf.Duration"
    end
    add_message "google.cloud.dataproc.v1.GetNodeGroupRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module Dataproc
      module V1
        CreateNodeGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.CreateNodeGroupRequest").msgclass
        ResizeNodeGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ResizeNodeGroupRequest").msgclass
        GetNodeGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GetNodeGroupRequest").msgclass
      end
    end
  end
end
