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
    module Bigquery
      module Reservation
        module V1
          module ReservationService
            # Path helper methods for the ReservationService API.
            module Paths
              ##
              # Create a fully-qualified Assignment resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/reservations/{reservation}/assignments/{assignment}`
              #
              # @param project [String]
              # @param location [String]
              # @param reservation [String]
              # @param assignment [String]
              #
              # @return [::String]
              def assignment_path project:, location:, reservation:, assignment:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "reservation cannot contain /" if reservation.to_s.include? "/"

                "projects/#{project}/locations/#{location}/reservations/#{reservation}/assignments/#{assignment}"
              end

              ##
              # Create a fully-qualified BiReservation resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/biReservation`
              #
              # @param project [String]
              # @param location [String]
              #
              # @return [::String]
              def bi_reservation_path project:, location:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                "projects/#{project}/locations/#{location}/biReservation"
              end

              ##
              # Create a fully-qualified CapacityCommitment resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/capacityCommitments/{capacity_commitment}`
              #
              # @param project [String]
              # @param location [String]
              # @param capacity_commitment [String]
              #
              # @return [::String]
              def capacity_commitment_path project:, location:, capacity_commitment:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/capacityCommitments/#{capacity_commitment}"
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
              # Create a fully-qualified Reservation resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/reservations/{reservation}`
              #
              # @param project [String]
              # @param location [String]
              # @param reservation [String]
              #
              # @return [::String]
              def reservation_path project:, location:, reservation:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/reservations/#{reservation}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
