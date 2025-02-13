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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/shopping/merchant/notifications/version"

require "googleauth"

module Google
  module Shopping
    module Merchant
      module Notifications
        ##
        # Create a new client object for NotificationsApiService.
        #
        # By default, this returns an instance of
        # [Google::Shopping::Merchant::Notifications::V1beta::NotificationsApiService::Client](https://rubydoc.info/gems/google-shopping-merchant-notifications-v1beta/Google/Shopping/Merchant/Notifications/V1beta/NotificationsApiService/Client)
        # for a gRPC client for version V1beta of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the NotificationsApiService service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # Raises an exception if the currently installed versioned client gem for the
        # given API version does not support the given transport of the NotificationsApiService service.
        # You can determine whether the method will succeed by calling
        # {Google::Shopping::Merchant::Notifications.notifications_api_service_available?}.
        #
        # ## About NotificationsApiService
        #
        # Service to manage notification subscriptions for merchants
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v1beta`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.notifications_api_service version: :v1beta, transport: :grpc, &block
          require "google/shopping/merchant/notifications/#{version.to_s.downcase}"

          package_name = Google::Shopping::Merchant::Notifications
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Shopping::Merchant::Notifications.const_get(package_name).const_get(:NotificationsApiService)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Determines whether the NotificationsApiService service is supported by the current client.
        # If true, you can retrieve a client object by calling {Google::Shopping::Merchant::Notifications.notifications_api_service}.
        # If false, that method will raise an exception. This could happen if the given
        # API version does not exist or does not support the NotificationsApiService service,
        # or if the versioned client gem needs an update to support the NotificationsApiService service.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v1beta`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [boolean] Whether the service is available.
        #
        def self.notifications_api_service_available? version: :v1beta, transport: :grpc
          require "google/shopping/merchant/notifications/#{version.to_s.downcase}"
          package_name = Google::Shopping::Merchant::Notifications
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          return false unless package_name
          service_module = Google::Shopping::Merchant::Notifications.const_get package_name
          return false unless service_module.const_defined? :NotificationsApiService
          service_module = service_module.const_get :NotificationsApiService
          if transport == :rest
            return false unless service_module.const_defined? :Rest
            service_module = service_module.const_get :Rest
          end
          service_module.const_defined? :Client
        rescue ::LoadError
          false
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "notifications", "helpers.rb"
require "google/shopping/merchant/notifications/helpers" if ::File.file? helper_path
