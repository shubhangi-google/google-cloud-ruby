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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/shopping/merchant/inventories/version"

require "googleauth"

module Google
  module Shopping
    module Merchant
      module Inventories
        ##
        # Create a new client object for LocalInventoryService.
        #
        # By default, this returns an instance of
        # [Google::Shopping::Merchant::Inventories::V1beta::LocalInventoryService::Client](https://rubydoc.info/gems/google-shopping-merchant-inventories-v1beta/Google/Shopping/Merchant/Inventories/V1beta/LocalInventoryService/Client)
        # for a gRPC client for version V1beta of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the LocalInventoryService service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # Raises an exception if the currently installed versioned client gem for the
        # given API version does not support the given transport of the LocalInventoryService service.
        # You can determine whether the method will succeed by calling
        # {Google::Shopping::Merchant::Inventories.local_inventory_service_available?}.
        #
        # ## About LocalInventoryService
        #
        # Service to manage local inventory for products
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v1beta`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.local_inventory_service version: :v1beta, transport: :grpc, &block
          require "google/shopping/merchant/inventories/#{version.to_s.downcase}"

          package_name = Google::Shopping::Merchant::Inventories
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Shopping::Merchant::Inventories.const_get(package_name).const_get(:LocalInventoryService)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Determines whether the LocalInventoryService service is supported by the current client.
        # If true, you can retrieve a client object by calling {Google::Shopping::Merchant::Inventories.local_inventory_service}.
        # If false, that method will raise an exception. This could happen if the given
        # API version does not exist or does not support the LocalInventoryService service,
        # or if the versioned client gem needs an update to support the LocalInventoryService service.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v1beta`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [boolean] Whether the service is available.
        #
        def self.local_inventory_service_available? version: :v1beta, transport: :grpc
          require "google/shopping/merchant/inventories/#{version.to_s.downcase}"
          package_name = Google::Shopping::Merchant::Inventories
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          return false unless package_name
          service_module = Google::Shopping::Merchant::Inventories.const_get package_name
          return false unless service_module.const_defined? :LocalInventoryService
          service_module = service_module.const_get :LocalInventoryService
          if transport == :rest
            return false unless service_module.const_defined? :Rest
            service_module = service_module.const_get :Rest
          end
          service_module.const_defined? :Client
        rescue ::LoadError
          false
        end

        ##
        # Create a new client object for RegionalInventoryService.
        #
        # By default, this returns an instance of
        # [Google::Shopping::Merchant::Inventories::V1beta::RegionalInventoryService::Client](https://rubydoc.info/gems/google-shopping-merchant-inventories-v1beta/Google/Shopping/Merchant/Inventories/V1beta/RegionalInventoryService/Client)
        # for a gRPC client for version V1beta of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the RegionalInventoryService service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # Raises an exception if the currently installed versioned client gem for the
        # given API version does not support the given transport of the RegionalInventoryService service.
        # You can determine whether the method will succeed by calling
        # {Google::Shopping::Merchant::Inventories.regional_inventory_service_available?}.
        #
        # ## About RegionalInventoryService
        #
        # Service to manage regional inventory for products. There is also separate
        # `regions` resource and API to manage regions definitions.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v1beta`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.regional_inventory_service version: :v1beta, transport: :grpc, &block
          require "google/shopping/merchant/inventories/#{version.to_s.downcase}"

          package_name = Google::Shopping::Merchant::Inventories
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Shopping::Merchant::Inventories.const_get(package_name).const_get(:RegionalInventoryService)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Determines whether the RegionalInventoryService service is supported by the current client.
        # If true, you can retrieve a client object by calling {Google::Shopping::Merchant::Inventories.regional_inventory_service}.
        # If false, that method will raise an exception. This could happen if the given
        # API version does not exist or does not support the RegionalInventoryService service,
        # or if the versioned client gem needs an update to support the RegionalInventoryService service.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v1beta`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [boolean] Whether the service is available.
        #
        def self.regional_inventory_service_available? version: :v1beta, transport: :grpc
          require "google/shopping/merchant/inventories/#{version.to_s.downcase}"
          package_name = Google::Shopping::Merchant::Inventories
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          return false unless package_name
          service_module = Google::Shopping::Merchant::Inventories.const_get package_name
          return false unless service_module.const_defined? :RegionalInventoryService
          service_module = service_module.const_get :RegionalInventoryService
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

helper_path = ::File.join __dir__, "inventories", "helpers.rb"
require "google/shopping/merchant/inventories/helpers" if ::File.file? helper_path
