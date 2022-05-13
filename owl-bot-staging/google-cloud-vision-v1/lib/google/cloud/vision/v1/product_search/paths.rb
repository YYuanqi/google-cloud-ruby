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
    module Vision
      module V1
        module ProductSearch
          # Path helper methods for the ProductSearch API.
          module Paths
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
            # Create a fully-qualified Product resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/products/{product}`
            #
            # @param project [String]
            # @param location [String]
            # @param product [String]
            #
            # @return [::String]
            def product_path project:, location:, product:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/products/#{product}"
            end

            ##
            # Create a fully-qualified ProductSet resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/productSets/{product_set}`
            #
            # @param project [String]
            # @param location [String]
            # @param product_set [String]
            #
            # @return [::String]
            def product_set_path project:, location:, product_set:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/productSets/#{product_set}"
            end

            ##
            # Create a fully-qualified ReferenceImage resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/products/{product}/referenceImages/{reference_image}`
            #
            # @param project [String]
            # @param location [String]
            # @param product [String]
            # @param reference_image [String]
            #
            # @return [::String]
            def reference_image_path project:, location:, product:, reference_image:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "product cannot contain /" if product.to_s.include? "/"

              "projects/#{project}/locations/#{location}/products/#{product}/referenceImages/#{reference_image}"
            end

            extend self
          end
        end
      end
    end
  end
end
