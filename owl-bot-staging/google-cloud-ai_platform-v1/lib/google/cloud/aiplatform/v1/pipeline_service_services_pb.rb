# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/pipeline_service.proto for package 'Google.Cloud.AIPlatform.V1'
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
require 'google/cloud/aiplatform/v1/pipeline_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module PipelineService
          # A service for creating and managing Vertex AI's pipelines. This includes both
          # `TrainingPipeline` resources (used for AutoML and custom training) and
          # `PipelineJob` resources (used for Vertex AI Pipelines).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.PipelineService'

            # Creates a TrainingPipeline. A created TrainingPipeline right away will be
            # attempted to be run.
            rpc :CreateTrainingPipeline, ::Google::Cloud::AIPlatform::V1::CreateTrainingPipelineRequest, ::Google::Cloud::AIPlatform::V1::TrainingPipeline
            # Gets a TrainingPipeline.
            rpc :GetTrainingPipeline, ::Google::Cloud::AIPlatform::V1::GetTrainingPipelineRequest, ::Google::Cloud::AIPlatform::V1::TrainingPipeline
            # Lists TrainingPipelines in a Location.
            rpc :ListTrainingPipelines, ::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesRequest, ::Google::Cloud::AIPlatform::V1::ListTrainingPipelinesResponse
            # Deletes a TrainingPipeline.
            rpc :DeleteTrainingPipeline, ::Google::Cloud::AIPlatform::V1::DeleteTrainingPipelineRequest, ::Google::Longrunning::Operation
            # Cancels a TrainingPipeline.
            # Starts asynchronous cancellation on the TrainingPipeline. The server
            # makes a best effort to cancel the pipeline, but success is not
            # guaranteed. Clients can use [PipelineService.GetTrainingPipeline][google.cloud.aiplatform.v1.PipelineService.GetTrainingPipeline] or
            # other methods to check whether the cancellation succeeded or whether the
            # pipeline completed despite cancellation. On successful cancellation,
            # the TrainingPipeline is not deleted; instead it becomes a pipeline with
            # a [TrainingPipeline.error][google.cloud.aiplatform.v1.TrainingPipeline.error] value with a [google.rpc.Status.code][google.rpc.Status.code] of 1,
            # corresponding to `Code.CANCELLED`, and [TrainingPipeline.state][google.cloud.aiplatform.v1.TrainingPipeline.state] is set to
            # `CANCELLED`.
            rpc :CancelTrainingPipeline, ::Google::Cloud::AIPlatform::V1::CancelTrainingPipelineRequest, ::Google::Protobuf::Empty
            # Creates a PipelineJob. A PipelineJob will run immediately when created.
            rpc :CreatePipelineJob, ::Google::Cloud::AIPlatform::V1::CreatePipelineJobRequest, ::Google::Cloud::AIPlatform::V1::PipelineJob
            # Gets a PipelineJob.
            rpc :GetPipelineJob, ::Google::Cloud::AIPlatform::V1::GetPipelineJobRequest, ::Google::Cloud::AIPlatform::V1::PipelineJob
            # Lists PipelineJobs in a Location.
            rpc :ListPipelineJobs, ::Google::Cloud::AIPlatform::V1::ListPipelineJobsRequest, ::Google::Cloud::AIPlatform::V1::ListPipelineJobsResponse
            # Deletes a PipelineJob.
            rpc :DeletePipelineJob, ::Google::Cloud::AIPlatform::V1::DeletePipelineJobRequest, ::Google::Longrunning::Operation
            # Cancels a PipelineJob.
            # Starts asynchronous cancellation on the PipelineJob. The server
            # makes a best effort to cancel the pipeline, but success is not
            # guaranteed. Clients can use [PipelineService.GetPipelineJob][google.cloud.aiplatform.v1.PipelineService.GetPipelineJob] or
            # other methods to check whether the cancellation succeeded or whether the
            # pipeline completed despite cancellation. On successful cancellation,
            # the PipelineJob is not deleted; instead it becomes a pipeline with
            # a [PipelineJob.error][google.cloud.aiplatform.v1.PipelineJob.error] value with a [google.rpc.Status.code][google.rpc.Status.code] of 1,
            # corresponding to `Code.CANCELLED`, and [PipelineJob.state][google.cloud.aiplatform.v1.PipelineJob.state] is set to
            # `CANCELLED`.
            rpc :CancelPipelineJob, ::Google::Cloud::AIPlatform::V1::CancelPipelineJobRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
