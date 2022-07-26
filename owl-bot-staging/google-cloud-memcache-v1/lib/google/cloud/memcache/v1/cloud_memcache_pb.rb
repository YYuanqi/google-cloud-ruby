# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/memcache/v1/cloud_memcache.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/memcache/v1/cloud_memcache.proto", :syntax => :proto3) do
    add_message "google.cloud.memcache.v1.Instance" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      map :labels, :string, :string, 3
      optional :authorized_network, :string, 4
      repeated :zones, :string, 5
      optional :node_count, :int32, 6
      optional :node_config, :message, 7, "google.cloud.memcache.v1.Instance.NodeConfig"
      optional :memcache_version, :enum, 9, "google.cloud.memcache.v1.MemcacheVersion"
      optional :parameters, :message, 11, "google.cloud.memcache.v1.MemcacheParameters"
      repeated :memcache_nodes, :message, 12, "google.cloud.memcache.v1.Instance.Node"
      optional :create_time, :message, 13, "google.protobuf.Timestamp"
      optional :update_time, :message, 14, "google.protobuf.Timestamp"
      optional :state, :enum, 15, "google.cloud.memcache.v1.Instance.State"
      optional :memcache_full_version, :string, 18
      repeated :instance_messages, :message, 19, "google.cloud.memcache.v1.Instance.InstanceMessage"
      optional :discovery_endpoint, :string, 20
    end
    add_message "google.cloud.memcache.v1.Instance.NodeConfig" do
      optional :cpu_count, :int32, 1
      optional :memory_size_mb, :int32, 2
    end
    add_message "google.cloud.memcache.v1.Instance.Node" do
      optional :node_id, :string, 1
      optional :zone, :string, 2
      optional :state, :enum, 3, "google.cloud.memcache.v1.Instance.Node.State"
      optional :host, :string, 4
      optional :port, :int32, 5
      optional :parameters, :message, 6, "google.cloud.memcache.v1.MemcacheParameters"
    end
    add_enum "google.cloud.memcache.v1.Instance.Node.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :READY, 2
      value :DELETING, 3
      value :UPDATING, 4
    end
    add_message "google.cloud.memcache.v1.Instance.InstanceMessage" do
      optional :code, :enum, 1, "google.cloud.memcache.v1.Instance.InstanceMessage.Code"
      optional :message, :string, 2
    end
    add_enum "google.cloud.memcache.v1.Instance.InstanceMessage.Code" do
      value :CODE_UNSPECIFIED, 0
      value :ZONE_DISTRIBUTION_UNBALANCED, 1
    end
    add_enum "google.cloud.memcache.v1.Instance.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :READY, 2
      value :DELETING, 4
      value :PERFORMING_MAINTENANCE, 5
    end
    add_message "google.cloud.memcache.v1.ListInstancesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.memcache.v1.ListInstancesResponse" do
      repeated :instances, :message, 1, "google.cloud.memcache.v1.Instance"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.memcache.v1.GetInstanceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.memcache.v1.CreateInstanceRequest" do
      optional :parent, :string, 1
      optional :instance_id, :string, 2
      optional :instance, :message, 3, "google.cloud.memcache.v1.Instance"
    end
    add_message "google.cloud.memcache.v1.UpdateInstanceRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :instance, :message, 2, "google.cloud.memcache.v1.Instance"
    end
    add_message "google.cloud.memcache.v1.DeleteInstanceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.memcache.v1.ApplyParametersRequest" do
      optional :name, :string, 1
      repeated :node_ids, :string, 2
      optional :apply_all, :bool, 3
    end
    add_message "google.cloud.memcache.v1.UpdateParametersRequest" do
      optional :name, :string, 1
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :parameters, :message, 3, "google.cloud.memcache.v1.MemcacheParameters"
    end
    add_message "google.cloud.memcache.v1.MemcacheParameters" do
      optional :id, :string, 1
      map :params, :string, :string, 3
    end
    add_message "google.cloud.memcache.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_detail, :string, 5
      optional :cancel_requested, :bool, 6
      optional :api_version, :string, 7
    end
    add_enum "google.cloud.memcache.v1.MemcacheVersion" do
      value :MEMCACHE_VERSION_UNSPECIFIED, 0
      value :MEMCACHE_1_5, 1
    end
  end
end

module Google
  module Cloud
    module Memcache
      module V1
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.Instance").msgclass
        Instance::NodeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.Instance.NodeConfig").msgclass
        Instance::Node = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.Instance.Node").msgclass
        Instance::Node::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.Instance.Node.State").enummodule
        Instance::InstanceMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.Instance.InstanceMessage").msgclass
        Instance::InstanceMessage::Code = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.Instance.InstanceMessage.Code").enummodule
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.Instance.State").enummodule
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.CreateInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.DeleteInstanceRequest").msgclass
        ApplyParametersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.ApplyParametersRequest").msgclass
        UpdateParametersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.UpdateParametersRequest").msgclass
        MemcacheParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.MemcacheParameters").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.OperationMetadata").msgclass
        MemcacheVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memcache.v1.MemcacheVersion").enummodule
      end
    end
  end
end
