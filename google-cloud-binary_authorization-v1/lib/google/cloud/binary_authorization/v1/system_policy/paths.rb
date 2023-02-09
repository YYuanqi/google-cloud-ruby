# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module BinaryAuthorization
      module V1
        module SystemPolicy
          # Path helper methods for the SystemPolicy API.
          module Paths
            ##
            # Create a fully-qualified Policy resource string.
            #
            # @overload policy_path(project:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/policy`
            #
            #   @param project [String]
            #
            # @overload policy_path(location:)
            #   The resource will be in the following format:
            #
            #   `locations/{location}/policy`
            #
            #   @param location [String]
            #
            # @return [::String]
            def policy_path **args
              resources = {
                "project" => (proc do |project:|
                  "projects/#{project}/policy"
                end),
                "location" => (proc do |location:|
                  "locations/#{location}/policy"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            extend self
          end
        end
      end
    end
  end
end

