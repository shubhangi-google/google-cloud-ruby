# frozen_string_literal: true

# Copyright 2023 Google LLC
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
require "google/cloud/privatecatalog/v1beta1/private_catalog_pb"
require "google/cloud/private_catalog/v1beta1/private_catalog/rest/service_stub"

module Google
  module Cloud
    module PrivateCatalog
      module V1beta1
        module PrivateCatalog
          module Rest
            ##
            # REST client for the PrivateCatalog service.
            #
            # `PrivateCatalog` allows catalog consumers to retrieve `Catalog`, `Product`
            # and `Version` resources under a target resource context.
            #
            # `Catalog` is computed based on the [Association][]s linked to the target
            # resource and its ancestors. Each association's
            # [google.cloud.privatecatalogproducer.v1beta.Catalog][] is transformed into a
            # `Catalog`. If multiple associations have the same parent
            # [google.cloud.privatecatalogproducer.v1beta.Catalog][], they are
            # de-duplicated into one `Catalog`. Users must have
            # `cloudprivatecatalog.catalogTargets.get` IAM permission on the resource
            # context in order to access catalogs. `Catalog` contains the resource name and
            # a subset of data of the original
            # [google.cloud.privatecatalogproducer.v1beta.Catalog][].
            #
            # `Product` is child resource of the catalog. A `Product` contains the resource
            # name and a subset of the data of the original
            # [google.cloud.privatecatalogproducer.v1beta.Product][].
            #
            # `Version` is child resource of the product. A `Version` contains the resource
            # name and a subset of the data of the original
            # [google.cloud.privatecatalogproducer.v1beta.Version][].
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "cloudprivatecatalog.$UNIVERSE_DOMAIN$"

              # @private
              attr_reader :private_catalog_stub

              ##
              # Configure the PrivateCatalog Client class.
              #
              # See {::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all PrivateCatalog clients
              #   ::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "PrivateCatalog", "V1beta1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the PrivateCatalog Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client::Configuration}
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
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @private_catalog_stub.universe_domain
              end

              ##
              # Create a new PrivateCatalog REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the PrivateCatalog client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @private_catalog_stub = ::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @private_catalog_stub.logger(stub: true)&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end
              end

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @private_catalog_stub.logger
              end

              # Service calls

              ##
              # Search {::Google::Cloud::PrivateCatalog::V1beta1::Catalog Catalog} resources that consumers have access to, within the
              # scope of the consumer cloud resource hierarchy context.
              #
              # @overload search_catalogs(request, options = nil)
              #   Pass arguments to `search_catalogs` via a request object, either of type
              #   {::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload search_catalogs(resource: nil, query: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `search_catalogs` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param resource [::String]
              #     Required. The name of the resource context. It can be in following formats:
              #
              #     * `projects/{project}`
              #     * `folders/{folder}`
              #     * `organizations/{organization}`
              #   @param query [::String]
              #     The query to filter the catalogs. The supported queries are:
              #
              #     * Get a single catalog: `name=catalogs/{catalog}`
              #   @param page_size [::Integer]
              #     The maximum number of entries that are requested.
              #   @param page_token [::String]
              #     A pagination token returned from a previous call to SearchCatalogs that
              #     indicates where this listing should continue from.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::PrivateCatalog::V1beta1::Catalog>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::PrivateCatalog::V1beta1::Catalog>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/private_catalog/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest.new
              #
              #   # Call the search_catalogs method.
              #   result = client.search_catalogs request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::PrivateCatalog::V1beta1::Catalog.
              #     p item
              #   end
              #
              def search_catalogs request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.search_catalogs.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::PrivateCatalog::V1beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.search_catalogs.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.search_catalogs.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @private_catalog_stub.search_catalogs request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @private_catalog_stub, :search_catalogs, "catalogs", request, result, options
                  yield result, operation if block_given?
                  throw :response, result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Search {::Google::Cloud::PrivateCatalog::V1beta1::Product Product} resources that consumers have access to, within the
              # scope of the consumer cloud resource hierarchy context.
              #
              # @overload search_products(request, options = nil)
              #   Pass arguments to `search_products` via a request object, either of type
              #   {::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload search_products(resource: nil, query: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `search_products` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param resource [::String]
              #     Required. The name of the resource context. See {::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest#resource SearchCatalogsRequest.resource}
              #     for details.
              #   @param query [::String]
              #     The query to filter the products.
              #
              #     The supported queries are:
              #     * List products of all catalogs: empty
              #     * List products under a catalog: `parent=catalogs/{catalog}`
              #     * Get a product by name:
              #     `name=catalogs/{catalog}/products/{product}`
              #   @param page_size [::Integer]
              #     The maximum number of entries that are requested.
              #   @param page_token [::String]
              #     A pagination token returned from a previous call to SearchProducts that
              #     indicates where this listing should continue from.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::PrivateCatalog::V1beta1::Product>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::PrivateCatalog::V1beta1::Product>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/private_catalog/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::PrivateCatalog::V1beta1::SearchProductsRequest.new
              #
              #   # Call the search_products method.
              #   result = client.search_products request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::PrivateCatalog::V1beta1::Product.
              #     p item
              #   end
              #
              def search_products request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.search_products.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::PrivateCatalog::V1beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.search_products.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.search_products.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @private_catalog_stub.search_products request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @private_catalog_stub, :search_products, "products", request, result, options
                  yield result, operation if block_given?
                  throw :response, result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Search {::Google::Cloud::PrivateCatalog::V1beta1::Version Version} resources that consumers have access to, within the
              # scope of the consumer cloud resource hierarchy context.
              #
              # @overload search_versions(request, options = nil)
              #   Pass arguments to `search_versions` via a request object, either of type
              #   {::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload search_versions(resource: nil, query: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `search_versions` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param resource [::String]
              #     Required. The name of the resource context. See {::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest#resource SearchCatalogsRequest.resource}
              #     for details.
              #   @param query [::String]
              #     Required. The query to filter the versions.
              #
              #     The supported queries are:
              #     * List versions under a product:
              #     `parent=catalogs/{catalog}/products/{product}`
              #     * Get a version by name:
              #     `name=catalogs/{catalog}/products/{product}/versions/{version}`
              #   @param page_size [::Integer]
              #     The maximum number of entries that are requested.
              #   @param page_token [::String]
              #     A pagination token returned from a previous call to SearchVersions
              #     that indicates where this listing should continue from.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::PrivateCatalog::V1beta1::Version>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::PrivateCatalog::V1beta1::Version>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/private_catalog/v1beta1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsRequest.new
              #
              #   # Call the search_versions method.
              #   result = client.search_versions request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::PrivateCatalog::V1beta1::Version.
              #     p item
              #   end
              #
              def search_versions request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.search_versions.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::PrivateCatalog::V1beta1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.search_versions.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.search_versions.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @private_catalog_stub.search_versions request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @private_catalog_stub, :search_versions, "versions", request, result, options
                  yield result, operation if block_given?
                  throw :response, result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the PrivateCatalog REST API.
              #
              # This class represents the configuration for PrivateCatalog REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # search_catalogs to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.search_catalogs.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::PrivateCatalog::V1beta1::PrivateCatalog::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.search_catalogs.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
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
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
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
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              # @!attribute [rw] logger
              #   A custom logger to use for request/response debug logging, or the value
              #   `:default` (the default) to construct a default logger, or `nil` to
              #   explicitly disable logging.
              #   @return [::Logger,:default,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "cloudprivatecatalog.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil
                config_attr :logger, :default, ::Logger, nil, :default

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
                # Configuration RPC class for the PrivateCatalog API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
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
                  # RPC-specific configuration for `search_catalogs`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :search_catalogs
                  ##
                  # RPC-specific configuration for `search_products`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :search_products
                  ##
                  # RPC-specific configuration for `search_versions`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :search_versions

                  # @private
                  def initialize parent_rpcs = nil
                    search_catalogs_config = parent_rpcs.search_catalogs if parent_rpcs.respond_to? :search_catalogs
                    @search_catalogs = ::Gapic::Config::Method.new search_catalogs_config
                    search_products_config = parent_rpcs.search_products if parent_rpcs.respond_to? :search_products
                    @search_products = ::Gapic::Config::Method.new search_products_config
                    search_versions_config = parent_rpcs.search_versions if parent_rpcs.respond_to? :search_versions
                    @search_versions = ::Gapic::Config::Method.new search_versions_config

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
end
