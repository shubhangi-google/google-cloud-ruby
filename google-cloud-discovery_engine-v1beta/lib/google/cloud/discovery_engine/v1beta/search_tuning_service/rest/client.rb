# frozen_string_literal: true

# Copyright 2024 Google LLC
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
require "google/cloud/discoveryengine/v1beta/search_tuning_service_pb"
require "google/cloud/discovery_engine/v1beta/search_tuning_service/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        module SearchTuningService
          module Rest
            ##
            # REST client for the SearchTuningService service.
            #
            # Service for search tuning.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "discoveryengine.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :search_tuning_service_stub

              ##
              # Configure the SearchTuningService Client class.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all SearchTuningService clients
              #   ::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "DiscoveryEngine", "V1beta"]
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
              # Configure the SearchTuningService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client::Configuration}
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
                @search_tuning_service_stub.universe_domain
              end

              ##
              # Create a new SearchTuningService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the SearchTuningService client.
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

                @operations_client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.universe_domain = @config.universe_domain
                end

                @search_tuning_service_stub = ::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @search_tuning_service_stub.logger(stub: true)&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @search_tuning_service_stub.endpoint
                  config.universe_domain = @search_tuning_service_stub.universe_domain
                  config.logger = @search_tuning_service_stub.logger if config.respond_to? :logger=
                end
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Operations]
              #
              attr_reader :operations_client

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @search_tuning_service_stub.logger
              end

              # Service calls

              ##
              # Trains a custom model.
              #
              # @overload train_custom_model(request, options = nil)
              #   Pass arguments to `train_custom_model` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::TrainCustomModelRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::TrainCustomModelRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload train_custom_model(gcs_training_input: nil, data_store: nil, model_type: nil, error_config: nil, model_id: nil)
              #   Pass arguments to `train_custom_model` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param gcs_training_input [::Google::Cloud::DiscoveryEngine::V1beta::TrainCustomModelRequest::GcsTrainingInput, ::Hash]
              #     Cloud Storage training input.
              #   @param data_store [::String]
              #     Required. The resource name of the Data Store, such as
              #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store`.
              #     This field is used to identify the data store where to train the models.
              #   @param model_type [::String]
              #     Model to be trained. Supported values are:
              #
              #      * **search-tuning**: Fine tuning the search system based on data provided.
              #   @param error_config [::Google::Cloud::DiscoveryEngine::V1beta::ImportErrorConfig, ::Hash]
              #     The desired location of errors incurred during the data ingestion and
              #     training.
              #   @param model_id [::String]
              #     If not provided, a UUID will be generated.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/discovery_engine/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::DiscoveryEngine::V1beta::TrainCustomModelRequest.new
              #
              #   # Call the train_custom_model method.
              #   result = client.train_custom_model request
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
              def train_custom_model request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::TrainCustomModelRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.train_custom_model.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.train_custom_model.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.train_custom_model.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @search_tuning_service_stub.train_custom_model request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  throw :response, result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Gets a list of all the custom models.
              #
              # @overload list_custom_models(request, options = nil)
              #   Pass arguments to `list_custom_models` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::ListCustomModelsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::ListCustomModelsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_custom_models(data_store: nil)
              #   Pass arguments to `list_custom_models` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param data_store [::String]
              #     Required. The resource name of the parent Data Store, such as
              #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store`.
              #     This field is used to identify the data store where to fetch the models
              #     from.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1beta::ListCustomModelsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1beta::ListCustomModelsResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/discovery_engine/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::DiscoveryEngine::V1beta::ListCustomModelsRequest.new
              #
              #   # Call the list_custom_models method.
              #   result = client.list_custom_models request
              #
              #   # The returned object is of type Google::Cloud::DiscoveryEngine::V1beta::ListCustomModelsResponse.
              #   p result
              #
              def list_custom_models request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::ListCustomModelsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_custom_models.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_custom_models.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_custom_models.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @search_tuning_service_stub.list_custom_models request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the SearchTuningService REST API.
              #
              # This class represents the configuration for SearchTuningService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # train_custom_model to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.train_custom_model.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchTuningService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.train_custom_model.timeout = 20.0
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
                DEFAULT_ENDPOINT = "discoveryengine.googleapis.com"

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
                # Configuration RPC class for the SearchTuningService API.
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
                  # RPC-specific configuration for `train_custom_model`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :train_custom_model
                  ##
                  # RPC-specific configuration for `list_custom_models`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_custom_models

                  # @private
                  def initialize parent_rpcs = nil
                    train_custom_model_config = parent_rpcs.train_custom_model if parent_rpcs.respond_to? :train_custom_model
                    @train_custom_model = ::Gapic::Config::Method.new train_custom_model_config
                    list_custom_models_config = parent_rpcs.list_custom_models if parent_rpcs.respond_to? :list_custom_models
                    @list_custom_models = ::Gapic::Config::Method.new list_custom_models_config

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
