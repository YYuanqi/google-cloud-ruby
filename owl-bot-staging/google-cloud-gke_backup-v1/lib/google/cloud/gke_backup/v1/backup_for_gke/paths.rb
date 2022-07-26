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
    module GkeBackup
      module V1
        module BackupForGKE
          # Path helper methods for the BackupForGKE API.
          module Paths
            ##
            # Create a fully-qualified Backup resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/backupPlans/{backup_plan}/backups/{backup}`
            #
            # @param project [String]
            # @param location [String]
            # @param backup_plan [String]
            # @param backup [String]
            #
            # @return [::String]
            def backup_path project:, location:, backup_plan:, backup:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "backup_plan cannot contain /" if backup_plan.to_s.include? "/"

              "projects/#{project}/locations/#{location}/backupPlans/#{backup_plan}/backups/#{backup}"
            end

            ##
            # Create a fully-qualified BackupPlan resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/backupPlans/{backup_plan}`
            #
            # @param project [String]
            # @param location [String]
            # @param backup_plan [String]
            #
            # @return [::String]
            def backup_plan_path project:, location:, backup_plan:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/backupPlans/#{backup_plan}"
            end

            ##
            # Create a fully-qualified Cluster resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/clusters/{cluster}`
            #
            # @param project [String]
            # @param location [String]
            # @param cluster [String]
            #
            # @return [::String]
            def cluster_path project:, location:, cluster:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/clusters/#{cluster}"
            end

            ##
            # Create a fully-qualified CryptoKey resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`
            #
            # @param project [String]
            # @param location [String]
            # @param key_ring [String]
            # @param crypto_key [String]
            #
            # @return [::String]
            def crypto_key_path project:, location:, key_ring:, crypto_key:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"

              "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/cryptoKeys/#{crypto_key}"
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
            # Create a fully-qualified Restore resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/restorePlans/{restore_plan}/restores/{restore}`
            #
            # @param project [String]
            # @param location [String]
            # @param restore_plan [String]
            # @param restore [String]
            #
            # @return [::String]
            def restore_path project:, location:, restore_plan:, restore:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "restore_plan cannot contain /" if restore_plan.to_s.include? "/"

              "projects/#{project}/locations/#{location}/restorePlans/#{restore_plan}/restores/#{restore}"
            end

            ##
            # Create a fully-qualified RestorePlan resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/restorePlans/{restore_plan}`
            #
            # @param project [String]
            # @param location [String]
            # @param restore_plan [String]
            #
            # @return [::String]
            def restore_plan_path project:, location:, restore_plan:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/restorePlans/#{restore_plan}"
            end

            ##
            # Create a fully-qualified VolumeBackup resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/backupPlans/{backup_plan}/backups/{backup}/volumeBackups/{volume_backup}`
            #
            # @param project [String]
            # @param location [String]
            # @param backup_plan [String]
            # @param backup [String]
            # @param volume_backup [String]
            #
            # @return [::String]
            def volume_backup_path project:, location:, backup_plan:, backup:, volume_backup:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "backup_plan cannot contain /" if backup_plan.to_s.include? "/"
              raise ::ArgumentError, "backup cannot contain /" if backup.to_s.include? "/"

              "projects/#{project}/locations/#{location}/backupPlans/#{backup_plan}/backups/#{backup}/volumeBackups/#{volume_backup}"
            end

            ##
            # Create a fully-qualified VolumeRestore resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/restorePlans/{restore_plan}/restores/{restore}/volumeRestores/{volume_restore}`
            #
            # @param project [String]
            # @param location [String]
            # @param restore_plan [String]
            # @param restore [String]
            # @param volume_restore [String]
            #
            # @return [::String]
            def volume_restore_path project:, location:, restore_plan:, restore:, volume_restore:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "restore_plan cannot contain /" if restore_plan.to_s.include? "/"
              raise ::ArgumentError, "restore cannot contain /" if restore.to_s.include? "/"

              "projects/#{project}/locations/#{location}/restorePlans/#{restore_plan}/restores/#{restore}/volumeRestores/#{volume_restore}"
            end

            extend self
          end
        end
      end
    end
  end
end
