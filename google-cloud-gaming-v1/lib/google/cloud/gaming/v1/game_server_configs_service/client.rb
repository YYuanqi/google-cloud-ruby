# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/errors"
require "google/cloud/gaming/v1/game_server_configs_service_pb"

module Google
  module Cloud
    module Gaming
      module V1
        module GameServerConfigsService
          ##
          # Client for the GameServerConfigsService service.
          #
          # The game server config configures the game servers in an Agones fleet.
          #
          class Client
            include Paths

            # @private
            attr_reader :game_server_configs_service_stub

            ##
            # Configure the GameServerConfigsService Client class.
            #
            # See {::Google::Cloud::Gaming::V1::GameServerConfigsService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all GameServerConfigsService clients
            #   ::Google::Cloud::Gaming::V1::GameServerConfigsService::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Gaming", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.list_game_server_configs.timeout = 60.0
                default_config.rpcs.list_game_server_configs.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.get_game_server_config.timeout = 60.0
                default_config.rpcs.get_game_server_config.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.create_game_server_config.timeout = 60.0

                default_config.rpcs.delete_game_server_config.timeout = 60.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the GameServerConfigsService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Gaming::V1::GameServerConfigsService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new GameServerConfigsService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the GameServerConfigsService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/gaming/v1/game_server_configs_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @game_server_configs_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Gaming::V1::GameServerConfigsService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::Gaming::V1::GameServerConfigsService::Operations]
            #
            attr_reader :operations_client

            # Service calls

            ##
            # Lists game server configs in a given project, location, and game server
            # deployment.
            #
            # @overload list_game_server_configs(request, options = nil)
            #   Pass arguments to `list_game_server_configs` via a request object, either of type
            #   {::Google::Cloud::Gaming::V1::ListGameServerConfigsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Gaming::V1::ListGameServerConfigsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_game_server_configs(parent: nil, page_size: nil, page_token: nil, filter: nil, order_by: nil)
            #   Pass arguments to `list_game_server_configs` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The parent resource name, in the following form:
            #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/configs/*`.
            #   @param page_size [::Integer]
            #     Optional. The maximum number of items to return.  If unspecified, server
            #     will pick an appropriate default. Server may return fewer items than
            #     requested. A caller should only rely on response's
            #     {::Google::Cloud::Gaming::V1::ListGameServerConfigsResponse#next_page_token next_page_token} to
            #     determine if there are more GameServerConfigs left to be queried.
            #   @param page_token [::String]
            #     Optional. The next_page_token value returned from a previous list request, if any.
            #   @param filter [::String]
            #     Optional. The filter to apply to list results.
            #   @param order_by [::String]
            #     Optional. Specifies the ordering of results following syntax at
            #     https://cloud.google.com/apis/design/design_patterns#sorting_order.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Gaming::V1::GameServerConfig>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Gaming::V1::GameServerConfig>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/gaming/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Gaming::V1::ListGameServerConfigsRequest.new
            #
            #   # Call the list_game_server_configs method.
            #   result = client.list_game_server_configs request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::Gaming::V1::GameServerConfig.
            #     p item
            #   end
            #
            def list_game_server_configs request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Gaming::V1::ListGameServerConfigsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_game_server_configs.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Gaming::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_game_server_configs.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_game_server_configs.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @game_server_configs_service_stub.call_rpc :list_game_server_configs, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @game_server_configs_service_stub, :list_game_server_configs, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets details of a single game server config.
            #
            # @overload get_game_server_config(request, options = nil)
            #   Pass arguments to `get_game_server_config` via a request object, either of type
            #   {::Google::Cloud::Gaming::V1::GetGameServerConfigRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Gaming::V1::GetGameServerConfigRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_game_server_config(name: nil)
            #   Pass arguments to `get_game_server_config` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the game server config to retrieve, in the following form:
            #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/configs/{config}`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Gaming::V1::GameServerConfig]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Gaming::V1::GameServerConfig]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/gaming/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Gaming::V1::GetGameServerConfigRequest.new
            #
            #   # Call the get_game_server_config method.
            #   result = client.get_game_server_config request
            #
            #   # The returned object is of type Google::Cloud::Gaming::V1::GameServerConfig.
            #   p result
            #
            def get_game_server_config request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Gaming::V1::GetGameServerConfigRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_game_server_config.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Gaming::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_game_server_config.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_game_server_config.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @game_server_configs_service_stub.call_rpc :get_game_server_config, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Creates a new game server config in a given project, location, and game
            # server deployment. Game server configs are immutable, and are not applied
            # until referenced in the game server deployment rollout resource.
            #
            # @overload create_game_server_config(request, options = nil)
            #   Pass arguments to `create_game_server_config` via a request object, either of type
            #   {::Google::Cloud::Gaming::V1::CreateGameServerConfigRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Gaming::V1::CreateGameServerConfigRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_game_server_config(parent: nil, config_id: nil, game_server_config: nil)
            #   Pass arguments to `create_game_server_config` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The parent resource name, in the following form:
            #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/`.
            #   @param config_id [::String]
            #     Required. The ID of the game server config resource to be created.
            #   @param game_server_config [::Google::Cloud::Gaming::V1::GameServerConfig, ::Hash]
            #     Required. The game server config resource to be created.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/gaming/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Gaming::V1::CreateGameServerConfigRequest.new
            #
            #   # Call the create_game_server_config method.
            #   result = client.create_game_server_config request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def create_game_server_config request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Gaming::V1::CreateGameServerConfigRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_game_server_config.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Gaming::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_game_server_config.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_game_server_config.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @game_server_configs_service_stub.call_rpc :create_game_server_config, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Deletes a single game server config. The deletion will fail if the game
            # server config is referenced in a game server deployment rollout.
            #
            # @overload delete_game_server_config(request, options = nil)
            #   Pass arguments to `delete_game_server_config` via a request object, either of type
            #   {::Google::Cloud::Gaming::V1::DeleteGameServerConfigRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Gaming::V1::DeleteGameServerConfigRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload delete_game_server_config(name: nil)
            #   Pass arguments to `delete_game_server_config` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the game server config to delete, in the following form:
            #     `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/configs/{config}`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/gaming/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Gaming::V1::DeleteGameServerConfigRequest.new
            #
            #   # Call the delete_game_server_config method.
            #   result = client.delete_game_server_config request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def delete_game_server_config request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Gaming::V1::DeleteGameServerConfigRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.delete_game_server_config.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Gaming::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.delete_game_server_config.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.delete_game_server_config.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @game_server_configs_service_stub.call_rpc :delete_game_server_config, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the GameServerConfigsService API.
            #
            # This class represents the configuration for GameServerConfigsService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Gaming::V1::GameServerConfigsService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_game_server_configs to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Gaming::V1::GameServerConfigsService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_game_server_configs.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_game_server_configs.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"gameservices.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "gameservices.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the GameServerConfigsService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `list_game_server_configs`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_game_server_configs
                ##
                # RPC-specific configuration for `get_game_server_config`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_game_server_config
                ##
                # RPC-specific configuration for `create_game_server_config`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_game_server_config
                ##
                # RPC-specific configuration for `delete_game_server_config`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_game_server_config

                # @private
                def initialize parent_rpcs = nil
                  list_game_server_configs_config = parent_rpcs.list_game_server_configs if parent_rpcs.respond_to? :list_game_server_configs
                  @list_game_server_configs = ::Gapic::Config::Method.new list_game_server_configs_config
                  get_game_server_config_config = parent_rpcs.get_game_server_config if parent_rpcs.respond_to? :get_game_server_config
                  @get_game_server_config = ::Gapic::Config::Method.new get_game_server_config_config
                  create_game_server_config_config = parent_rpcs.create_game_server_config if parent_rpcs.respond_to? :create_game_server_config
                  @create_game_server_config = ::Gapic::Config::Method.new create_game_server_config_config
                  delete_game_server_config_config = parent_rpcs.delete_game_server_config if parent_rpcs.respond_to? :delete_game_server_config
                  @delete_game_server_config = ::Gapic::Config::Method.new delete_game_server_config_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
