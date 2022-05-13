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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/automl/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :automl do |config|
  config.add_field! :endpoint,      "automl.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module AutoML
      ##
      # Create a new client object for PredictionService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AutoML::V1::PredictionService::Client](https://googleapis.dev/ruby/google-cloud-automl-v1/latest/Google/Cloud/AutoML/V1/PredictionService/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the PredictionService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PredictionService
      #
      # AutoML Prediction API.
      #
      # On any input that is documented to expect a string parameter in
      # snake_case or dash-case, either of those cases is accepted.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [PredictionService::Client] A client object for the specified version.
      #
      def self.prediction_service version: :v1, &block
        require "google/cloud/automl/#{version.to_s.downcase}"

        package_name = Google::Cloud::AutoML
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AutoML.const_get package_name
        package_module.const_get(:PredictionService).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for AutoML.
      #
      # By default, this returns an instance of
      # [Google::Cloud::AutoML::V1::AutoML::Client](https://googleapis.dev/ruby/google-cloud-automl-v1/latest/Google/Cloud/AutoML/V1/AutoML/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the AutoML service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AutoML
      #
      # AutoML Server API.
      #
      # The resource names are assigned by the server.
      # The server never reuses names that it has created after the resources with
      # those names are deleted.
      #
      # An ID of a resource is the last element of the item's resource name. For
      # `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`, then
      # the id for the item is `{dataset_id}`.
      #
      # Currently the only supported `location_id` is "us-central1".
      #
      # On any input that is documented to expect a string parameter in
      # snake_case or dash-case, either of those cases is accepted.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [AutoML::Client] A client object for the specified version.
      #
      def self.auto_ml version: :v1, &block
        require "google/cloud/automl/#{version.to_s.downcase}"

        package_name = Google::Cloud::AutoML
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::AutoML.const_get package_name
        package_module.const_get(:AutoML).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-automl library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional gRPC headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.automl if block_given?

        ::Google::Cloud.configure.automl
      end
    end
  end
end

helper_path = ::File.join __dir__, "automl", "helpers.rb"
require "google/cloud/automl/helpers" if ::File.file? helper_path
