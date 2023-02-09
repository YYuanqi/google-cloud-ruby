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
    module Datastream
      module V1alpha1
        module Datastream
          # Path helper methods for the Datastream API.
          module Paths
            ##
            # Create a fully-qualified ConnectionProfile resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/connectionProfiles/{connection_profile}`
            #
            # @param project [String]
            # @param location [String]
            # @param connection_profile [String]
            #
            # @return [::String]
            def connection_profile_path project:, location:, connection_profile:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/connectionProfiles/#{connection_profile}"
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
            # Create a fully-qualified PrivateConnection resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/privateConnections/{private_connection}`
            #
            # @param project [String]
            # @param location [String]
            # @param private_connection [String]
            #
            # @return [::String]
            def private_connection_path project:, location:, private_connection:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/privateConnections/#{private_connection}"
            end

            ##
            # Create a fully-qualified Route resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/privateConnections/{private_connection}/routes/{route}`
            #
            # @param project [String]
            # @param location [String]
            # @param private_connection [String]
            # @param route [String]
            #
            # @return [::String]
            def route_path project:, location:, private_connection:, route:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "private_connection cannot contain /" if private_connection.to_s.include? "/"

              "projects/#{project}/locations/#{location}/privateConnections/#{private_connection}/routes/#{route}"
            end

            ##
            # Create a fully-qualified Stream resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/streams/{stream}`
            #
            # @param project [String]
            # @param location [String]
            # @param stream [String]
            #
            # @return [::String]
            def stream_path project:, location:, stream:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/streams/#{stream}"
            end

            extend self
          end
        end
      end
    end
  end
end

