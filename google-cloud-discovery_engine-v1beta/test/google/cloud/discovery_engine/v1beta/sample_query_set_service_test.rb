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

require "gapic/grpc/service_stub"

require "google/cloud/discoveryengine/v1beta/sample_query_set_service_pb"
require "google/cloud/discoveryengine/v1beta/sample_query_set_service_services_pb"
require "google/cloud/discovery_engine/v1beta/sample_query_set_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
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

  def test_get_sample_query_set
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_sample_query_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_sample_query_set, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::GetSampleQuerySetRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_sample_query_set_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_sample_query_set({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_sample_query_set name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_sample_query_set ::Google::Cloud::DiscoveryEngine::V1beta::GetSampleQuerySetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_sample_query_set({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_sample_query_set(::Google::Cloud::DiscoveryEngine::V1beta::GetSampleQuerySetRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_sample_query_set_client_stub.call_rpc_count
    end
  end

  def test_list_sample_query_sets
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::ListSampleQuerySetsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_sample_query_sets_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_sample_query_sets, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ListSampleQuerySetsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_sample_query_sets_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_sample_query_sets({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_sample_query_sets parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_sample_query_sets ::Google::Cloud::DiscoveryEngine::V1beta::ListSampleQuerySetsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_sample_query_sets({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_sample_query_sets(::Google::Cloud::DiscoveryEngine::V1beta::ListSampleQuerySetsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_sample_query_sets_client_stub.call_rpc_count
    end
  end

  def test_create_sample_query_set
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    sample_query_set = {}
    sample_query_set_id = "hello world"

    create_sample_query_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_sample_query_set, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::CreateSampleQuerySetRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySet), request["sample_query_set"]
      assert_equal "hello world", request["sample_query_set_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_sample_query_set_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_sample_query_set({ parent: parent, sample_query_set: sample_query_set, sample_query_set_id: sample_query_set_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_sample_query_set parent: parent, sample_query_set: sample_query_set, sample_query_set_id: sample_query_set_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_sample_query_set ::Google::Cloud::DiscoveryEngine::V1beta::CreateSampleQuerySetRequest.new(parent: parent, sample_query_set: sample_query_set, sample_query_set_id: sample_query_set_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_sample_query_set({ parent: parent, sample_query_set: sample_query_set, sample_query_set_id: sample_query_set_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_sample_query_set(::Google::Cloud::DiscoveryEngine::V1beta::CreateSampleQuerySetRequest.new(parent: parent, sample_query_set: sample_query_set, sample_query_set_id: sample_query_set_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_sample_query_set_client_stub.call_rpc_count
    end
  end

  def test_update_sample_query_set
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    sample_query_set = {}
    update_mask = {}

    update_sample_query_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_sample_query_set, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::UpdateSampleQuerySetRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySet), request["sample_query_set"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_sample_query_set_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_sample_query_set({ sample_query_set: sample_query_set, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_sample_query_set sample_query_set: sample_query_set, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_sample_query_set ::Google::Cloud::DiscoveryEngine::V1beta::UpdateSampleQuerySetRequest.new(sample_query_set: sample_query_set, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_sample_query_set({ sample_query_set: sample_query_set, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_sample_query_set(::Google::Cloud::DiscoveryEngine::V1beta::UpdateSampleQuerySetRequest.new(sample_query_set: sample_query_set, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_sample_query_set_client_stub.call_rpc_count
    end
  end

  def test_delete_sample_query_set
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_sample_query_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_sample_query_set, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::DeleteSampleQuerySetRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_sample_query_set_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_sample_query_set({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_sample_query_set name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_sample_query_set ::Google::Cloud::DiscoveryEngine::V1beta::DeleteSampleQuerySetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_sample_query_set({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_sample_query_set(::Google::Cloud::DiscoveryEngine::V1beta::DeleteSampleQuerySetRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_sample_query_set_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SampleQuerySetService::Client::Configuration, config
  end
end
