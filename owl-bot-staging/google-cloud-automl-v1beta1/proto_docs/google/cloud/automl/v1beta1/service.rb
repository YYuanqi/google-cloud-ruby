# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AutoML
      module V1beta1
        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#create_dataset AutoMl.CreateDataset}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project to create the dataset for.
        # @!attribute [rw] dataset
        #   @return [::Google::Cloud::AutoML::V1beta1::Dataset]
        #     Required. The dataset to create.
        class CreateDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#get_dataset AutoMl.GetDataset}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the dataset to retrieve.
        class GetDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_datasets AutoMl.ListDatasets}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project from which to list datasets.
        # @!attribute [rw] filter
        #   @return [::String]
        #     An expression for filtering the results of the request.
        #
        #       * `dataset_metadata` - for existence of the case (e.g.
        #                 `image_classification_dataset_metadata:*`). Some examples of
        #                 using the filter are:
        #
        #       * `translation_dataset_metadata:*` --> The dataset has
        #                                              `translation_dataset_metadata`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. Server may return fewer results than requested.
        #     If unspecified, server will pick a default size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results for the server to return
        #     Typically obtained via
        #     {::Google::Cloud::AutoML::V1beta1::ListDatasetsResponse#next_page_token ListDatasetsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_datasets AutoMl.ListDatasets} call.
        class ListDatasetsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_datasets AutoMl.ListDatasets}.
        # @!attribute [rw] datasets
        #   @return [::Array<::Google::Cloud::AutoML::V1beta1::Dataset>]
        #     The datasets read.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to {::Google::Cloud::AutoML::V1beta1::ListDatasetsRequest#page_token ListDatasetsRequest.page_token} to obtain that page.
        class ListDatasetsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#update_dataset AutoMl.UpdateDataset}
        # @!attribute [rw] dataset
        #   @return [::Google::Cloud::AutoML::V1beta1::Dataset]
        #     Required. The dataset which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The update mask applies to the resource.
        class UpdateDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#delete_dataset AutoMl.DeleteDataset}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the dataset to delete.
        class DeleteDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#import_data AutoMl.ImportData}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Dataset name. Dataset must already exist. All imported
        #     annotations and examples will be added.
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::AutoML::V1beta1::InputConfig]
        #     Required. The desired input location and its domain specific semantics,
        #     if any.
        class ImportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#export_data AutoMl.ExportData}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the dataset.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::AutoML::V1beta1::OutputConfig]
        #     Required. The desired output location.
        class ExportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#get_annotation_spec AutoMl.GetAnnotationSpec}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the annotation spec to retrieve.
        class GetAnnotationSpecRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#get_table_spec AutoMl.GetTableSpec}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the table spec to retrieve.
        # @!attribute [rw] field_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class GetTableSpecRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_table_specs AutoMl.ListTableSpecs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the dataset to list table specs from.
        # @!attribute [rw] field_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter expression, see go/filtering.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. The server can return fewer results than requested.
        #     If unspecified, the server will pick a default size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results for the server to return.
        #     Typically obtained from the
        #     {::Google::Cloud::AutoML::V1beta1::ListTableSpecsResponse#next_page_token ListTableSpecsResponse.next_page_token} field of the previous
        #     {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_table_specs AutoMl.ListTableSpecs} call.
        class ListTableSpecsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_table_specs AutoMl.ListTableSpecs}.
        # @!attribute [rw] table_specs
        #   @return [::Array<::Google::Cloud::AutoML::V1beta1::TableSpec>]
        #     The table specs read.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to {::Google::Cloud::AutoML::V1beta1::ListTableSpecsRequest#page_token ListTableSpecsRequest.page_token} to obtain that page.
        class ListTableSpecsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#update_table_spec AutoMl.UpdateTableSpec}
        # @!attribute [rw] table_spec
        #   @return [::Google::Cloud::AutoML::V1beta1::TableSpec]
        #     Required. The table spec which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The update mask applies to the resource.
        class UpdateTableSpecRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#get_column_spec AutoMl.GetColumnSpec}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the column spec to retrieve.
        # @!attribute [rw] field_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class GetColumnSpecRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_column_specs AutoMl.ListColumnSpecs}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the table spec to list column specs from.
        # @!attribute [rw] field_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter expression, see go/filtering.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. The server can return fewer results than requested.
        #     If unspecified, the server will pick a default size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results for the server to return.
        #     Typically obtained from the
        #     {::Google::Cloud::AutoML::V1beta1::ListColumnSpecsResponse#next_page_token ListColumnSpecsResponse.next_page_token} field of the previous
        #     {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_column_specs AutoMl.ListColumnSpecs} call.
        class ListColumnSpecsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_column_specs AutoMl.ListColumnSpecs}.
        # @!attribute [rw] column_specs
        #   @return [::Array<::Google::Cloud::AutoML::V1beta1::ColumnSpec>]
        #     The column specs read.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to {::Google::Cloud::AutoML::V1beta1::ListColumnSpecsRequest#page_token ListColumnSpecsRequest.page_token} to obtain that page.
        class ListColumnSpecsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#update_column_spec AutoMl.UpdateColumnSpec}
        # @!attribute [rw] column_spec
        #   @return [::Google::Cloud::AutoML::V1beta1::ColumnSpec]
        #     Required. The column spec which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The update mask applies to the resource.
        class UpdateColumnSpecRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#create_model AutoMl.CreateModel}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the parent project where the model is being created.
        # @!attribute [rw] model
        #   @return [::Google::Cloud::AutoML::V1beta1::Model]
        #     Required. The model to create.
        class CreateModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#get_model AutoMl.GetModel}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the model.
        class GetModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_models AutoMl.ListModels}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the project, from which to list the models.
        # @!attribute [rw] filter
        #   @return [::String]
        #     An expression for filtering the results of the request.
        #
        #       * `model_metadata` - for existence of the case (e.g.
        #                 `video_classification_model_metadata:*`).
        #       * `dataset_id` - for = or !=. Some examples of using the filter are:
        #
        #       * `image_classification_model_metadata:*` --> The model has
        #                                          `image_classification_model_metadata`.
        #       * `dataset_id=5` --> The model was created from a dataset with ID 5.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results for the server to return
        #     Typically obtained via
        #     {::Google::Cloud::AutoML::V1beta1::ListModelsResponse#next_page_token ListModelsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_models AutoMl.ListModels} call.
        class ListModelsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_models AutoMl.ListModels}.
        # @!attribute [rw] model
        #   @return [::Array<::Google::Cloud::AutoML::V1beta1::Model>]
        #     List of models in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to {::Google::Cloud::AutoML::V1beta1::ListModelsRequest#page_token ListModelsRequest.page_token} to obtain that page.
        class ListModelsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#delete_model AutoMl.DeleteModel}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the model being deleted.
        class DeleteModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#deploy_model AutoMl.DeployModel}.
        # @!attribute [rw] image_object_detection_model_deployment_metadata
        #   @return [::Google::Cloud::AutoML::V1beta1::ImageObjectDetectionModelDeploymentMetadata]
        #     Model deployment metadata specific to Image Object Detection.
        # @!attribute [rw] image_classification_model_deployment_metadata
        #   @return [::Google::Cloud::AutoML::V1beta1::ImageClassificationModelDeploymentMetadata]
        #     Model deployment metadata specific to Image Classification.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the model to deploy.
        class DeployModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#undeploy_model AutoMl.UndeployModel}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the model to undeploy.
        class UndeployModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#export_model AutoMl.ExportModel}.
        # Models need to be enabled for exporting, otherwise an error code will be
        # returned.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the model to export.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::AutoML::V1beta1::ModelExportOutputConfig]
        #     Required. The desired output location and configuration.
        class ExportModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#export_evaluated_examples AutoMl.ExportEvaluatedExamples}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the model whose evaluated examples are to
        #     be exported.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::AutoML::V1beta1::ExportEvaluatedExamplesOutputConfig]
        #     Required. The desired output location and configuration.
        class ExportEvaluatedExamplesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#get_model_evaluation AutoMl.GetModelEvaluation}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for the model evaluation.
        class GetModelEvaluationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_model_evaluations AutoMl.ListModelEvaluations}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the model to list the model evaluations for.
        #     If modelId is set as "-", this will list model evaluations from across all
        #     models of the parent location.
        # @!attribute [rw] filter
        #   @return [::String]
        #     An expression for filtering the results of the request.
        #
        #       * `annotation_spec_id` - for =, !=  or existence. See example below for
        #                              the last.
        #
        #     Some examples of using the filter are:
        #
        #       * `annotation_spec_id!=4` --> The model evaluation was done for
        #                                 annotation spec with ID different than 4.
        #       * `NOT annotation_spec_id:*` --> The model evaluation was done for
        #                                    aggregate of all annotation specs.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results for the server to return.
        #     Typically obtained via
        #     {::Google::Cloud::AutoML::V1beta1::ListModelEvaluationsResponse#next_page_token ListModelEvaluationsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_model_evaluations AutoMl.ListModelEvaluations} call.
        class ListModelEvaluationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_model_evaluations AutoMl.ListModelEvaluations}.
        # @!attribute [rw] model_evaluation
        #   @return [::Array<::Google::Cloud::AutoML::V1beta1::ModelEvaluation>]
        #     List of model evaluations in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to the {::Google::Cloud::AutoML::V1beta1::ListModelEvaluationsRequest#page_token ListModelEvaluationsRequest.page_token} field of a new
        #     {::Google::Cloud::AutoML::V1beta1::AutoMl::Client#list_model_evaluations AutoMl.ListModelEvaluations} request to obtain that page.
        class ListModelEvaluationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
