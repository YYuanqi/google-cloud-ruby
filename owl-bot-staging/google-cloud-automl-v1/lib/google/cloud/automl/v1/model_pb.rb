# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/model.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/cloud/automl/v1/image_pb'
require 'google/cloud/automl/v1/text_pb'
require 'google/cloud/automl/v1/translation_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/model.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.Model" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :dataset_id, :string, 3
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 11, "google.protobuf.Timestamp"
      optional :deployment_state, :enum, 8, "google.cloud.automl.v1.Model.DeploymentState"
      optional :etag, :string, 10
      map :labels, :string, :string, 34
      oneof :model_metadata do
        optional :translation_model_metadata, :message, 15, "google.cloud.automl.v1.TranslationModelMetadata"
        optional :image_classification_model_metadata, :message, 13, "google.cloud.automl.v1.ImageClassificationModelMetadata"
        optional :text_classification_model_metadata, :message, 14, "google.cloud.automl.v1.TextClassificationModelMetadata"
        optional :image_object_detection_model_metadata, :message, 20, "google.cloud.automl.v1.ImageObjectDetectionModelMetadata"
        optional :text_extraction_model_metadata, :message, 19, "google.cloud.automl.v1.TextExtractionModelMetadata"
        optional :text_sentiment_model_metadata, :message, 22, "google.cloud.automl.v1.TextSentimentModelMetadata"
      end
    end
    add_enum "google.cloud.automl.v1.Model.DeploymentState" do
      value :DEPLOYMENT_STATE_UNSPECIFIED, 0
      value :DEPLOYED, 1
      value :UNDEPLOYED, 2
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        Model = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.Model").msgclass
        Model::DeploymentState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.Model.DeploymentState").enummodule
      end
    end
  end
end
