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

require "google/cloud/redis/cluster/v1beta1/cloud_redis_cluster_pb"
require "google/cloud/redis/cluster/v1beta1/cloud_redis_cluster_services_pb"
require "google/cloud/redis/cluster/v1beta1/cloud_redis_cluster"

class ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::ClientTest < Minitest::Test
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

  def test_list_clusters
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Redis::Cluster::V1beta1::ListClustersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_clusters_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_clusters, name
      assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::ListClustersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_clusters_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_clusters({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_clusters parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_clusters ::Google::Cloud::Redis::Cluster::V1beta1::ListClustersRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_clusters({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_clusters(::Google::Cloud::Redis::Cluster::V1beta1::ListClustersRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_clusters_client_stub.call_rpc_count
    end
  end

  def test_get_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Redis::Cluster::V1beta1::Cluster.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_cluster, name
      assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::GetClusterRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_cluster({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_cluster name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_cluster ::Google::Cloud::Redis::Cluster::V1beta1::GetClusterRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_cluster({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_cluster(::Google::Cloud::Redis::Cluster::V1beta1::GetClusterRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_cluster_client_stub.call_rpc_count
    end
  end

  def test_update_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    cluster = {}
    request_id = "hello world"

    update_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_cluster, name
      assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::UpdateClusterRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Redis::Cluster::V1beta1::Cluster), request["cluster"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_cluster({ update_mask: update_mask, cluster: cluster, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_cluster update_mask: update_mask, cluster: cluster, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_cluster ::Google::Cloud::Redis::Cluster::V1beta1::UpdateClusterRequest.new(update_mask: update_mask, cluster: cluster, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_cluster({ update_mask: update_mask, cluster: cluster, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_cluster(::Google::Cloud::Redis::Cluster::V1beta1::UpdateClusterRequest.new(update_mask: update_mask, cluster: cluster, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_cluster_client_stub.call_rpc_count
    end
  end

  def test_delete_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_cluster, name
      assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::DeleteClusterRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_cluster({ name: name, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_cluster name: name, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_cluster ::Google::Cloud::Redis::Cluster::V1beta1::DeleteClusterRequest.new(name: name, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_cluster({ name: name, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_cluster(::Google::Cloud::Redis::Cluster::V1beta1::DeleteClusterRequest.new(name: name, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_cluster_client_stub.call_rpc_count
    end
  end

  def test_create_cluster
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    cluster_id = "hello world"
    cluster = {}
    request_id = "hello world"

    create_cluster_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_cluster, name
      assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::CreateClusterRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["cluster_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Redis::Cluster::V1beta1::Cluster), request["cluster"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_cluster_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_cluster({ parent: parent, cluster_id: cluster_id, cluster: cluster, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_cluster parent: parent, cluster_id: cluster_id, cluster: cluster, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_cluster ::Google::Cloud::Redis::Cluster::V1beta1::CreateClusterRequest.new(parent: parent, cluster_id: cluster_id, cluster: cluster, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_cluster({ parent: parent, cluster_id: cluster_id, cluster: cluster, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_cluster(::Google::Cloud::Redis::Cluster::V1beta1::CreateClusterRequest.new(parent: parent, cluster_id: cluster_id, cluster: cluster, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_cluster_client_stub.call_rpc_count
    end
  end

  def test_get_cluster_certificate_authority
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Redis::Cluster::V1beta1::CertificateAuthority.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_cluster_certificate_authority_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_cluster_certificate_authority, name
      assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::GetClusterCertificateAuthorityRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_cluster_certificate_authority_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_cluster_certificate_authority({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_cluster_certificate_authority name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_cluster_certificate_authority ::Google::Cloud::Redis::Cluster::V1beta1::GetClusterCertificateAuthorityRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_cluster_certificate_authority({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_cluster_certificate_authority(::Google::Cloud::Redis::Cluster::V1beta1::GetClusterCertificateAuthorityRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_cluster_certificate_authority_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Redis::Cluster::V1beta1::CloudRedisCluster::Operations, client.operations_client
  end
end
