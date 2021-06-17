# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/tpu/v1/cloud_tpu.proto for package 'google.cloud.tpu.v1'
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
require 'google/cloud/tpu/v1/cloud_tpu_pb'

module Google
  module Cloud
    module Tpu
      module V1
        module Tpu
          # Manages TPU nodes and other resources
          #
          # TPU API v1
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.tpu.v1.Tpu'

            # Lists nodes.
            rpc :ListNodes, ::Google::Cloud::Tpu::V1::ListNodesRequest, ::Google::Cloud::Tpu::V1::ListNodesResponse
            # Gets the details of a node.
            rpc :GetNode, ::Google::Cloud::Tpu::V1::GetNodeRequest, ::Google::Cloud::Tpu::V1::Node
            # Creates a node.
            rpc :CreateNode, ::Google::Cloud::Tpu::V1::CreateNodeRequest, ::Google::Longrunning::Operation
            # Deletes a node.
            rpc :DeleteNode, ::Google::Cloud::Tpu::V1::DeleteNodeRequest, ::Google::Longrunning::Operation
            # Reimages a node's OS.
            rpc :ReimageNode, ::Google::Cloud::Tpu::V1::ReimageNodeRequest, ::Google::Longrunning::Operation
            # Stops a node.
            rpc :StopNode, ::Google::Cloud::Tpu::V1::StopNodeRequest, ::Google::Longrunning::Operation
            # Starts a node.
            rpc :StartNode, ::Google::Cloud::Tpu::V1::StartNodeRequest, ::Google::Longrunning::Operation
            # List TensorFlow versions supported by this API.
            rpc :ListTensorFlowVersions, ::Google::Cloud::Tpu::V1::ListTensorFlowVersionsRequest, ::Google::Cloud::Tpu::V1::ListTensorFlowVersionsResponse
            # Gets TensorFlow Version.
            rpc :GetTensorFlowVersion, ::Google::Cloud::Tpu::V1::GetTensorFlowVersionRequest, ::Google::Cloud::Tpu::V1::TensorFlowVersion
            # Lists accelerator types supported by this API.
            rpc :ListAcceleratorTypes, ::Google::Cloud::Tpu::V1::ListAcceleratorTypesRequest, ::Google::Cloud::Tpu::V1::ListAcceleratorTypesResponse
            # Gets AcceleratorType.
            rpc :GetAcceleratorType, ::Google::Cloud::Tpu::V1::GetAcceleratorTypeRequest, ::Google::Cloud::Tpu::V1::AcceleratorType
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
