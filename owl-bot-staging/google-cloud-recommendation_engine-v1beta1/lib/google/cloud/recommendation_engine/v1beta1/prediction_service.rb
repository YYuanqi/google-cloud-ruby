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

require "google/cloud/recommendation_engine/v1beta1/version"

require "google/cloud/recommendation_engine/v1beta1/prediction_service/credentials"
require "google/cloud/recommendation_engine/v1beta1/prediction_service/paths"
require "google/cloud/recommendation_engine/v1beta1/prediction_service/client"

module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        ##
        # Service for making recommendation prediction.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/recommendation_engine/v1beta1/prediction_service"
        #     client = ::Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client.new
        #
        module PredictionService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "prediction_service", "helpers.rb"
require "google/cloud/recommendation_engine/v1beta1/prediction_service/helpers" if ::File.file? helper_path
