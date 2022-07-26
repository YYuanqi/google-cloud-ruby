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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/data_fusion/v1/version"

require "google/cloud/data_fusion/v1/data_fusion/credentials"
require "google/cloud/data_fusion/v1/data_fusion/paths"
require "google/cloud/data_fusion/v1/data_fusion/operations"
require "google/cloud/data_fusion/v1/data_fusion/client"

module Google
  module Cloud
    module DataFusion
      module V1
        ##
        # Service for creating and managing Data Fusion instances.
        # Data Fusion enables ETL developers to build code-free, data integration
        # pipelines via a point-and-click UI.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/data_fusion/v1/data_fusion"
        #     client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new
        #
        module DataFusion
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "data_fusion", "helpers.rb"
require "google/cloud/data_fusion/v1/data_fusion/helpers" if ::File.file? helper_path
