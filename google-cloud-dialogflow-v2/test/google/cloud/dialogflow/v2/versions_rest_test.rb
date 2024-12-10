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
require "google/cloud/dialogflow/v2/version_pb"
require "google/cloud/dialogflow/v2/versions/rest"


class ::Google::Cloud::Dialogflow::V2::Versions::Rest::ClientTest < Minitest::Test
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

  def test_list_versions
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::ListVersionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_versions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Versions::Rest::ServiceStub.stub :transcode_list_versions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_versions_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Versions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_versions({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_versions parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_versions ::Google::Cloud::Dialogflow::V2::ListVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_versions({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_versions(::Google::Cloud::Dialogflow::V2::ListVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_versions_client_stub.call_count
      end
    end
  end

  def test_get_version
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::Version.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Versions::Rest::ServiceStub.stub :transcode_get_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_version_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Versions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_version({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_version name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_version ::Google::Cloud::Dialogflow::V2::GetVersionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_version({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_version(::Google::Cloud::Dialogflow::V2::GetVersionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_version_client_stub.call_count
      end
    end
  end

  def test_create_version
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::Version.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    version = {}

    create_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Versions::Rest::ServiceStub.stub :transcode_create_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_version_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Versions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_version({ parent: parent, version: version }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_version parent: parent, version: version do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_version ::Google::Cloud::Dialogflow::V2::CreateVersionRequest.new(parent: parent, version: version) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_version({ parent: parent, version: version }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_version(::Google::Cloud::Dialogflow::V2::CreateVersionRequest.new(parent: parent, version: version), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_version_client_stub.call_count
      end
    end
  end

  def test_update_version
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::V2::Version.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    version = {}
    update_mask = {}

    update_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Versions::Rest::ServiceStub.stub :transcode_update_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_version_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Versions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_version({ version: version, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_version version: version, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_version ::Google::Cloud::Dialogflow::V2::UpdateVersionRequest.new(version: version, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_version({ version: version, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_version(::Google::Cloud::Dialogflow::V2::UpdateVersionRequest.new(version: version, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_version_client_stub.call_count
      end
    end
  end

  def test_delete_version
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::V2::Versions::Rest::ServiceStub.stub :transcode_delete_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_version_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::V2::Versions::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_version({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_version name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_version ::Google::Cloud::Dialogflow::V2::DeleteVersionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_version({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_version(::Google::Cloud::Dialogflow::V2::DeleteVersionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_version_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::V2::Versions::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::Versions::Rest::Client::Configuration, config
  end
end
