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
    module DataLabeling
      module V1beta1
        module DataLabelingService
          # Path helper methods for the DataLabelingService API.
          module Paths
            ##
            # Create a fully-qualified AnnotatedDataset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/datasets/{dataset}/annotatedDatasets/{annotated_dataset}`
            #
            # @param project [String]
            # @param dataset [String]
            # @param annotated_dataset [String]
            #
            # @return [::String]
            def annotated_dataset_path project:, dataset:, annotated_dataset:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "dataset cannot contain /" if dataset.to_s.include? "/"

              "projects/#{project}/datasets/#{dataset}/annotatedDatasets/#{annotated_dataset}"
            end

            ##
            # Create a fully-qualified AnnotationSpecSet resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/annotationSpecSets/{annotation_spec_set}`
            #
            # @param project [String]
            # @param annotation_spec_set [String]
            #
            # @return [::String]
            def annotation_spec_set_path project:, annotation_spec_set:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/annotationSpecSets/#{annotation_spec_set}"
            end

            ##
            # Create a fully-qualified DataItem resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/datasets/{dataset}/dataItems/{data_item}`
            #
            # @param project [String]
            # @param dataset [String]
            # @param data_item [String]
            #
            # @return [::String]
            def data_item_path project:, dataset:, data_item:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "dataset cannot contain /" if dataset.to_s.include? "/"

              "projects/#{project}/datasets/#{dataset}/dataItems/#{data_item}"
            end

            ##
            # Create a fully-qualified Dataset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/datasets/{dataset}`
            #
            # @param project [String]
            # @param dataset [String]
            #
            # @return [::String]
            def dataset_path project:, dataset:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/datasets/#{dataset}"
            end

            ##
            # Create a fully-qualified Evaluation resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/datasets/{dataset}/evaluations/{evaluation}`
            #
            # @param project [String]
            # @param dataset [String]
            # @param evaluation [String]
            #
            # @return [::String]
            def evaluation_path project:, dataset:, evaluation:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "dataset cannot contain /" if dataset.to_s.include? "/"

              "projects/#{project}/datasets/#{dataset}/evaluations/#{evaluation}"
            end

            ##
            # Create a fully-qualified EvaluationJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/evaluationJobs/{evaluation_job}`
            #
            # @param project [String]
            # @param evaluation_job [String]
            #
            # @return [::String]
            def evaluation_job_path project:, evaluation_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/evaluationJobs/#{evaluation_job}"
            end

            ##
            # Create a fully-qualified Example resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/datasets/{dataset}/annotatedDatasets/{annotated_dataset}/examples/{example}`
            #
            # @param project [String]
            # @param dataset [String]
            # @param annotated_dataset [String]
            # @param example [String]
            #
            # @return [::String]
            def example_path project:, dataset:, annotated_dataset:, example:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "dataset cannot contain /" if dataset.to_s.include? "/"
              raise ::ArgumentError, "annotated_dataset cannot contain /" if annotated_dataset.to_s.include? "/"

              "projects/#{project}/datasets/#{dataset}/annotatedDatasets/#{annotated_dataset}/examples/#{example}"
            end

            ##
            # Create a fully-qualified Instruction resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/instructions/{instruction}`
            #
            # @param project [String]
            # @param instruction [String]
            #
            # @return [::String]
            def instruction_path project:, instruction:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/instructions/#{instruction}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            extend self
          end
        end
      end
    end
  end
end
