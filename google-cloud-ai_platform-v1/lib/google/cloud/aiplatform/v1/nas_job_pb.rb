# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/nas_job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/custom_job_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/job_state_pb'
require 'google/cloud/aiplatform/v1/study_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/nas_job.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.NasJob" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :nas_job_spec, :message, 4, "google.cloud.aiplatform.v1.NasJobSpec"
      optional :nas_job_output, :message, 5, "google.cloud.aiplatform.v1.NasJobOutput"
      optional :state, :enum, 6, "google.cloud.aiplatform.v1.JobState"
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :start_time, :message, 8, "google.protobuf.Timestamp"
      optional :end_time, :message, 9, "google.protobuf.Timestamp"
      optional :update_time, :message, 10, "google.protobuf.Timestamp"
      optional :error, :message, 11, "google.rpc.Status"
      map :labels, :string, :string, 12
      optional :encryption_spec, :message, 13, "google.cloud.aiplatform.v1.EncryptionSpec"
      optional :enable_restricted_image_training, :bool, 14
    end
    add_message "google.cloud.aiplatform.v1.NasTrialDetail" do
      optional :name, :string, 1
      optional :parameters, :string, 2
      optional :search_trial, :message, 3, "google.cloud.aiplatform.v1.NasTrial"
      optional :train_trial, :message, 4, "google.cloud.aiplatform.v1.NasTrial"
    end
    add_message "google.cloud.aiplatform.v1.NasJobSpec" do
      optional :resume_nas_job_id, :string, 3
      optional :search_space_spec, :string, 1
      oneof :nas_algorithm_spec do
        optional :multi_trial_algorithm_spec, :message, 2, "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec"
      end
    end
    add_message "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec" do
      optional :multi_trial_algorithm, :enum, 1, "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MultiTrialAlgorithm"
      optional :metric, :message, 2, "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec"
      optional :search_trial_spec, :message, 3, "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.SearchTrialSpec"
      optional :train_trial_spec, :message, 4, "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.TrainTrialSpec"
    end
    add_message "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec" do
      optional :metric_id, :string, 1
      optional :goal, :enum, 2, "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec.GoalType"
    end
    add_enum "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec.GoalType" do
      value :GOAL_TYPE_UNSPECIFIED, 0
      value :MAXIMIZE, 1
      value :MINIMIZE, 2
    end
    add_message "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.SearchTrialSpec" do
      optional :search_trial_job_spec, :message, 1, "google.cloud.aiplatform.v1.CustomJobSpec"
      optional :max_trial_count, :int32, 2
      optional :max_parallel_trial_count, :int32, 3
      optional :max_failed_trial_count, :int32, 4
    end
    add_message "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.TrainTrialSpec" do
      optional :train_trial_job_spec, :message, 1, "google.cloud.aiplatform.v1.CustomJobSpec"
      optional :max_parallel_trial_count, :int32, 2
      optional :frequency, :int32, 3
    end
    add_enum "google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MultiTrialAlgorithm" do
      value :MULTI_TRIAL_ALGORITHM_UNSPECIFIED, 0
      value :REINFORCEMENT_LEARNING, 1
      value :GRID_SEARCH, 2
    end
    add_message "google.cloud.aiplatform.v1.NasJobOutput" do
      oneof :output do
        optional :multi_trial_job_output, :message, 1, "google.cloud.aiplatform.v1.NasJobOutput.MultiTrialJobOutput"
      end
    end
    add_message "google.cloud.aiplatform.v1.NasJobOutput.MultiTrialJobOutput" do
      repeated :search_trials, :message, 1, "google.cloud.aiplatform.v1.NasTrial"
      repeated :train_trials, :message, 2, "google.cloud.aiplatform.v1.NasTrial"
    end
    add_message "google.cloud.aiplatform.v1.NasTrial" do
      optional :id, :string, 1
      optional :state, :enum, 2, "google.cloud.aiplatform.v1.NasTrial.State"
      optional :final_measurement, :message, 3, "google.cloud.aiplatform.v1.Measurement"
      optional :start_time, :message, 4, "google.protobuf.Timestamp"
      optional :end_time, :message, 5, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.aiplatform.v1.NasTrial.State" do
      value :STATE_UNSPECIFIED, 0
      value :REQUESTED, 1
      value :ACTIVE, 2
      value :STOPPING, 3
      value :SUCCEEDED, 4
      value :INFEASIBLE, 5
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        NasJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJob").msgclass
        NasTrialDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasTrialDetail").msgclass
        NasJobSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::MetricSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::MetricSpec::GoalType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MetricSpec.GoalType").enummodule
        NasJobSpec::MultiTrialAlgorithmSpec::SearchTrialSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.SearchTrialSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::TrainTrialSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.TrainTrialSpec").msgclass
        NasJobSpec::MultiTrialAlgorithmSpec::MultiTrialAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobSpec.MultiTrialAlgorithmSpec.MultiTrialAlgorithm").enummodule
        NasJobOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobOutput").msgclass
        NasJobOutput::MultiTrialJobOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasJobOutput.MultiTrialJobOutput").msgclass
        NasTrial = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasTrial").msgclass
        NasTrial::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NasTrial.State").enummodule
      end
    end
  end
end
