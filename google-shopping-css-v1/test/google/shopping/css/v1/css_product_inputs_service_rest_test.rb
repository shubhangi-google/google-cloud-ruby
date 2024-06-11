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
require "google/shopping/css/v1/css_product_inputs_pb"
require "google/shopping/css/v1/css_product_inputs_service/rest"


class ::Google::Shopping::Css::V1::CssProductInputsService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
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
  end

  def test_insert_css_product_input
    # Create test objects.
    client_result = ::Google::Shopping::Css::V1::CssProductInput.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    css_product_input = {}
    feed_id = 42

    insert_css_product_input_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Css::V1::CssProductInputsService::Rest::ServiceStub.stub :transcode_insert_css_product_input_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, insert_css_product_input_client_stub do
        # Create client
        client = ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.insert_css_product_input({ parent: parent, css_product_input: css_product_input, feed_id: feed_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.insert_css_product_input parent: parent, css_product_input: css_product_input, feed_id: feed_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.insert_css_product_input ::Google::Shopping::Css::V1::InsertCssProductInputRequest.new(parent: parent, css_product_input: css_product_input, feed_id: feed_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.insert_css_product_input({ parent: parent, css_product_input: css_product_input, feed_id: feed_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.insert_css_product_input(::Google::Shopping::Css::V1::InsertCssProductInputRequest.new(parent: parent, css_product_input: css_product_input, feed_id: feed_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, insert_css_product_input_client_stub.call_count
      end
    end
  end

  def test_delete_css_product_input
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    supplemental_feed_id = 42

    delete_css_product_input_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Css::V1::CssProductInputsService::Rest::ServiceStub.stub :transcode_delete_css_product_input_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_css_product_input_client_stub do
        # Create client
        client = ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_css_product_input({ name: name, supplemental_feed_id: supplemental_feed_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_css_product_input name: name, supplemental_feed_id: supplemental_feed_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_css_product_input ::Google::Shopping::Css::V1::DeleteCssProductInputRequest.new(name: name, supplemental_feed_id: supplemental_feed_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_css_product_input({ name: name, supplemental_feed_id: supplemental_feed_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_css_product_input(::Google::Shopping::Css::V1::DeleteCssProductInputRequest.new(name: name, supplemental_feed_id: supplemental_feed_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_css_product_input_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client::Configuration, config
  end
end
