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

require "gapic/operation"
require "google/longrunning/operations_pb"

module Google
  module Cloud
    module Channel
      module V1
        module CloudChannelService
          # Service that implements Longrunning Operations API.
          class Operations
            # @private
            attr_reader :operations_stub

            ##
            # Configuration for the CloudChannelService Operations API.
            #
            # @yield [config] Configure the Operations client.
            # @yieldparam config [Operations::Configuration]
            #
            # @return [Operations::Configuration]
            #
            def self.configure
              @configure ||= Operations::Configuration.new
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the CloudChannelService Operations instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Operations.configure}.
            #
            # @yield [config] Configure the Operations client.
            # @yieldparam config [Operations::Configuration]
            #
            # @return [Operations::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new Operations client object.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Operations::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/longrunning/operations_services_pb"

              # Create the configuration object
              @config = Configuration.new Operations.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              credentials ||= Credentials.default scope: @config.scope
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_stub = ::Gapic::ServiceStub.new(
                ::Google::Longrunning::Operations::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )

              # Used by an LRO wrapper for some methods of this service
              @operations_client = self
            end

            # Service calls

            ##
            # Lists operations that match the specified filter in the request. If the
            # server doesn't support this method, it returns `UNIMPLEMENTED`.
            #
            # NOTE: the `name` binding allows API services to override the binding
            # to use different resource name schemes, such as `users/*/operations`. To
            # override the binding, API services can add a binding such as
            # `"/v1/{name=users/*}/operations"` to their service configuration.
            # For backwards compatibility, the default name includes the operations
            # collection id, however overriding users must ensure the name binding
            # is the parent resource, without the operations collection id.
            #
            # @overload list_operations(request, options = nil)
            #   Pass arguments to `list_operations` via a request object, either of type
            #   {::Google::Longrunning::ListOperationsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Longrunning::ListOperationsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_operations(name: nil, filter: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_operations` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     The name of the operation's parent resource.
            #   @param filter [::String]
            #     The standard list filter.
            #   @param page_size [::Integer]
            #     The standard list page size.
            #   @param page_token [::String]
            #     The standard list page token.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Gapic::Operation>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Gapic::Operation>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/longrunning"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Longrunning::Operations::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Longrunning::ListOperationsRequest.new
            #
            #   # Call the list_operations method.
            #   result = client.list_operations request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can
            #   # iterate over all elements by calling #each, and the enumerable
            #   # will lazily make API calls to fetch subsequent pages. Other
            #   # methods are also available for managing paging directly.
            #   result.each do |response|
            #     # Each element is of type ::Google::Longrunning::Operation.
            #     p response
            #   end
            #
            def list_operations request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Longrunning::ListOperationsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_operations.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Channel::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_operations.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_operations.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @operations_stub.call_rpc :list_operations, request, options: options do |response, operation|
                wrap_lro_operation = ->(op_response) { ::Gapic::Operation.new op_response, @operations_client }
                response = ::Gapic::PagedEnumerable.new @operations_stub, :list_operations, request, response, operation, options, format_resource: wrap_lro_operation
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets the latest state of a long-running operation.  Clients can use this
            # method to poll the operation result at intervals as recommended by the API
            # service.
            #
            # @overload get_operation(request, options = nil)
            #   Pass arguments to `get_operation` via a request object, either of type
            #   {::Google::Longrunning::GetOperationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Longrunning::GetOperationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_operation(name: nil)
            #   Pass arguments to `get_operation` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     The name of the operation resource.
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
            #   require "google/longrunning"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Longrunning::Operations::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Longrunning::GetOperationRequest.new
            #
            #   # Call the get_operation method.
            #   result = client.get_operation request
            #
            #   # The returned object is of type Gapic::Operation. You can use this
            #   # object to check the status of an operation, cancel it, or wait
            #   # for results. Here is how to block until completion:
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "Error!"
            #   end
            #
            def get_operation request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Longrunning::GetOperationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_operation.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Channel::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_operation.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_operation.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @operations_stub.call_rpc :get_operation, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Deletes a long-running operation. This method indicates that the client is
            # no longer interested in the operation result. It does not cancel the
            # operation. If the server doesn't support this method, it returns
            # `google.rpc.Code.UNIMPLEMENTED`.
            #
            # @overload delete_operation(request, options = nil)
            #   Pass arguments to `delete_operation` via a request object, either of type
            #   {::Google::Longrunning::DeleteOperationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Longrunning::DeleteOperationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload delete_operation(name: nil)
            #   Pass arguments to `delete_operation` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     The name of the operation resource to be deleted.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Protobuf::Empty]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Protobuf::Empty]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/longrunning"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Longrunning::Operations::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Longrunning::DeleteOperationRequest.new
            #
            #   # Call the delete_operation method.
            #   result = client.delete_operation request
            #
            #   # The returned object is of type Google::Protobuf::Empty.
            #   p result
            #
            def delete_operation request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Longrunning::DeleteOperationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.delete_operation.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Channel::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.delete_operation.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.delete_operation.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @operations_stub.call_rpc :delete_operation, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Starts asynchronous cancellation on a long-running operation.  The server
            # makes a best effort to cancel the operation, but success is not
            # guaranteed.  If the server doesn't support this method, it returns
            # `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
            # Operations.GetOperation or
            # other methods to check whether the cancellation succeeded or whether the
            # operation completed despite cancellation. On successful cancellation,
            # the operation is not deleted; instead, it becomes an operation with
            # an {::Google::Longrunning::Operation#error Operation.error} value with a {::Google::Rpc::Status#code google.rpc.Status.code} of 1,
            # corresponding to `Code.CANCELLED`.
            #
            # @overload cancel_operation(request, options = nil)
            #   Pass arguments to `cancel_operation` via a request object, either of type
            #   {::Google::Longrunning::CancelOperationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Longrunning::CancelOperationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload cancel_operation(name: nil)
            #   Pass arguments to `cancel_operation` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     The name of the operation resource to be cancelled.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Protobuf::Empty]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Protobuf::Empty]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/longrunning"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Longrunning::Operations::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Longrunning::CancelOperationRequest.new
            #
            #   # Call the cancel_operation method.
            #   result = client.cancel_operation request
            #
            #   # The returned object is of type Google::Protobuf::Empty.
            #   p result
            #
            def cancel_operation request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Longrunning::CancelOperationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.cancel_operation.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Channel::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.cancel_operation.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.cancel_operation.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @operations_stub.call_rpc :cancel_operation, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Waits until the specified long-running operation is done or reaches at most
            # a specified timeout, returning the latest state.  If the operation is
            # already done, the latest state is immediately returned.  If the timeout
            # specified is greater than the default HTTP/RPC timeout, the HTTP/RPC
            # timeout is used.  If the server does not support this method, it returns
            # `google.rpc.Code.UNIMPLEMENTED`.
            # Note that this method is on a best-effort basis.  It may return the latest
            # state before the specified timeout (including immediately), meaning even an
            # immediate response is no guarantee that the operation is done.
            #
            # @overload wait_operation(request, options = nil)
            #   Pass arguments to `wait_operation` via a request object, either of type
            #   {::Google::Longrunning::WaitOperationRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Longrunning::WaitOperationRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload wait_operation(name: nil, timeout: nil)
            #   Pass arguments to `wait_operation` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     The name of the operation resource to wait on.
            #   @param timeout [::Google::Protobuf::Duration, ::Hash]
            #     The maximum duration to wait before timing out. If left blank, the wait
            #     will be at most the time permitted by the underlying HTTP/RPC protocol.
            #     If RPC context deadline is also specified, the shorter one will be used.
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
            #   require "google/longrunning"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Longrunning::Operations::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Longrunning::WaitOperationRequest.new
            #
            #   # Call the wait_operation method.
            #   result = client.wait_operation request
            #
            #   # The returned object is of type Gapic::Operation. You can use this
            #   # object to check the status of an operation, cancel it, or wait
            #   # for results. Here is how to block until completion:
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "Error!"
            #   end
            #
            def wait_operation request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Longrunning::WaitOperationRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.wait_operation.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Channel::V1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.wait_operation.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.wait_operation.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @operations_stub.call_rpc :wait_operation, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Operations API.
            #
            # This class represents the configuration for Operations,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Longrunning::Operations::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_operations to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Longrunning::Operations::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_operations.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Longrunning::Operations::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_operations.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"cloudchannel.googleapis.com"`.
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

              config_attr :endpoint,      "cloudchannel.googleapis.com", ::String
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
              # Configuration RPC class for the Operations API.
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
                # RPC-specific configuration for `list_operations`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_operations
                ##
                # RPC-specific configuration for `get_operation`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_operation
                ##
                # RPC-specific configuration for `delete_operation`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :delete_operation
                ##
                # RPC-specific configuration for `cancel_operation`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :cancel_operation
                ##
                # RPC-specific configuration for `wait_operation`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :wait_operation

                # @private
                def initialize parent_rpcs = nil
                  list_operations_config = parent_rpcs.list_operations if parent_rpcs.respond_to? :list_operations
                  @list_operations = ::Gapic::Config::Method.new list_operations_config
                  get_operation_config = parent_rpcs.get_operation if parent_rpcs.respond_to? :get_operation
                  @get_operation = ::Gapic::Config::Method.new get_operation_config
                  delete_operation_config = parent_rpcs.delete_operation if parent_rpcs.respond_to? :delete_operation
                  @delete_operation = ::Gapic::Config::Method.new delete_operation_config
                  cancel_operation_config = parent_rpcs.cancel_operation if parent_rpcs.respond_to? :cancel_operation
                  @cancel_operation = ::Gapic::Config::Method.new cancel_operation_config
                  wait_operation_config = parent_rpcs.wait_operation if parent_rpcs.respond_to? :wait_operation
                  @wait_operation = ::Gapic::Config::Method.new wait_operation_config

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
