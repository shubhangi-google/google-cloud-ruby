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
require "google/shopping/merchant/data_sources"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Shopping::Merchant::DataSources::ClientConstructionMinitest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_data_sources_service_grpc
    skip unless Google::Shopping::Merchant::DataSources.data_sources_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::DataSources.data_sources_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::DataSources::V1beta::DataSourcesService::Client, client
    end
  end

  def test_data_sources_service_rest
    skip unless Google::Shopping::Merchant::DataSources.data_sources_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::DataSources.data_sources_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::DataSources::V1beta::DataSourcesService::Rest::Client, client
    end
  end

  def test_file_uploads_service_grpc
    skip unless Google::Shopping::Merchant::DataSources.file_uploads_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::DataSources.file_uploads_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::DataSources::V1beta::FileUploadsService::Client, client
    end
  end

  def test_file_uploads_service_rest
    skip unless Google::Shopping::Merchant::DataSources.file_uploads_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::DataSources.file_uploads_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::DataSources::V1beta::FileUploadsService::Rest::Client, client
    end
  end
end
