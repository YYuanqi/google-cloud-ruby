# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/execution.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/execution.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Execution" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :state, :enum, 6, "google.cloud.aiplatform.v1.Execution.State"
      optional :etag, :string, 9
      map :labels, :string, :string, 10
      optional :create_time, :message, 11, "google.protobuf.Timestamp"
      optional :update_time, :message, 12, "google.protobuf.Timestamp"
      optional :schema_title, :string, 13
      optional :schema_version, :string, 14
      optional :metadata, :message, 15, "google.protobuf.Struct"
      optional :description, :string, 16
    end
    add_enum "google.cloud.aiplatform.v1.Execution.State" do
      value :STATE_UNSPECIFIED, 0
      value :NEW, 1
      value :RUNNING, 2
      value :COMPLETE, 3
      value :FAILED, 4
      value :CACHED, 5
      value :CANCELLED, 6
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Execution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Execution").msgclass
        Execution::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Execution.State").enummodule
      end
    end
  end
end
