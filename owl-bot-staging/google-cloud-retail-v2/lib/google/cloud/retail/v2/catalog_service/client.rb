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

require "google/cloud/errors"
require "google/cloud/retail/v2/catalog_service_pb"

module Google
  module Cloud
    module Retail
      module V2
        module CatalogService
          ##
          # Client for the CatalogService service.
          #
          # Service for managing catalog configuration.
          #
          class Client
            include Paths

            # @private
            attr_reader :catalog_service_stub

            ##
            # Configure the CatalogService Client class.
            #
            # See {::Google::Cloud::Retail::V2::CatalogService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all CatalogService clients
            #   ::Google::Cloud::Retail::V2::CatalogService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "Retail", "V2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 5.0
                default_config.retry_policy = {
                  initial_delay: 0.1, max_delay: 5.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the CatalogService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Retail::V2::CatalogService::Client::Configuration}
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
            # Create a new CatalogService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Retail::V2::CatalogService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Retail::V2::CatalogService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the CatalogService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/retail/v2/catalog_service_services_pb"

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

              @catalog_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Retail::V2::CatalogService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Lists all the {::Google::Cloud::Retail::V2::Catalog Catalog}s associated with
            # the project.
            #
            # @overload list_catalogs(request, options = nil)
            #   Pass arguments to `list_catalogs` via a request object, either of type
            #   {::Google::Cloud::Retail::V2::ListCatalogsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Retail::V2::ListCatalogsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_catalogs(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_catalogs` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The account resource name with an associated location.
            #
            #     If the caller does not have permission to list
            #     {::Google::Cloud::Retail::V2::Catalog Catalog}s under this location, regardless
            #     of whether or not this location exists, a PERMISSION_DENIED error is
            #     returned.
            #   @param page_size [::Integer]
            #     Maximum number of {::Google::Cloud::Retail::V2::Catalog Catalog}s to return. If
            #     unspecified, defaults to 50. The maximum allowed value is 1000. Values
            #     above 1000 will be coerced to 1000.
            #
            #     If this field is negative, an INVALID_ARGUMENT is returned.
            #   @param page_token [::String]
            #     A page token
            #     {::Google::Cloud::Retail::V2::ListCatalogsResponse#next_page_token ListCatalogsResponse.next_page_token},
            #     received from a previous
            #     {::Google::Cloud::Retail::V2::CatalogService::Client#list_catalogs CatalogService.ListCatalogs}
            #     call. Provide this to retrieve the subsequent page.
            #
            #     When paginating, all other parameters provided to
            #     {::Google::Cloud::Retail::V2::CatalogService::Client#list_catalogs CatalogService.ListCatalogs}
            #     must match the call that provided the page token. Otherwise, an
            #     INVALID_ARGUMENT error is returned.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Retail::V2::Catalog>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Retail::V2::Catalog>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/retail/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Retail::V2::CatalogService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Retail::V2::ListCatalogsRequest.new
            #
            #   # Call the list_catalogs method.
            #   result = client.list_catalogs request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can
            #   # iterate over all elements by calling #each, and the enumerable
            #   # will lazily make API calls to fetch subsequent pages. Other
            #   # methods are also available for managing paging directly.
            #   result.each do |response|
            #     # Each element is of type ::Google::Cloud::Retail::V2::Catalog.
            #     p response
            #   end
            #
            def list_catalogs request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::ListCatalogsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_catalogs.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Retail::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_catalogs.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_catalogs.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @catalog_service_stub.call_rpc :list_catalogs, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @catalog_service_stub, :list_catalogs, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates the {::Google::Cloud::Retail::V2::Catalog Catalog}s.
            #
            # @overload update_catalog(request, options = nil)
            #   Pass arguments to `update_catalog` via a request object, either of type
            #   {::Google::Cloud::Retail::V2::UpdateCatalogRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Retail::V2::UpdateCatalogRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_catalog(catalog: nil, update_mask: nil)
            #   Pass arguments to `update_catalog` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param catalog [::Google::Cloud::Retail::V2::Catalog, ::Hash]
            #     Required. The {::Google::Cloud::Retail::V2::Catalog Catalog} to update.
            #
            #     If the caller does not have permission to update the
            #     {::Google::Cloud::Retail::V2::Catalog Catalog}, regardless of whether or not it
            #     exists, a PERMISSION_DENIED error is returned.
            #
            #     If the {::Google::Cloud::Retail::V2::Catalog Catalog} to update does not exist,
            #     a NOT_FOUND error is returned.
            #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
            #     Indicates which fields in the provided
            #     {::Google::Cloud::Retail::V2::Catalog Catalog} to update.
            #
            #     If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
            #     is returned.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Retail::V2::Catalog]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Retail::V2::Catalog]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/retail/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Retail::V2::CatalogService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Retail::V2::UpdateCatalogRequest.new
            #
            #   # Call the update_catalog method.
            #   result = client.update_catalog request
            #
            #   # The returned object is of type Google::Cloud::Retail::V2::Catalog.
            #   p result
            #
            def update_catalog request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::UpdateCatalogRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_catalog.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Retail::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.catalog&.name
                header_params["catalog.name"] = request.catalog.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_catalog.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_catalog.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @catalog_service_stub.call_rpc :update_catalog, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Set a specified branch id as default branch. API methods such as
            # {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search},
            # {::Google::Cloud::Retail::V2::ProductService::Client#get_product ProductService.GetProduct},
            # {::Google::Cloud::Retail::V2::ProductService::Client#list_products ProductService.ListProducts}
            # will treat requests using "default_branch" to the actual branch id set as
            # default.
            #
            # For example, if `projects/*/locations/*/catalogs/*/branches/1` is set as
            # default, setting
            # {::Google::Cloud::Retail::V2::SearchRequest#branch SearchRequest.branch} to
            # `projects/*/locations/*/catalogs/*/branches/default_branch` is equivalent
            # to setting
            # {::Google::Cloud::Retail::V2::SearchRequest#branch SearchRequest.branch} to
            # `projects/*/locations/*/catalogs/*/branches/1`.
            #
            # Using multiple branches can be useful when developers would like
            # to have a staging branch to test and verify for future usage. When it
            # becomes ready, developers switch on the staging branch using this API while
            # keeping using `projects/*/locations/*/catalogs/*/branches/default_branch`
            # as {::Google::Cloud::Retail::V2::SearchRequest#branch SearchRequest.branch} to
            # route the traffic to this staging branch.
            #
            # CAUTION: If you have live predict/search traffic, switching the default
            # branch could potentially cause outages if the ID space of the new branch is
            # very different from the old one.
            #
            # More specifically:
            #
            # * PredictionService will only return product IDs from branch \\{newBranch}.
            # * SearchService will only return product IDs from branch \\{newBranch}
            #   (if branch is not explicitly set).
            # * UserEventService will only join events with products from branch
            #   \\{newBranch}.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Please submit a form [here](https://cloud.google.com/contact) to contact
            # cloud sales if you are interested in using Retail Search.
            #
            # @overload set_default_branch(request, options = nil)
            #   Pass arguments to `set_default_branch` via a request object, either of type
            #   {::Google::Cloud::Retail::V2::SetDefaultBranchRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Retail::V2::SetDefaultBranchRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload set_default_branch(catalog: nil, branch_id: nil, note: nil)
            #   Pass arguments to `set_default_branch` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param catalog [::String]
            #     Full resource name of the catalog, such as
            #     `projects/*/locations/global/catalogs/default_catalog`.
            #   @param branch_id [::String]
            #     The final component of the resource name of a branch.
            #
            #     This field must be one of "0", "1" or "2". Otherwise, an INVALID_ARGUMENT
            #     error is returned.
            #   @param note [::String]
            #     Some note on this request, this can be retrieved by
            #     {::Google::Cloud::Retail::V2::CatalogService::Client#get_default_branch CatalogService.GetDefaultBranch}
            #     before next valid default branch set occurs.
            #
            #     This field must be a UTF-8 encoded string with a length limit of 1,000
            #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
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
            #   require "google/cloud/retail/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Retail::V2::CatalogService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Retail::V2::SetDefaultBranchRequest.new
            #
            #   # Call the set_default_branch method.
            #   result = client.set_default_branch request
            #
            #   # The returned object is of type Google::Protobuf::Empty.
            #   p result
            #
            def set_default_branch request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::SetDefaultBranchRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.set_default_branch.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Retail::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.catalog
                header_params["catalog"] = request.catalog
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.set_default_branch.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.set_default_branch.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @catalog_service_stub.call_rpc :set_default_branch, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Get which branch is currently default branch set by
            # {::Google::Cloud::Retail::V2::CatalogService::Client#set_default_branch CatalogService.SetDefaultBranch}
            # method under a specified parent catalog.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Please submit a form [here](https://cloud.google.com/contact) to contact
            # cloud sales if you are interested in using Retail Search.
            #
            # @overload get_default_branch(request, options = nil)
            #   Pass arguments to `get_default_branch` via a request object, either of type
            #   {::Google::Cloud::Retail::V2::GetDefaultBranchRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Retail::V2::GetDefaultBranchRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_default_branch(catalog: nil)
            #   Pass arguments to `get_default_branch` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param catalog [::String]
            #     The parent catalog resource name, such as
            #     `projects/*/locations/global/catalogs/default_catalog`.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Retail::V2::GetDefaultBranchResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Retail::V2::GetDefaultBranchResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/retail/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Retail::V2::CatalogService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Retail::V2::GetDefaultBranchRequest.new
            #
            #   # Call the get_default_branch method.
            #   result = client.get_default_branch request
            #
            #   # The returned object is of type Google::Cloud::Retail::V2::GetDefaultBranchResponse.
            #   p result
            #
            def get_default_branch request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Retail::V2::GetDefaultBranchRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_default_branch.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Retail::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.catalog
                header_params["catalog"] = request.catalog
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_default_branch.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_default_branch.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @catalog_service_stub.call_rpc :get_default_branch, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the CatalogService API.
            #
            # This class represents the configuration for CatalogService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Retail::V2::CatalogService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_catalogs to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Retail::V2::CatalogService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_catalogs.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Retail::V2::CatalogService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_catalogs.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"retail.googleapis.com"`.
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

              config_attr :endpoint,      "retail.googleapis.com", ::String
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
              # Configuration RPC class for the CatalogService API.
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
                # RPC-specific configuration for `list_catalogs`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_catalogs
                ##
                # RPC-specific configuration for `update_catalog`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_catalog
                ##
                # RPC-specific configuration for `set_default_branch`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :set_default_branch
                ##
                # RPC-specific configuration for `get_default_branch`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_default_branch

                # @private
                def initialize parent_rpcs = nil
                  list_catalogs_config = parent_rpcs.list_catalogs if parent_rpcs.respond_to? :list_catalogs
                  @list_catalogs = ::Gapic::Config::Method.new list_catalogs_config
                  update_catalog_config = parent_rpcs.update_catalog if parent_rpcs.respond_to? :update_catalog
                  @update_catalog = ::Gapic::Config::Method.new update_catalog_config
                  set_default_branch_config = parent_rpcs.set_default_branch if parent_rpcs.respond_to? :set_default_branch
                  @set_default_branch = ::Gapic::Config::Method.new set_default_branch_config
                  get_default_branch_config = parent_rpcs.get_default_branch if parent_rpcs.respond_to? :get_default_branch
                  @get_default_branch = ::Gapic::Config::Method.new get_default_branch_config

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
