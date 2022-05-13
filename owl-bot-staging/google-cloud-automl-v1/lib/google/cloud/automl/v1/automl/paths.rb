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
      module V1
        module AutoML
          # Path helper methods for the AutoMl API.
          module Paths
            ##
            # Create a fully-qualified AnnotationSpec resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/datasets/{dataset}/annotationSpecs/{annotation_spec}`
            #
            # @param project [String]
            # @param location [String]
            # @param dataset [String]
            # @param annotation_spec [String]
            #
            # @return [::String]
            def annotation_spec_path project:, location:, dataset:, annotation_spec:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "dataset cannot contain /" if dataset.to_s.include? "/"

              "projects/#{project}/locations/#{location}/datasets/#{dataset}/annotationSpecs/#{annotation_spec}"
            end

            ##
            # Create a fully-qualified Dataset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/datasets/{dataset}`
            #
            # @param project [String]
            # @param location [String]
            # @param dataset [String]
            #
            # @return [::String]
            def dataset_path project:, location:, dataset:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/datasets/#{dataset}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Model resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/models/{model}`
            #
            # @param project [String]
            # @param location [String]
            # @param model [String]
            #
            # @return [::String]
            def model_path project:, location:, model:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/models/#{model}"
            end

            ##
            # Create a fully-qualified ModelEvaluation resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/models/{model}/modelEvaluations/{model_evaluation}`
            #
            # @param project [String]
            # @param location [String]
            # @param model [String]
            # @param model_evaluation [String]
            #
            # @return [::String]
            def model_evaluation_path project:, location:, model:, model_evaluation:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "model cannot contain /" if model.to_s.include? "/"

              "projects/#{project}/locations/#{location}/models/#{model}/modelEvaluations/#{model_evaluation}"
            end

            extend self
          end
        end
      end
    end
  end
end
