# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1/evaluation.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/documentai/v1/evaluation.proto", :syntax => :proto3) do
    add_message "google.cloud.documentai.v1.EvaluationReference" do
      optional :operation, :string, 1
      optional :evaluation, :string, 2
      optional :aggregate_metrics, :message, 4, "google.cloud.documentai.v1.Evaluation.Metrics"
      optional :aggregate_metrics_exact, :message, 5, "google.cloud.documentai.v1.Evaluation.Metrics"
    end
    add_message "google.cloud.documentai.v1.Evaluation" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :document_counters, :message, 5, "google.cloud.documentai.v1.Evaluation.Counters"
      optional :all_entities_metrics, :message, 3, "google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics"
      map :entity_metrics, :string, :message, 4, "google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics"
      optional :kms_key_name, :string, 6
      optional :kms_key_version_name, :string, 7
    end
    add_message "google.cloud.documentai.v1.Evaluation.Counters" do
      optional :input_documents_count, :int32, 1
      optional :invalid_documents_count, :int32, 2
      optional :failed_documents_count, :int32, 3
      optional :evaluated_documents_count, :int32, 4
    end
    add_message "google.cloud.documentai.v1.Evaluation.Metrics" do
      optional :precision, :float, 1
      optional :recall, :float, 2
      optional :f1_score, :float, 3
      optional :predicted_occurrences_count, :int32, 4
      optional :ground_truth_occurrences_count, :int32, 5
      optional :predicted_document_count, :int32, 10
      optional :ground_truth_document_count, :int32, 11
      optional :true_positives_count, :int32, 6
      optional :false_positives_count, :int32, 7
      optional :false_negatives_count, :int32, 8
      optional :total_documents_count, :int32, 9
    end
    add_message "google.cloud.documentai.v1.Evaluation.ConfidenceLevelMetrics" do
      optional :confidence_level, :float, 1
      optional :metrics, :message, 2, "google.cloud.documentai.v1.Evaluation.Metrics"
    end
    add_message "google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics" do
      repeated :confidence_level_metrics, :message, 1, "google.cloud.documentai.v1.Evaluation.ConfidenceLevelMetrics"
      repeated :confidence_level_metrics_exact, :message, 4, "google.cloud.documentai.v1.Evaluation.ConfidenceLevelMetrics"
      optional :auprc, :float, 2
      optional :estimated_calibration_error, :float, 3
      optional :auprc_exact, :float, 5
      optional :estimated_calibration_error_exact, :float, 6
      optional :metrics_type, :enum, 7, "google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics.MetricsType"
    end
    add_enum "google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics.MetricsType" do
      value :METRICS_TYPE_UNSPECIFIED, 0
      value :AGGREGATE, 1
    end
  end
end

module Google
  module Cloud
    module DocumentAI
      module V1
        EvaluationReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.EvaluationReference").msgclass
        Evaluation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation").msgclass
        Evaluation::Counters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.Counters").msgclass
        Evaluation::Metrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.Metrics").msgclass
        Evaluation::ConfidenceLevelMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.ConfidenceLevelMetrics").msgclass
        Evaluation::MultiConfidenceMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics").msgclass
        Evaluation::MultiConfidenceMetrics::MetricsType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.Evaluation.MultiConfidenceMetrics.MetricsType").enummodule
      end
    end
  end
end
