# frozen_string_literal: true

# Copyright 2021 Google LLC
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
require "google/cloud/resourcesettings/v1/resource_settings_pb"

module Google
  module Cloud
    module ResourceSettings
      module V1
        module ResourceSettingsService
          ##
          # Client for the ResourceSettingsService service.
          #
          # An interface to interact with resource settings and setting values throughout
          # the resource hierarchy.
          #
          # Services may surface a number of settings for users to control how their
          # resources behave. Values of settings applied on a given Cloud resource are
          # evaluated hierarchically and inherited by all descendants of that resource.
          #
          # For all requests, returns a `google.rpc.Status` with
          # `google.rpc.Code.PERMISSION_DENIED` if the IAM check fails or the `parent`
          # resource is not in a Cloud Organization.
          # For all requests, returns a `google.rpc.Status` with
          # `google.rpc.Code.INVALID_ARGUMENT` if the request is malformed.
          # (== deprecation_description Resource Settings is deprecated. As of November
          # 7, 2023, no organizations will be onboarded for any of the enabled settings,
          # and the service will be shut down on October 1, 2024. ==)
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "resourcesettings.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :resource_settings_service_stub

            ##
            # Configure the ResourceSettingsService Client class.
            #
            # See {::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @deprecated This service is deprecated and may be removed in the next major version update.
            #
            # @example
            #
            #   # Modify the configuration for all ResourceSettingsService clients
            #   ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "ResourceSettings", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.list_settings.timeout = 60.0
                default_config.rpcs.list_settings.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config.rpcs.get_setting.timeout = 60.0
                default_config.rpcs.get_setting.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config.rpcs.update_setting.timeout = 60.0
                default_config.rpcs.update_setting.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the ResourceSettingsService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client::Configuration}
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
              @resource_settings_service_stub.universe_domain
            end

            ##
            # Create a new ResourceSettingsService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the ResourceSettingsService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/resourcesettings/v1/resource_settings_services_pb"

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

              @resource_settings_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool,
                logger: @config.logger
              )

              @resource_settings_service_stub.stub_logger&.info do |entry|
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
              @resource_settings_service_stub.logger
            end

            # Service calls

            ##
            # Lists all the settings that are available on the Cloud resource `parent`.
            #
            # @overload list_settings(request, options = nil)
            #   Pass arguments to `list_settings` via a request object, either of type
            #   {::Google::Cloud::ResourceSettings::V1::ListSettingsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceSettings::V1::ListSettingsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_settings(parent: nil, page_size: nil, page_token: nil, view: nil)
            #   Pass arguments to `list_settings` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The Cloud resource that parents the setting. Must be in one of
            #     the following forms:
            #
            #     * `projects/{project_number}`
            #     * `projects/{project_id}`
            #     * `folders/{folder_id}`
            #     * `organizations/{organization_id}`
            #   @param page_size [::Integer]
            #     Unused. The size of the page to be returned.
            #   @param page_token [::String]
            #     Unused. A page token used to retrieve the next page.
            #   @param view [::Google::Cloud::ResourceSettings::V1::SettingView]
            #     The SettingView for this request.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::ResourceSettings::V1::Setting>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::ResourceSettings::V1::Setting>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/resource_settings/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ResourceSettings::V1::ListSettingsRequest.new
            #
            #   # Call the list_settings method.
            #   result = client.list_settings request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::ResourceSettings::V1::Setting.
            #     p item
            #   end
            #
            def list_settings request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceSettings::V1::ListSettingsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_settings.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceSettings::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_settings.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_settings.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @resource_settings_service_stub.call_rpc :list_settings, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @resource_settings_service_stub, :list_settings, request, response, operation, options
                yield response, operation if block_given?
                throw :response, response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets a setting.
            #
            # Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
            # setting does not exist.
            #
            # @overload get_setting(request, options = nil)
            #   Pass arguments to `get_setting` via a request object, either of type
            #   {::Google::Cloud::ResourceSettings::V1::GetSettingRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceSettings::V1::GetSettingRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_setting(name: nil, view: nil)
            #   Pass arguments to `get_setting` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the setting to get. See
            #     {::Google::Cloud::ResourceSettings::V1::Setting Setting} for naming
            #     requirements.
            #   @param view [::Google::Cloud::ResourceSettings::V1::SettingView]
            #     The SettingView for this request.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::ResourceSettings::V1::Setting]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::ResourceSettings::V1::Setting]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/resource_settings/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ResourceSettings::V1::GetSettingRequest.new
            #
            #   # Call the get_setting method.
            #   result = client.get_setting request
            #
            #   # The returned object is of type Google::Cloud::ResourceSettings::V1::Setting.
            #   p result
            #
            def get_setting request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceSettings::V1::GetSettingRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_setting.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceSettings::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_setting.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_setting.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @resource_settings_service_stub.call_rpc :get_setting, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates a setting.
            #
            # Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
            # setting does not exist.
            # Returns a `google.rpc.Status` with `google.rpc.Code.FAILED_PRECONDITION` if
            # the setting is flagged as read only.
            # Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag
            # supplied in the request does not match the persisted etag of the setting
            # value.
            #
            # On success, the response will contain only `name`, `local_value` and
            # `etag`.  The `metadata` and `effective_value` cannot be updated through
            # this API.
            #
            # Note: the supplied setting will perform a full overwrite of the
            # `local_value` field.
            #
            # @overload update_setting(request, options = nil)
            #   Pass arguments to `update_setting` via a request object, either of type
            #   {::Google::Cloud::ResourceSettings::V1::UpdateSettingRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::ResourceSettings::V1::UpdateSettingRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_setting(setting: nil)
            #   Pass arguments to `update_setting` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param setting [::Google::Cloud::ResourceSettings::V1::Setting, ::Hash]
            #     Required. The setting to update. See
            #     {::Google::Cloud::ResourceSettings::V1::Setting Setting} for field requirements.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::ResourceSettings::V1::Setting]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::ResourceSettings::V1::Setting]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/resource_settings/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::ResourceSettings::V1::UpdateSettingRequest.new
            #
            #   # Call the update_setting method.
            #   result = client.update_setting request
            #
            #   # The returned object is of type Google::Cloud::ResourceSettings::V1::Setting.
            #   p result
            #
            def update_setting request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::ResourceSettings::V1::UpdateSettingRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_setting.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::ResourceSettings::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.setting&.name
                header_params["setting.name"] = request.setting.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_setting.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_setting.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @resource_settings_service_stub.call_rpc :update_setting, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the ResourceSettingsService API.
            #
            # This class represents the configuration for ResourceSettingsService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_settings to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_settings.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::ResourceSettings::V1::ResourceSettingsService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_settings.timeout = 20.0
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
              DEFAULT_ENDPOINT = "resourcesettings.googleapis.com"

              config_attr :endpoint,      nil, ::String, nil
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
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the ResourceSettingsService API.
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
                # RPC-specific configuration for `list_settings`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_settings
                ##
                # RPC-specific configuration for `get_setting`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_setting
                ##
                # RPC-specific configuration for `update_setting`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_setting

                # @private
                def initialize parent_rpcs = nil
                  list_settings_config = parent_rpcs.list_settings if parent_rpcs.respond_to? :list_settings
                  @list_settings = ::Gapic::Config::Method.new list_settings_config
                  get_setting_config = parent_rpcs.get_setting if parent_rpcs.respond_to? :get_setting
                  @get_setting = ::Gapic::Config::Method.new get_setting_config
                  update_setting_config = parent_rpcs.update_setting if parent_rpcs.respond_to? :update_setting
                  @update_setting = ::Gapic::Config::Method.new update_setting_config

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
