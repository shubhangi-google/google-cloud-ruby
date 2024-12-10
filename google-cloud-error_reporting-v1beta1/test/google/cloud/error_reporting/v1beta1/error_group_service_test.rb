# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/devtools/clouderrorreporting/v1beta1/error_group_service_pb"
require "google/devtools/clouderrorreporting/v1beta1/error_group_service_services_pb"
require "google/cloud/error_reporting/v1beta1/error_group_service"

class ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroupService::ClientTest < Minitest::Test
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

  def test_get_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroup.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    group_name = "hello world"

    get_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_group, name
      assert_kind_of ::Google::Cloud::ErrorReporting::V1beta1::GetGroupRequest, request
      assert_equal "hello world", request["group_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_group_client_stub do
      # Create client
      client = ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_group({ group_name: group_name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_group group_name: group_name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_group ::Google::Cloud::ErrorReporting::V1beta1::GetGroupRequest.new(group_name: group_name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_group({ group_name: group_name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_group(::Google::Cloud::ErrorReporting::V1beta1::GetGroupRequest.new(group_name: group_name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_group_client_stub.call_rpc_count
    end
  end

  def test_update_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroup.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    group = {}

    update_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_group, name
      assert_kind_of ::Google::Cloud::ErrorReporting::V1beta1::UpdateGroupRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroup), request["group"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_group_client_stub do
      # Create client
      client = ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_group({ group: group }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_group group: group do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_group ::Google::Cloud::ErrorReporting::V1beta1::UpdateGroupRequest.new(group: group) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_group({ group: group }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_group(::Google::Cloud::ErrorReporting::V1beta1::UpdateGroupRequest.new(group: group), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_group_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroupService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ErrorReporting::V1beta1::ErrorGroupService::Client::Configuration, config
  end
end
