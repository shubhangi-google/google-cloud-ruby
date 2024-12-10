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

require "helper"
require "gapic/rest"
require "google/cloud/websecurityscanner/v1beta/web_security_scanner_pb"
require "google/cloud/web_security_scanner/v1beta/web_security_scanner/rest"


class ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_create_scan_config
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    scan_config = {}

    create_scan_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_create_scan_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_scan_config_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_scan_config({ parent: parent, scan_config: scan_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_scan_config parent: parent, scan_config: scan_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::CreateScanConfigRequest.new(parent: parent, scan_config: scan_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_scan_config({ parent: parent, scan_config: scan_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::CreateScanConfigRequest.new(parent: parent, scan_config: scan_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_scan_config_client_stub.call_count
      end
    end
  end

  def test_delete_scan_config
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_scan_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_delete_scan_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_scan_config_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_scan_config({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_scan_config name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::DeleteScanConfigRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_scan_config({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::DeleteScanConfigRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_scan_config_client_stub.call_count
      end
    end
  end

  def test_get_scan_config
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_scan_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_get_scan_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_scan_config_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_scan_config({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_scan_config name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::GetScanConfigRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_scan_config({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::GetScanConfigRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_scan_config_client_stub.call_count
      end
    end
  end

  def test_list_scan_configs
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ListScanConfigsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_scan_configs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_list_scan_configs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_scan_configs_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_scan_configs({ parent: parent, page_token: page_token, page_size: page_size }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_scan_configs parent: parent, page_token: page_token, page_size: page_size do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_scan_configs ::Google::Cloud::WebSecurityScanner::V1beta::ListScanConfigsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_scan_configs({ parent: parent, page_token: page_token, page_size: page_size }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_scan_configs(::Google::Cloud::WebSecurityScanner::V1beta::ListScanConfigsRequest.new(parent: parent, page_token: page_token, page_size: page_size), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_scan_configs_client_stub.call_count
      end
    end
  end

  def test_update_scan_config
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ScanConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    scan_config = {}
    update_mask = {}

    update_scan_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_update_scan_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_scan_config_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_scan_config({ scan_config: scan_config, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_scan_config scan_config: scan_config, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_scan_config ::Google::Cloud::WebSecurityScanner::V1beta::UpdateScanConfigRequest.new(scan_config: scan_config, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_scan_config({ scan_config: scan_config, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_scan_config(::Google::Cloud::WebSecurityScanner::V1beta::UpdateScanConfigRequest.new(scan_config: scan_config, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_scan_config_client_stub.call_count
      end
    end
  end

  def test_start_scan_run
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ScanRun.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    start_scan_run_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_start_scan_run_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, start_scan_run_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.start_scan_run({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.start_scan_run name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.start_scan_run ::Google::Cloud::WebSecurityScanner::V1beta::StartScanRunRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.start_scan_run({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.start_scan_run(::Google::Cloud::WebSecurityScanner::V1beta::StartScanRunRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, start_scan_run_client_stub.call_count
      end
    end
  end

  def test_get_scan_run
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ScanRun.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_scan_run_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_get_scan_run_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_scan_run_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_scan_run({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_scan_run name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_scan_run ::Google::Cloud::WebSecurityScanner::V1beta::GetScanRunRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_scan_run({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_scan_run(::Google::Cloud::WebSecurityScanner::V1beta::GetScanRunRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_scan_run_client_stub.call_count
      end
    end
  end

  def test_list_scan_runs
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ListScanRunsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_scan_runs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_list_scan_runs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_scan_runs_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_scan_runs({ parent: parent, page_token: page_token, page_size: page_size }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_scan_runs parent: parent, page_token: page_token, page_size: page_size do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_scan_runs ::Google::Cloud::WebSecurityScanner::V1beta::ListScanRunsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_scan_runs({ parent: parent, page_token: page_token, page_size: page_size }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_scan_runs(::Google::Cloud::WebSecurityScanner::V1beta::ListScanRunsRequest.new(parent: parent, page_token: page_token, page_size: page_size), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_scan_runs_client_stub.call_count
      end
    end
  end

  def test_stop_scan_run
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ScanRun.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    stop_scan_run_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_stop_scan_run_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, stop_scan_run_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.stop_scan_run({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.stop_scan_run name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.stop_scan_run ::Google::Cloud::WebSecurityScanner::V1beta::StopScanRunRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.stop_scan_run({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.stop_scan_run(::Google::Cloud::WebSecurityScanner::V1beta::StopScanRunRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, stop_scan_run_client_stub.call_count
      end
    end
  end

  def test_list_crawled_urls
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ListCrawledUrlsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_crawled_urls_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_list_crawled_urls_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_crawled_urls_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_crawled_urls({ parent: parent, page_token: page_token, page_size: page_size }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_crawled_urls parent: parent, page_token: page_token, page_size: page_size do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_crawled_urls ::Google::Cloud::WebSecurityScanner::V1beta::ListCrawledUrlsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_crawled_urls({ parent: parent, page_token: page_token, page_size: page_size }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_crawled_urls(::Google::Cloud::WebSecurityScanner::V1beta::ListCrawledUrlsRequest.new(parent: parent, page_token: page_token, page_size: page_size), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_crawled_urls_client_stub.call_count
      end
    end
  end

  def test_get_finding
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::Finding.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_finding_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_get_finding_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_finding_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_finding({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_finding name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_finding ::Google::Cloud::WebSecurityScanner::V1beta::GetFindingRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_finding({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_finding(::Google::Cloud::WebSecurityScanner::V1beta::GetFindingRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_finding_client_stub.call_count
      end
    end
  end

  def test_list_findings
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_token = "hello world"
    page_size = 42

    list_findings_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_list_findings_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_findings_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_findings({ parent: parent, filter: filter, page_token: page_token, page_size: page_size }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_findings parent: parent, filter: filter, page_token: page_token, page_size: page_size do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_findings ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingsRequest.new(parent: parent, filter: filter, page_token: page_token, page_size: page_size) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_findings({ parent: parent, filter: filter, page_token: page_token, page_size: page_size }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_findings(::Google::Cloud::WebSecurityScanner::V1beta::ListFindingsRequest.new(parent: parent, filter: filter, page_token: page_token, page_size: page_size), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_findings_client_stub.call_count
      end
    end
  end

  def test_list_finding_type_stats
    # Create test objects.
    client_result = ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingTypeStatsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    list_finding_type_stats_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::ServiceStub.stub :transcode_list_finding_type_stats_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_finding_type_stats_client_stub do
        # Create client
        client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_finding_type_stats({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_finding_type_stats parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_finding_type_stats ::Google::Cloud::WebSecurityScanner::V1beta::ListFindingTypeStatsRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_finding_type_stats({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_finding_type_stats(::Google::Cloud::WebSecurityScanner::V1beta::ListFindingTypeStatsRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_finding_type_stats_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::WebSecurityScanner::V1beta::WebSecurityScanner::Rest::Client::Configuration, config
  end
end
