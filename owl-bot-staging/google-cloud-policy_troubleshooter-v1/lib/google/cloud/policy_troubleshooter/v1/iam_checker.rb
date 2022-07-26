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

require "google/cloud/policy_troubleshooter/v1/version"

require "google/cloud/policy_troubleshooter/v1/iam_checker/credentials"
require "google/cloud/policy_troubleshooter/v1/iam_checker/client"

module Google
  module Cloud
    module PolicyTroubleshooter
      module V1
        ##
        # IAM Policy Troubleshooter service.
        #
        # This service helps you troubleshoot access issues for Google Cloud resources.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/policy_troubleshooter/v1/iam_checker"
        #     client = ::Google::Cloud::PolicyTroubleshooter::V1::IamChecker::Client.new
        #
        module IamChecker
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "iam_checker", "helpers.rb"
require "google/cloud/policy_troubleshooter/v1/iam_checker/helpers" if ::File.file? helper_path
