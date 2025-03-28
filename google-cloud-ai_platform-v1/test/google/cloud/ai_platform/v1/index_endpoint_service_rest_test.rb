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
require "gapic/rest"
require "google/cloud/aiplatform/v1/index_endpoint_service_pb"
require "google/cloud/ai_platform/v1/index_endpoint_service/rest"


class ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ClientTest < Minitest::Test
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

    def logger
      nil
    end
  end

  def test_create_index_endpoint
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    index_endpoint = {}

    create_index_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_create_index_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_index_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_index_endpoint({ parent: parent, index_endpoint: index_endpoint }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_index_endpoint parent: parent, index_endpoint: index_endpoint do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_index_endpoint ::Google::Cloud::AIPlatform::V1::CreateIndexEndpointRequest.new(parent: parent, index_endpoint: index_endpoint) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_index_endpoint({ parent: parent, index_endpoint: index_endpoint }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_index_endpoint(::Google::Cloud::AIPlatform::V1::CreateIndexEndpointRequest.new(parent: parent, index_endpoint: index_endpoint), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_index_endpoint_client_stub.call_count
      end
    end
  end

  def test_get_index_endpoint
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::IndexEndpoint.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_index_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_get_index_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_index_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_index_endpoint({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_index_endpoint name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_index_endpoint ::Google::Cloud::AIPlatform::V1::GetIndexEndpointRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_index_endpoint({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_index_endpoint(::Google::Cloud::AIPlatform::V1::GetIndexEndpointRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_index_endpoint_client_stub.call_count
      end
    end
  end

  def test_list_index_endpoints
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::ListIndexEndpointsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    read_mask = {}

    list_index_endpoints_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_list_index_endpoints_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_index_endpoints_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_index_endpoints({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_index_endpoints parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_index_endpoints ::Google::Cloud::AIPlatform::V1::ListIndexEndpointsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_index_endpoints({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_index_endpoints(::Google::Cloud::AIPlatform::V1::ListIndexEndpointsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_index_endpoints_client_stub.call_count
      end
    end
  end

  def test_update_index_endpoint
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::IndexEndpoint.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    index_endpoint = {}
    update_mask = {}

    update_index_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_update_index_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_index_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_index_endpoint({ index_endpoint: index_endpoint, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_index_endpoint index_endpoint: index_endpoint, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_index_endpoint ::Google::Cloud::AIPlatform::V1::UpdateIndexEndpointRequest.new(index_endpoint: index_endpoint, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_index_endpoint({ index_endpoint: index_endpoint, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_index_endpoint(::Google::Cloud::AIPlatform::V1::UpdateIndexEndpointRequest.new(index_endpoint: index_endpoint, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_index_endpoint_client_stub.call_count
      end
    end
  end

  def test_delete_index_endpoint
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_index_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_delete_index_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_index_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_index_endpoint({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_index_endpoint name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_index_endpoint ::Google::Cloud::AIPlatform::V1::DeleteIndexEndpointRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_index_endpoint({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_index_endpoint(::Google::Cloud::AIPlatform::V1::DeleteIndexEndpointRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_index_endpoint_client_stub.call_count
      end
    end
  end

  def test_deploy_index
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    index_endpoint = "hello world"
    deployed_index = {}

    deploy_index_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_deploy_index_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, deploy_index_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.deploy_index({ index_endpoint: index_endpoint, deployed_index: deployed_index }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.deploy_index index_endpoint: index_endpoint, deployed_index: deployed_index do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.deploy_index ::Google::Cloud::AIPlatform::V1::DeployIndexRequest.new(index_endpoint: index_endpoint, deployed_index: deployed_index) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.deploy_index({ index_endpoint: index_endpoint, deployed_index: deployed_index }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.deploy_index(::Google::Cloud::AIPlatform::V1::DeployIndexRequest.new(index_endpoint: index_endpoint, deployed_index: deployed_index), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, deploy_index_client_stub.call_count
      end
    end
  end

  def test_undeploy_index
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    index_endpoint = "hello world"
    deployed_index_id = "hello world"

    undeploy_index_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_undeploy_index_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, undeploy_index_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.undeploy_index({ index_endpoint: index_endpoint, deployed_index_id: deployed_index_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.undeploy_index index_endpoint: index_endpoint, deployed_index_id: deployed_index_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.undeploy_index ::Google::Cloud::AIPlatform::V1::UndeployIndexRequest.new(index_endpoint: index_endpoint, deployed_index_id: deployed_index_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.undeploy_index({ index_endpoint: index_endpoint, deployed_index_id: deployed_index_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.undeploy_index(::Google::Cloud::AIPlatform::V1::UndeployIndexRequest.new(index_endpoint: index_endpoint, deployed_index_id: deployed_index_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, undeploy_index_client_stub.call_count
      end
    end
  end

  def test_mutate_deployed_index
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    index_endpoint = "hello world"
    deployed_index = {}

    mutate_deployed_index_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::ServiceStub.stub :transcode_mutate_deployed_index_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, mutate_deployed_index_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.mutate_deployed_index({ index_endpoint: index_endpoint, deployed_index: deployed_index }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.mutate_deployed_index index_endpoint: index_endpoint, deployed_index: deployed_index do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.mutate_deployed_index ::Google::Cloud::AIPlatform::V1::MutateDeployedIndexRequest.new(index_endpoint: index_endpoint, deployed_index: deployed_index) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.mutate_deployed_index({ index_endpoint: index_endpoint, deployed_index: deployed_index }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.mutate_deployed_index(::Google::Cloud::AIPlatform::V1::MutateDeployedIndexRequest.new(index_endpoint: index_endpoint, deployed_index: deployed_index), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, mutate_deployed_index_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::IndexEndpointService::Rest::Client::Configuration, config
  end
end
