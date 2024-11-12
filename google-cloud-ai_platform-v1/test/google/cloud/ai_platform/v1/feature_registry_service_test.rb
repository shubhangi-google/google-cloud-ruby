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

require "gapic/grpc/service_stub"

require "google/cloud/aiplatform/v1/feature_registry_service_pb"
require "google/cloud/aiplatform/v1/feature_registry_service_services_pb"
require "google/cloud/ai_platform/v1/feature_registry_service"

class ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::ClientTest < Minitest::Test
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

      yield @response, @operation if block_given?

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_create_feature_group
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    feature_group = {}
    feature_group_id = "hello world"

    create_feature_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_feature_group, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateFeatureGroupRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::FeatureGroup), request["feature_group"]
      assert_equal "hello world", request["feature_group_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_feature_group_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_feature_group({ parent: parent, feature_group: feature_group, feature_group_id: feature_group_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_feature_group parent: parent, feature_group: feature_group, feature_group_id: feature_group_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_feature_group ::Google::Cloud::AIPlatform::V1::CreateFeatureGroupRequest.new(parent: parent, feature_group: feature_group, feature_group_id: feature_group_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_feature_group({ parent: parent, feature_group: feature_group, feature_group_id: feature_group_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_feature_group(::Google::Cloud::AIPlatform::V1::CreateFeatureGroupRequest.new(parent: parent, feature_group: feature_group, feature_group_id: feature_group_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_feature_group_client_stub.call_rpc_count
    end
  end

  def test_get_feature_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::FeatureGroup.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_feature_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_feature_group, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetFeatureGroupRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_feature_group_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_feature_group({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_feature_group name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_feature_group ::Google::Cloud::AIPlatform::V1::GetFeatureGroupRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_feature_group({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_feature_group(::Google::Cloud::AIPlatform::V1::GetFeatureGroupRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_feature_group_client_stub.call_rpc_count
    end
  end

  def test_list_feature_groups
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListFeatureGroupsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"

    list_feature_groups_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_feature_groups, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListFeatureGroupsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_feature_groups_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_feature_groups({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_feature_groups parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_feature_groups ::Google::Cloud::AIPlatform::V1::ListFeatureGroupsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_feature_groups({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_feature_groups(::Google::Cloud::AIPlatform::V1::ListFeatureGroupsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_feature_groups_client_stub.call_rpc_count
    end
  end

  def test_update_feature_group
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    feature_group = {}
    update_mask = {}

    update_feature_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_feature_group, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::UpdateFeatureGroupRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::FeatureGroup), request["feature_group"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_feature_group_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_feature_group({ feature_group: feature_group, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_feature_group feature_group: feature_group, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_feature_group ::Google::Cloud::AIPlatform::V1::UpdateFeatureGroupRequest.new(feature_group: feature_group, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_feature_group({ feature_group: feature_group, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_feature_group(::Google::Cloud::AIPlatform::V1::UpdateFeatureGroupRequest.new(feature_group: feature_group, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_feature_group_client_stub.call_rpc_count
    end
  end

  def test_delete_feature_group
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_feature_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_feature_group, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteFeatureGroupRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["force"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_feature_group_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_feature_group({ name: name, force: force }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_feature_group name: name, force: force do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_feature_group ::Google::Cloud::AIPlatform::V1::DeleteFeatureGroupRequest.new(name: name, force: force) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_feature_group({ name: name, force: force }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_feature_group(::Google::Cloud::AIPlatform::V1::DeleteFeatureGroupRequest.new(name: name, force: force), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_feature_group_client_stub.call_rpc_count
    end
  end

  def test_create_feature
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    feature = {}
    feature_id = "hello world"

    create_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_feature, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateFeatureRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Feature), request["feature"]
      assert_equal "hello world", request["feature_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_feature_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_feature({ parent: parent, feature: feature, feature_id: feature_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_feature parent: parent, feature: feature, feature_id: feature_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_feature ::Google::Cloud::AIPlatform::V1::CreateFeatureRequest.new(parent: parent, feature: feature, feature_id: feature_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_feature({ parent: parent, feature: feature, feature_id: feature_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_feature(::Google::Cloud::AIPlatform::V1::CreateFeatureRequest.new(parent: parent, feature: feature, feature_id: feature_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_feature_client_stub.call_rpc_count
    end
  end

  def test_batch_create_features
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_create_features_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_features, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::BatchCreateFeaturesRequest, request
      assert_equal "hello world", request["parent"]
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateFeatureRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_features_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_features({ parent: parent, requests: requests }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_features parent: parent, requests: requests do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_features ::Google::Cloud::AIPlatform::V1::BatchCreateFeaturesRequest.new(parent: parent, requests: requests) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_features({ parent: parent, requests: requests }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_features(::Google::Cloud::AIPlatform::V1::BatchCreateFeaturesRequest.new(parent: parent, requests: requests), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_features_client_stub.call_rpc_count
    end
  end

  def test_get_feature
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Feature.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_feature, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetFeatureRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_feature_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_feature({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_feature name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_feature ::Google::Cloud::AIPlatform::V1::GetFeatureRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_feature({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_feature(::Google::Cloud::AIPlatform::V1::GetFeatureRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_feature_client_stub.call_rpc_count
    end
  end

  def test_list_features
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListFeaturesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    read_mask = {}
    latest_stats_count = 42

    list_features_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_features, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListFeaturesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      assert_equal 42, request["latest_stats_count"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_features_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_features({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask, latest_stats_count: latest_stats_count }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_features parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask, latest_stats_count: latest_stats_count do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_features ::Google::Cloud::AIPlatform::V1::ListFeaturesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask, latest_stats_count: latest_stats_count) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_features({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask, latest_stats_count: latest_stats_count }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_features(::Google::Cloud::AIPlatform::V1::ListFeaturesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by, read_mask: read_mask, latest_stats_count: latest_stats_count), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_features_client_stub.call_rpc_count
    end
  end

  def test_update_feature
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    feature = {}
    update_mask = {}

    update_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_feature, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::UpdateFeatureRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Feature), request["feature"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_feature_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_feature({ feature: feature, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_feature feature: feature, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_feature ::Google::Cloud::AIPlatform::V1::UpdateFeatureRequest.new(feature: feature, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_feature({ feature: feature, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_feature(::Google::Cloud::AIPlatform::V1::UpdateFeatureRequest.new(feature: feature, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_feature_client_stub.call_rpc_count
    end
  end

  def test_delete_feature
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_feature_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_feature, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteFeatureRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_feature_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_feature({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_feature name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_feature ::Google::Cloud::AIPlatform::V1::DeleteFeatureRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_feature({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_feature(::Google::Cloud::AIPlatform::V1::DeleteFeatureRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_feature_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::AIPlatform::V1::FeatureRegistryService::Operations, client.operations_client
  end
end
