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
require "google/cloud/apigeeregistry/v1/provisioning_service_pb"
require "google/cloud/apigee_registry/v1/provisioning/rest"


class ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::ClientTest < Minitest::Test
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

  def test_create_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    instance_id = "hello world"
    instance = {}

    create_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::ServiceStub.stub :transcode_create_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_instance_client_stub do
        # Create client
        client = ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_instance({ parent: parent, instance_id: instance_id, instance: instance }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_instance parent: parent, instance_id: instance_id, instance: instance do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_instance ::Google::Cloud::ApigeeRegistry::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_instance({ parent: parent, instance_id: instance_id, instance: instance }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_instance(::Google::Cloud::ApigeeRegistry::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_instance_client_stub.call_count
      end
    end
  end

  def test_delete_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::ServiceStub.stub :transcode_delete_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_instance_client_stub do
        # Create client
        client = ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_instance({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_instance name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_instance ::Google::Cloud::ApigeeRegistry::V1::DeleteInstanceRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_instance({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_instance(::Google::Cloud::ApigeeRegistry::V1::DeleteInstanceRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_instance_client_stub.call_count
      end
    end
  end

  def test_get_instance
    # Create test objects.
    client_result = ::Google::Cloud::ApigeeRegistry::V1::Instance.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::ServiceStub.stub :transcode_get_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_instance_client_stub do
        # Create client
        client = ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_instance({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_instance name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_instance ::Google::Cloud::ApigeeRegistry::V1::GetInstanceRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_instance({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_instance(::Google::Cloud::ApigeeRegistry::V1::GetInstanceRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_instance_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ApigeeRegistry::V1::Provisioning::Rest::Client::Configuration, config
  end
end
