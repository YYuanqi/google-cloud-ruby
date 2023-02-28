# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/execution.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/launch_stage_pb'
require 'google/api/resource_pb'
require 'google/cloud/run/v2/condition_pb'
require 'google/cloud/run/v2/task_template_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/run/v2/execution.proto", :syntax => :proto3) do
    add_message "google.cloud.run.v2.GetExecutionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.run.v2.ListExecutionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :show_deleted, :bool, 4
    end
    add_message "google.cloud.run.v2.ListExecutionsResponse" do
      repeated :executions, :message, 1, "google.cloud.run.v2.Execution"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.run.v2.DeleteExecutionRequest" do
      optional :name, :string, 1
      optional :validate_only, :bool, 2
      optional :etag, :string, 3
    end
    add_message "google.cloud.run.v2.Execution" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :generation, :int64, 3
      map :labels, :string, :string, 4
      map :annotations, :string, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :start_time, :message, 22, "google.protobuf.Timestamp"
      optional :completion_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 8, "google.protobuf.Timestamp"
      optional :delete_time, :message, 9, "google.protobuf.Timestamp"
      optional :expire_time, :message, 10, "google.protobuf.Timestamp"
      optional :launch_stage, :enum, 11, "google.api.LaunchStage"
      optional :job, :string, 12
      optional :parallelism, :int32, 13
      optional :task_count, :int32, 14
      optional :template, :message, 15, "google.cloud.run.v2.TaskTemplate"
      optional :reconciling, :bool, 16
      repeated :conditions, :message, 17, "google.cloud.run.v2.Condition"
      optional :observed_generation, :int64, 18
      optional :running_count, :int32, 19
      optional :succeeded_count, :int32, 20
      optional :failed_count, :int32, 21
      optional :cancelled_count, :int32, 24
      optional :retried_count, :int32, 25
      optional :log_uri, :string, 26
      optional :etag, :string, 99
    end
  end
end

module Google
  module Cloud
    module Run
      module V2
        GetExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GetExecutionRequest").msgclass
        ListExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListExecutionsRequest").msgclass
        ListExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListExecutionsResponse").msgclass
        DeleteExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.DeleteExecutionRequest").msgclass
        Execution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Execution").msgclass
      end
    end
  end
end
