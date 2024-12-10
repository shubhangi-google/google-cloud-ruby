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
require "google/cloud/aiplatform/v1/endpoint_service_pb"
require "google/cloud/ai_platform/v1/endpoint_service/rest"


class ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ClientTest < Minitest::Test
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

  def test_create_endpoint
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    endpoint = {}
    endpoint_id = "hello world"

    create_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_create_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_endpoint({ parent: parent, endpoint: endpoint, endpoint_id: endpoint_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_endpoint parent: parent, endpoint: endpoint, endpoint_id: endpoint_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_endpoint ::Google::Cloud::AIPlatform::V1::CreateEndpointRequest.new(parent: parent, endpoint: endpoint, endpoint_id: endpoint_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_endpoint({ parent: parent, endpoint: endpoint, endpoint_id: endpoint_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_endpoint(::Google::Cloud::AIPlatform::V1::CreateEndpointRequest.new(parent: parent, endpoint: endpoint, endpoint_id: endpoint_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_endpoint_client_stub.call_count
      end
    end
  end

  def test_get_endpoint
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::Endpoint.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_get_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_endpoint({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_endpoint name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_endpoint ::Google::Cloud::AIPlatform::V1::GetEndpointRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_endpoint({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_endpoint(::Google::Cloud::AIPlatform::V1::GetEndpointRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_endpoint_client_stub.call_count
      end
    end
  end

  def test_list_endpoints
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::ListEndpointsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    read_mask = {}
    order_by = "hello world"

    list_endpoints_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_list_endpoints_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_endpoints_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_endpoints({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_endpoints parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_endpoints ::Google::Cloud::AIPlatform::V1::ListEndpointsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_endpoints({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_endpoints(::Google::Cloud::AIPlatform::V1::ListEndpointsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, read_mask: read_mask, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_endpoints_client_stub.call_count
      end
    end
  end

  def test_update_endpoint
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::Endpoint.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = {}
    update_mask = {}

    update_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_update_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_endpoint({ endpoint: endpoint, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_endpoint endpoint: endpoint, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_endpoint ::Google::Cloud::AIPlatform::V1::UpdateEndpointRequest.new(endpoint: endpoint, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_endpoint({ endpoint: endpoint, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_endpoint(::Google::Cloud::AIPlatform::V1::UpdateEndpointRequest.new(endpoint: endpoint, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_endpoint_client_stub.call_count
      end
    end
  end

  def test_update_endpoint_long_running
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = {}

    update_endpoint_long_running_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_update_endpoint_long_running_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_endpoint_long_running_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_endpoint_long_running({ endpoint: endpoint }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_endpoint_long_running endpoint: endpoint do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_endpoint_long_running ::Google::Cloud::AIPlatform::V1::UpdateEndpointLongRunningRequest.new(endpoint: endpoint) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_endpoint_long_running({ endpoint: endpoint }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_endpoint_long_running(::Google::Cloud::AIPlatform::V1::UpdateEndpointLongRunningRequest.new(endpoint: endpoint), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_endpoint_long_running_client_stub.call_count
      end
    end
  end

  def test_delete_endpoint
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_endpoint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_delete_endpoint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_endpoint_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_endpoint({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_endpoint name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_endpoint ::Google::Cloud::AIPlatform::V1::DeleteEndpointRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_endpoint({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_endpoint(::Google::Cloud::AIPlatform::V1::DeleteEndpointRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_endpoint_client_stub.call_count
      end
    end
  end

  def test_deploy_model
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    deployed_model = {}
    traffic_split = {}

    deploy_model_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_deploy_model_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, deploy_model_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.deploy_model({ endpoint: endpoint, deployed_model: deployed_model, traffic_split: traffic_split }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.deploy_model endpoint: endpoint, deployed_model: deployed_model, traffic_split: traffic_split do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.deploy_model ::Google::Cloud::AIPlatform::V1::DeployModelRequest.new(endpoint: endpoint, deployed_model: deployed_model, traffic_split: traffic_split) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.deploy_model({ endpoint: endpoint, deployed_model: deployed_model, traffic_split: traffic_split }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.deploy_model(::Google::Cloud::AIPlatform::V1::DeployModelRequest.new(endpoint: endpoint, deployed_model: deployed_model, traffic_split: traffic_split), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, deploy_model_client_stub.call_count
      end
    end
  end

  def test_undeploy_model
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    deployed_model_id = "hello world"
    traffic_split = {}

    undeploy_model_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_undeploy_model_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, undeploy_model_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.undeploy_model({ endpoint: endpoint, deployed_model_id: deployed_model_id, traffic_split: traffic_split }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.undeploy_model endpoint: endpoint, deployed_model_id: deployed_model_id, traffic_split: traffic_split do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.undeploy_model ::Google::Cloud::AIPlatform::V1::UndeployModelRequest.new(endpoint: endpoint, deployed_model_id: deployed_model_id, traffic_split: traffic_split) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.undeploy_model({ endpoint: endpoint, deployed_model_id: deployed_model_id, traffic_split: traffic_split }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.undeploy_model(::Google::Cloud::AIPlatform::V1::UndeployModelRequest.new(endpoint: endpoint, deployed_model_id: deployed_model_id, traffic_split: traffic_split), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, undeploy_model_client_stub.call_count
      end
    end
  end

  def test_mutate_deployed_model
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    deployed_model = {}
    update_mask = {}

    mutate_deployed_model_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::ServiceStub.stub :transcode_mutate_deployed_model_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, mutate_deployed_model_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.mutate_deployed_model({ endpoint: endpoint, deployed_model: deployed_model, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.mutate_deployed_model endpoint: endpoint, deployed_model: deployed_model, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.mutate_deployed_model ::Google::Cloud::AIPlatform::V1::MutateDeployedModelRequest.new(endpoint: endpoint, deployed_model: deployed_model, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.mutate_deployed_model({ endpoint: endpoint, deployed_model: deployed_model, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.mutate_deployed_model(::Google::Cloud::AIPlatform::V1::MutateDeployedModelRequest.new(endpoint: endpoint, deployed_model: deployed_model, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, mutate_deployed_model_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::EndpointService::Rest::Client::Configuration, config
  end
end
