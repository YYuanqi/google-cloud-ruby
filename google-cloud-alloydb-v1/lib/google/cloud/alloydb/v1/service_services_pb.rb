# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/alloydb/v1/service.proto for package 'Google.Cloud.AlloyDb.V1'
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
require 'google/cloud/alloydb/v1/service_pb'

module Google
  module Cloud
    module AlloyDb
      module V1
        module AlloyDBAdmin
          # Service describing handlers for resources
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.alloydb.v1.AlloyDBAdmin'

            # Lists Clusters in a given project and location.
            rpc :ListClusters, ::Google::Cloud::AlloyDb::V1::ListClustersRequest, ::Google::Cloud::AlloyDb::V1::ListClustersResponse
            # Gets details of a single Cluster.
            rpc :GetCluster, ::Google::Cloud::AlloyDb::V1::GetClusterRequest, ::Google::Cloud::AlloyDb::V1::Cluster
            # Creates a new Cluster in a given project and location.
            rpc :CreateCluster, ::Google::Cloud::AlloyDb::V1::CreateClusterRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Cluster.
            rpc :UpdateCluster, ::Google::Cloud::AlloyDb::V1::UpdateClusterRequest, ::Google::Longrunning::Operation
            # Deletes a single Cluster.
            rpc :DeleteCluster, ::Google::Cloud::AlloyDb::V1::DeleteClusterRequest, ::Google::Longrunning::Operation
            # Creates a new Cluster in a given project and location, with a volume
            # restored from the provided source, either a backup ID or a point-in-time
            # and a source cluster.
            rpc :RestoreCluster, ::Google::Cloud::AlloyDb::V1::RestoreClusterRequest, ::Google::Longrunning::Operation
            # Lists Instances in a given project and location.
            rpc :ListInstances, ::Google::Cloud::AlloyDb::V1::ListInstancesRequest, ::Google::Cloud::AlloyDb::V1::ListInstancesResponse
            # Gets details of a single Instance.
            rpc :GetInstance, ::Google::Cloud::AlloyDb::V1::GetInstanceRequest, ::Google::Cloud::AlloyDb::V1::Instance
            # Creates a new Instance in a given project and location.
            rpc :CreateInstance, ::Google::Cloud::AlloyDb::V1::CreateInstanceRequest, ::Google::Longrunning::Operation
            # Creates new instances under the given project, location and cluster.
            # There can be only one primary instance in a cluster. If the primary
            # instance exists in the cluster as well as this request, then API will
            # throw an error.
            # The primary instance should exist before any read pool instance is
            # created. If the primary instance is a part of the request payload, then
            # the API will take care of creating instances in the correct order.
            # This method is here to support Google-internal use cases, and is not meant
            # for external customers to consume. Please do not start relying on it; its
            # behavior is subject to change without notice.
            rpc :BatchCreateInstances, ::Google::Cloud::AlloyDb::V1::BatchCreateInstancesRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Instance.
            rpc :UpdateInstance, ::Google::Cloud::AlloyDb::V1::UpdateInstanceRequest, ::Google::Longrunning::Operation
            # Deletes a single Instance.
            rpc :DeleteInstance, ::Google::Cloud::AlloyDb::V1::DeleteInstanceRequest, ::Google::Longrunning::Operation
            # Forces a Failover for a highly available instance.
            # Failover promotes the HA standby instance as the new primary.
            # Imperative only.
            rpc :FailoverInstance, ::Google::Cloud::AlloyDb::V1::FailoverInstanceRequest, ::Google::Longrunning::Operation
            # Restart an Instance in a cluster.
            # Imperative only.
            rpc :RestartInstance, ::Google::Cloud::AlloyDb::V1::RestartInstanceRequest, ::Google::Longrunning::Operation
            # Lists Backups in a given project and location.
            rpc :ListBackups, ::Google::Cloud::AlloyDb::V1::ListBackupsRequest, ::Google::Cloud::AlloyDb::V1::ListBackupsResponse
            # Gets details of a single Backup.
            rpc :GetBackup, ::Google::Cloud::AlloyDb::V1::GetBackupRequest, ::Google::Cloud::AlloyDb::V1::Backup
            # Creates a new Backup in a given project and location.
            rpc :CreateBackup, ::Google::Cloud::AlloyDb::V1::CreateBackupRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Backup.
            rpc :UpdateBackup, ::Google::Cloud::AlloyDb::V1::UpdateBackupRequest, ::Google::Longrunning::Operation
            # Deletes a single Backup.
            rpc :DeleteBackup, ::Google::Cloud::AlloyDb::V1::DeleteBackupRequest, ::Google::Longrunning::Operation
            # Lists SupportedDatabaseFlags for a given project and location.
            rpc :ListSupportedDatabaseFlags, ::Google::Cloud::AlloyDb::V1::ListSupportedDatabaseFlagsRequest, ::Google::Cloud::AlloyDb::V1::ListSupportedDatabaseFlagsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
