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

require "helper"
require "google/ads/ad_manager"
require "gapic/common"
require "gapic/rest"

class Google::Ads::AdManager::ClientConstructionMinitest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_ad_unit_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.ad_unit_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::AdUnitService::Rest::Client, client
    end
  end

  def test_company_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.company_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::CompanyService::Rest::Client, client
    end
  end

  def test_custom_field_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.custom_field_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::CustomFieldService::Rest::Client, client
    end
  end

  def test_custom_targeting_key_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.custom_targeting_key_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::CustomTargetingKeyService::Rest::Client, client
    end
  end

  def test_custom_targeting_value_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.custom_targeting_value_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::CustomTargetingValueService::Rest::Client, client
    end
  end

  def test_entity_signals_mapping_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.entity_signals_mapping_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::EntitySignalsMappingService::Rest::Client, client
    end
  end

  def test_network_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.network_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::NetworkService::Rest::Client, client
    end
  end

  def test_order_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.order_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::OrderService::Rest::Client, client
    end
  end

  def test_placement_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.placement_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::PlacementService::Rest::Client, client
    end
  end

  def test_report_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.report_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::ReportService::Rest::Client, client
    end
  end

  def test_role_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.role_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::RoleService::Rest::Client, client
    end
  end

  def test_taxonomy_category_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.taxonomy_category_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::TaxonomyCategoryService::Rest::Client, client
    end
  end

  def test_user_service_rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Ads::AdManager.user_service do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Ads::AdManager::V1::UserService::Rest::Client, client
    end
  end
end
