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
require "google/cloud/discoveryengine/v1/grounded_generation_service_pb"
require "google/cloud/discovery_engine/v1/grounded_generation_service/rest"


class ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::ClientTest < Minitest::Test
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

  def test_generate_grounded_content
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    location = "hello world"
    system_instruction = {}
    contents = [{}]
    generation_spec = {}
    grounding_spec = {}
    user_labels = {}

    generate_grounded_content_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::ServiceStub.stub :transcode_generate_grounded_content_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, generate_grounded_content_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.generate_grounded_content({ location: location, system_instruction: system_instruction, contents: contents, generation_spec: generation_spec, grounding_spec: grounding_spec, user_labels: user_labels }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.generate_grounded_content location: location, system_instruction: system_instruction, contents: contents, generation_spec: generation_spec, grounding_spec: grounding_spec, user_labels: user_labels do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.generate_grounded_content ::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest.new(location: location, system_instruction: system_instruction, contents: contents, generation_spec: generation_spec, grounding_spec: grounding_spec, user_labels: user_labels) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.generate_grounded_content({ location: location, system_instruction: system_instruction, contents: contents, generation_spec: generation_spec, grounding_spec: grounding_spec, user_labels: user_labels }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.generate_grounded_content(::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest.new(location: location, system_instruction: system_instruction, contents: contents, generation_spec: generation_spec, grounding_spec: grounding_spec, user_labels: user_labels), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, generate_grounded_content_client_stub.call_count
      end
    end
  end

  def test_check_grounding
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::CheckGroundingResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    grounding_config = "hello world"
    answer_candidate = "hello world"
    facts = [{}]
    grounding_spec = {}
    user_labels = {}

    check_grounding_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::ServiceStub.stub :transcode_check_grounding_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, check_grounding_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.check_grounding({ grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.check_grounding grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.check_grounding ::Google::Cloud::DiscoveryEngine::V1::CheckGroundingRequest.new(grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.check_grounding({ grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.check_grounding(::Google::Cloud::DiscoveryEngine::V1::CheckGroundingRequest.new(grounding_config: grounding_config, answer_candidate: answer_candidate, facts: facts, grounding_spec: grounding_spec, user_labels: user_labels), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, check_grounding_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Rest::Client::Configuration, config
  end
end
