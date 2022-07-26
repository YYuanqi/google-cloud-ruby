# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/kms/v1/ekm_service.proto for package 'google.cloud.kms.v1'
# Original file comments:
# Copyright 2021 Google LLC
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
require 'google/cloud/kms/v1/ekm_service_pb'

module Google
  module Cloud
    module Kms
      module V1
        module EkmService
          # Google Cloud Key Management EKM Service
          #
          # Manages external cryptographic keys and operations using those keys.
          # Implements a REST model with the following objects:
          # * [EkmConnection][google.cloud.kms.v1.EkmConnection]
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.kms.v1.EkmService'

            # Lists [EkmConnections][google.cloud.kms.v1.EkmConnection].
            rpc :ListEkmConnections, ::Google::Cloud::Kms::V1::ListEkmConnectionsRequest, ::Google::Cloud::Kms::V1::ListEkmConnectionsResponse
            # Returns metadata for a given
            # [EkmConnection][google.cloud.kms.v1.EkmConnection].
            rpc :GetEkmConnection, ::Google::Cloud::Kms::V1::GetEkmConnectionRequest, ::Google::Cloud::Kms::V1::EkmConnection
            # Creates a new [EkmConnection][google.cloud.kms.v1.EkmConnection] in a given
            # Project and Location.
            rpc :CreateEkmConnection, ::Google::Cloud::Kms::V1::CreateEkmConnectionRequest, ::Google::Cloud::Kms::V1::EkmConnection
            # Updates an [EkmConnection][google.cloud.kms.v1.EkmConnection]'s metadata.
            rpc :UpdateEkmConnection, ::Google::Cloud::Kms::V1::UpdateEkmConnectionRequest, ::Google::Cloud::Kms::V1::EkmConnection
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
