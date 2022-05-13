# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/prediction_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/automl/v1beta1/annotation_payload_pb'
require 'google/cloud/automl/v1beta1/data_items_pb'
require 'google/cloud/automl/v1beta1/io_pb'
require 'google/cloud/automl/v1beta1/operations_pb'
require 'google/longrunning/operations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1beta1/prediction_service.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1beta1.PredictRequest" do
      optional :name, :string, 1
      optional :payload, :message, 2, "google.cloud.automl.v1beta1.ExamplePayload"
      map :params, :string, :string, 3
    end
    add_message "google.cloud.automl.v1beta1.PredictResponse" do
      repeated :payload, :message, 1, "google.cloud.automl.v1beta1.AnnotationPayload"
      optional :preprocessed_input, :message, 3, "google.cloud.automl.v1beta1.ExamplePayload"
      map :metadata, :string, :string, 2
    end
    add_message "google.cloud.automl.v1beta1.BatchPredictRequest" do
      optional :name, :string, 1
      optional :input_config, :message, 3, "google.cloud.automl.v1beta1.BatchPredictInputConfig"
      optional :output_config, :message, 4, "google.cloud.automl.v1beta1.BatchPredictOutputConfig"
      map :params, :string, :string, 5
    end
    add_message "google.cloud.automl.v1beta1.BatchPredictResult" do
      map :metadata, :string, :string, 1
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        PredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.PredictRequest").msgclass
        PredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.PredictResponse").msgclass
        BatchPredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.BatchPredictRequest").msgclass
        BatchPredictResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.BatchPredictResult").msgclass
      end
    end
  end
end
