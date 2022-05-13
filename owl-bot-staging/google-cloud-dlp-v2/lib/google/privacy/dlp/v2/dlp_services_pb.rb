# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/privacy/dlp/v2/dlp.proto for package 'Google.Cloud.Dlp.V2'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/privacy/dlp/v2/dlp_pb'

module Google
  module Cloud
    module Dlp
      module V2
        module DlpService
          # The Cloud Data Loss Prevention (DLP) API is a service that allows clients
          # to detect the presence of Personally Identifiable Information (PII) and other
          # privacy-sensitive data in user-supplied, unstructured data streams, like text
          # blocks or images.
          # The service also includes methods for sensitive data redaction and
          # scheduling of data scans on Google Cloud Platform based data sets.
          #
          # To learn more about concepts and find how-to guides see
          # https://cloud.google.com/dlp/docs/.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.privacy.dlp.v2.DlpService'

            # Finds potentially sensitive info in content.
            # This method has limits on input size, processing time, and output size.
            #
            # When no InfoTypes or CustomInfoTypes are specified in this request, the
            # system will automatically choose what detectors to run. By default this may
            # be all types, but may change over time as detectors are updated.
            #
            # For how to guides, see https://cloud.google.com/dlp/docs/inspecting-images
            # and https://cloud.google.com/dlp/docs/inspecting-text,
            rpc :InspectContent, ::Google::Cloud::Dlp::V2::InspectContentRequest, ::Google::Cloud::Dlp::V2::InspectContentResponse
            # Redacts potentially sensitive info from an image.
            # This method has limits on input size, processing time, and output size.
            # See https://cloud.google.com/dlp/docs/redacting-sensitive-data-images to
            # learn more.
            #
            # When no InfoTypes or CustomInfoTypes are specified in this request, the
            # system will automatically choose what detectors to run. By default this may
            # be all types, but may change over time as detectors are updated.
            rpc :RedactImage, ::Google::Cloud::Dlp::V2::RedactImageRequest, ::Google::Cloud::Dlp::V2::RedactImageResponse
            # De-identifies potentially sensitive info from a ContentItem.
            # This method has limits on input size and output size.
            # See https://cloud.google.com/dlp/docs/deidentify-sensitive-data to
            # learn more.
            #
            # When no InfoTypes or CustomInfoTypes are specified in this request, the
            # system will automatically choose what detectors to run. By default this may
            # be all types, but may change over time as detectors are updated.
            rpc :DeidentifyContent, ::Google::Cloud::Dlp::V2::DeidentifyContentRequest, ::Google::Cloud::Dlp::V2::DeidentifyContentResponse
            # Re-identifies content that has been de-identified.
            # See
            # https://cloud.google.com/dlp/docs/pseudonymization#re-identification_in_free_text_code_example
            # to learn more.
            rpc :ReidentifyContent, ::Google::Cloud::Dlp::V2::ReidentifyContentRequest, ::Google::Cloud::Dlp::V2::ReidentifyContentResponse
            # Returns a list of the sensitive information types that the DLP API
            # supports. See https://cloud.google.com/dlp/docs/infotypes-reference to
            # learn more.
            rpc :ListInfoTypes, ::Google::Cloud::Dlp::V2::ListInfoTypesRequest, ::Google::Cloud::Dlp::V2::ListInfoTypesResponse
            # Creates an InspectTemplate for re-using frequently used configuration
            # for inspecting content, images, and storage.
            # See https://cloud.google.com/dlp/docs/creating-templates to learn more.
            rpc :CreateInspectTemplate, ::Google::Cloud::Dlp::V2::CreateInspectTemplateRequest, ::Google::Cloud::Dlp::V2::InspectTemplate
            # Updates the InspectTemplate.
            # See https://cloud.google.com/dlp/docs/creating-templates to learn more.
            rpc :UpdateInspectTemplate, ::Google::Cloud::Dlp::V2::UpdateInspectTemplateRequest, ::Google::Cloud::Dlp::V2::InspectTemplate
            # Gets an InspectTemplate.
            # See https://cloud.google.com/dlp/docs/creating-templates to learn more.
            rpc :GetInspectTemplate, ::Google::Cloud::Dlp::V2::GetInspectTemplateRequest, ::Google::Cloud::Dlp::V2::InspectTemplate
            # Lists InspectTemplates.
            # See https://cloud.google.com/dlp/docs/creating-templates to learn more.
            rpc :ListInspectTemplates, ::Google::Cloud::Dlp::V2::ListInspectTemplatesRequest, ::Google::Cloud::Dlp::V2::ListInspectTemplatesResponse
            # Deletes an InspectTemplate.
            # See https://cloud.google.com/dlp/docs/creating-templates to learn more.
            rpc :DeleteInspectTemplate, ::Google::Cloud::Dlp::V2::DeleteInspectTemplateRequest, ::Google::Protobuf::Empty
            # Creates a DeidentifyTemplate for re-using frequently used configuration
            # for de-identifying content, images, and storage.
            # See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
            # more.
            rpc :CreateDeidentifyTemplate, ::Google::Cloud::Dlp::V2::CreateDeidentifyTemplateRequest, ::Google::Cloud::Dlp::V2::DeidentifyTemplate
            # Updates the DeidentifyTemplate.
            # See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
            # more.
            rpc :UpdateDeidentifyTemplate, ::Google::Cloud::Dlp::V2::UpdateDeidentifyTemplateRequest, ::Google::Cloud::Dlp::V2::DeidentifyTemplate
            # Gets a DeidentifyTemplate.
            # See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
            # more.
            rpc :GetDeidentifyTemplate, ::Google::Cloud::Dlp::V2::GetDeidentifyTemplateRequest, ::Google::Cloud::Dlp::V2::DeidentifyTemplate
            # Lists DeidentifyTemplates.
            # See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
            # more.
            rpc :ListDeidentifyTemplates, ::Google::Cloud::Dlp::V2::ListDeidentifyTemplatesRequest, ::Google::Cloud::Dlp::V2::ListDeidentifyTemplatesResponse
            # Deletes a DeidentifyTemplate.
            # See https://cloud.google.com/dlp/docs/creating-templates-deid to learn
            # more.
            rpc :DeleteDeidentifyTemplate, ::Google::Cloud::Dlp::V2::DeleteDeidentifyTemplateRequest, ::Google::Protobuf::Empty
            # Creates a job trigger to run DLP actions such as scanning storage for
            # sensitive information on a set schedule.
            # See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
            rpc :CreateJobTrigger, ::Google::Cloud::Dlp::V2::CreateJobTriggerRequest, ::Google::Cloud::Dlp::V2::JobTrigger
            # Updates a job trigger.
            # See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
            rpc :UpdateJobTrigger, ::Google::Cloud::Dlp::V2::UpdateJobTriggerRequest, ::Google::Cloud::Dlp::V2::JobTrigger
            # Inspect hybrid content and store findings to a trigger. The inspection
            # will be processed asynchronously. To review the findings monitor the
            # jobs within the trigger.
            rpc :HybridInspectJobTrigger, ::Google::Cloud::Dlp::V2::HybridInspectJobTriggerRequest, ::Google::Cloud::Dlp::V2::HybridInspectResponse
            # Gets a job trigger.
            # See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
            rpc :GetJobTrigger, ::Google::Cloud::Dlp::V2::GetJobTriggerRequest, ::Google::Cloud::Dlp::V2::JobTrigger
            # Lists job triggers.
            # See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
            rpc :ListJobTriggers, ::Google::Cloud::Dlp::V2::ListJobTriggersRequest, ::Google::Cloud::Dlp::V2::ListJobTriggersResponse
            # Deletes a job trigger.
            # See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
            rpc :DeleteJobTrigger, ::Google::Cloud::Dlp::V2::DeleteJobTriggerRequest, ::Google::Protobuf::Empty
            # Activate a job trigger. Causes the immediate execute of a trigger
            # instead of waiting on the trigger event to occur.
            rpc :ActivateJobTrigger, ::Google::Cloud::Dlp::V2::ActivateJobTriggerRequest, ::Google::Cloud::Dlp::V2::DlpJob
            # Creates a new job to inspect storage or calculate risk metrics.
            # See https://cloud.google.com/dlp/docs/inspecting-storage and
            # https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
            #
            # When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the
            # system will automatically choose what detectors to run. By default this may
            # be all types, but may change over time as detectors are updated.
            rpc :CreateDlpJob, ::Google::Cloud::Dlp::V2::CreateDlpJobRequest, ::Google::Cloud::Dlp::V2::DlpJob
            # Lists DlpJobs that match the specified filter in the request.
            # See https://cloud.google.com/dlp/docs/inspecting-storage and
            # https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
            rpc :ListDlpJobs, ::Google::Cloud::Dlp::V2::ListDlpJobsRequest, ::Google::Cloud::Dlp::V2::ListDlpJobsResponse
            # Gets the latest state of a long-running DlpJob.
            # See https://cloud.google.com/dlp/docs/inspecting-storage and
            # https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
            rpc :GetDlpJob, ::Google::Cloud::Dlp::V2::GetDlpJobRequest, ::Google::Cloud::Dlp::V2::DlpJob
            # Deletes a long-running DlpJob. This method indicates that the client is
            # no longer interested in the DlpJob result. The job will be cancelled if
            # possible.
            # See https://cloud.google.com/dlp/docs/inspecting-storage and
            # https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
            rpc :DeleteDlpJob, ::Google::Cloud::Dlp::V2::DeleteDlpJobRequest, ::Google::Protobuf::Empty
            # Starts asynchronous cancellation on a long-running DlpJob. The server
            # makes a best effort to cancel the DlpJob, but success is not
            # guaranteed.
            # See https://cloud.google.com/dlp/docs/inspecting-storage and
            # https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.
            rpc :CancelDlpJob, ::Google::Cloud::Dlp::V2::CancelDlpJobRequest, ::Google::Protobuf::Empty
            # Creates a pre-built stored infoType to be used for inspection.
            # See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
            # learn more.
            rpc :CreateStoredInfoType, ::Google::Cloud::Dlp::V2::CreateStoredInfoTypeRequest, ::Google::Cloud::Dlp::V2::StoredInfoType
            # Updates the stored infoType by creating a new version. The existing version
            # will continue to be used until the new version is ready.
            # See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
            # learn more.
            rpc :UpdateStoredInfoType, ::Google::Cloud::Dlp::V2::UpdateStoredInfoTypeRequest, ::Google::Cloud::Dlp::V2::StoredInfoType
            # Gets a stored infoType.
            # See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
            # learn more.
            rpc :GetStoredInfoType, ::Google::Cloud::Dlp::V2::GetStoredInfoTypeRequest, ::Google::Cloud::Dlp::V2::StoredInfoType
            # Lists stored infoTypes.
            # See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
            # learn more.
            rpc :ListStoredInfoTypes, ::Google::Cloud::Dlp::V2::ListStoredInfoTypesRequest, ::Google::Cloud::Dlp::V2::ListStoredInfoTypesResponse
            # Deletes a stored infoType.
            # See https://cloud.google.com/dlp/docs/creating-stored-infotypes to
            # learn more.
            rpc :DeleteStoredInfoType, ::Google::Cloud::Dlp::V2::DeleteStoredInfoTypeRequest, ::Google::Protobuf::Empty
            # Inspect hybrid content and store findings to a job.
            # To review the findings, inspect the job. Inspection will occur
            # asynchronously.
            rpc :HybridInspectDlpJob, ::Google::Cloud::Dlp::V2::HybridInspectDlpJobRequest, ::Google::Cloud::Dlp::V2::HybridInspectResponse
            # Finish a running hybrid DlpJob. Triggers the finalization steps and running
            # of any enabled actions that have not yet run.
            rpc :FinishDlpJob, ::Google::Cloud::Dlp::V2::FinishDlpJobRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
