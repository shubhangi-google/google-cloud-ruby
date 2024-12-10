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

require "google/pubsub/v1/pubsub_pb"
require "google/pubsub/v1/pubsub_services_pb"
require "google/cloud/pubsub/v1/publisher"

class ::Google::Cloud::PubSub::V1::Publisher::ClientTest < Minitest::Test
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

  def test_create_topic
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Topic.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    labels = {}
    message_storage_policy = {}
    kms_key_name = "hello world"
    schema_settings = {}
    satisfies_pzs = true
    message_retention_duration = {}
    state = :STATE_UNSPECIFIED
    ingestion_data_source_settings = {}

    create_topic_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_topic, name
      assert_kind_of ::Google::Cloud::PubSub::V1::Topic, request
      assert_equal "hello world", request["name"]
      assert_equal({}, request["labels"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::PubSub::V1::MessageStoragePolicy), request["message_storage_policy"]
      assert_equal "hello world", request["kms_key_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::PubSub::V1::SchemaSettings), request["schema_settings"]
      assert_equal true, request["satisfies_pzs"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Duration), request["message_retention_duration"]
      assert_equal :STATE_UNSPECIFIED, request["state"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::PubSub::V1::IngestionDataSourceSettings), request["ingestion_data_source_settings"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_topic_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_topic({ name: name, labels: labels, message_storage_policy: message_storage_policy, kms_key_name: kms_key_name, schema_settings: schema_settings, satisfies_pzs: satisfies_pzs, message_retention_duration: message_retention_duration, state: state, ingestion_data_source_settings: ingestion_data_source_settings }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_topic name: name, labels: labels, message_storage_policy: message_storage_policy, kms_key_name: kms_key_name, schema_settings: schema_settings, satisfies_pzs: satisfies_pzs, message_retention_duration: message_retention_duration, state: state, ingestion_data_source_settings: ingestion_data_source_settings do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_topic ::Google::Cloud::PubSub::V1::Topic.new(name: name, labels: labels, message_storage_policy: message_storage_policy, kms_key_name: kms_key_name, schema_settings: schema_settings, satisfies_pzs: satisfies_pzs, message_retention_duration: message_retention_duration, state: state, ingestion_data_source_settings: ingestion_data_source_settings) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_topic({ name: name, labels: labels, message_storage_policy: message_storage_policy, kms_key_name: kms_key_name, schema_settings: schema_settings, satisfies_pzs: satisfies_pzs, message_retention_duration: message_retention_duration, state: state, ingestion_data_source_settings: ingestion_data_source_settings }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_topic(::Google::Cloud::PubSub::V1::Topic.new(name: name, labels: labels, message_storage_policy: message_storage_policy, kms_key_name: kms_key_name, schema_settings: schema_settings, satisfies_pzs: satisfies_pzs, message_retention_duration: message_retention_duration, state: state, ingestion_data_source_settings: ingestion_data_source_settings), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_topic_client_stub.call_rpc_count
    end
  end

  def test_update_topic
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Topic.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    topic = {}
    update_mask = {}

    update_topic_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_topic, name
      assert_kind_of ::Google::Cloud::PubSub::V1::UpdateTopicRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::PubSub::V1::Topic), request["topic"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_topic_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_topic({ topic: topic, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_topic topic: topic, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_topic ::Google::Cloud::PubSub::V1::UpdateTopicRequest.new(topic: topic, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_topic({ topic: topic, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_topic(::Google::Cloud::PubSub::V1::UpdateTopicRequest.new(topic: topic, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_topic_client_stub.call_rpc_count
    end
  end

  def test_publish
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::PublishResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    topic = "hello world"
    messages = [{}]

    publish_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :publish, name
      assert_kind_of ::Google::Cloud::PubSub::V1::PublishRequest, request
      assert_equal "hello world", request["topic"]
      assert_kind_of ::Google::Cloud::PubSub::V1::PubsubMessage, request["messages"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, publish_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.publish({ topic: topic, messages: messages }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.publish topic: topic, messages: messages do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.publish ::Google::Cloud::PubSub::V1::PublishRequest.new(topic: topic, messages: messages) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.publish({ topic: topic, messages: messages }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.publish(::Google::Cloud::PubSub::V1::PublishRequest.new(topic: topic, messages: messages), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, publish_client_stub.call_rpc_count
    end
  end

  def test_get_topic
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Topic.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    topic = "hello world"

    get_topic_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_topic, name
      assert_kind_of ::Google::Cloud::PubSub::V1::GetTopicRequest, request
      assert_equal "hello world", request["topic"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_topic_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_topic({ topic: topic }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_topic topic: topic do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_topic ::Google::Cloud::PubSub::V1::GetTopicRequest.new(topic: topic) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_topic({ topic: topic }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_topic(::Google::Cloud::PubSub::V1::GetTopicRequest.new(topic: topic), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_topic_client_stub.call_rpc_count
    end
  end

  def test_list_topics
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::ListTopicsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    page_size = 42
    page_token = "hello world"

    list_topics_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_topics, name
      assert_kind_of ::Google::Cloud::PubSub::V1::ListTopicsRequest, request
      assert_equal "hello world", request["project"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_topics_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_topics({ project: project, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_topics project: project, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_topics ::Google::Cloud::PubSub::V1::ListTopicsRequest.new(project: project, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_topics({ project: project, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_topics(::Google::Cloud::PubSub::V1::ListTopicsRequest.new(project: project, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_topics_client_stub.call_rpc_count
    end
  end

  def test_list_topic_subscriptions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::ListTopicSubscriptionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    topic = "hello world"
    page_size = 42
    page_token = "hello world"

    list_topic_subscriptions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_topic_subscriptions, name
      assert_kind_of ::Google::Cloud::PubSub::V1::ListTopicSubscriptionsRequest, request
      assert_equal "hello world", request["topic"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_topic_subscriptions_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_topic_subscriptions({ topic: topic, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_topic_subscriptions topic: topic, page_size: page_size, page_token: page_token do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_topic_subscriptions ::Google::Cloud::PubSub::V1::ListTopicSubscriptionsRequest.new(topic: topic, page_size: page_size, page_token: page_token) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_topic_subscriptions({ topic: topic, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_topic_subscriptions(::Google::Cloud::PubSub::V1::ListTopicSubscriptionsRequest.new(topic: topic, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_topic_subscriptions_client_stub.call_rpc_count
    end
  end

  def test_list_topic_snapshots
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::ListTopicSnapshotsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    topic = "hello world"
    page_size = 42
    page_token = "hello world"

    list_topic_snapshots_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_topic_snapshots, name
      assert_kind_of ::Google::Cloud::PubSub::V1::ListTopicSnapshotsRequest, request
      assert_equal "hello world", request["topic"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_topic_snapshots_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_topic_snapshots({ topic: topic, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_topic_snapshots topic: topic, page_size: page_size, page_token: page_token do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_topic_snapshots ::Google::Cloud::PubSub::V1::ListTopicSnapshotsRequest.new(topic: topic, page_size: page_size, page_token: page_token) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_topic_snapshots({ topic: topic, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_topic_snapshots(::Google::Cloud::PubSub::V1::ListTopicSnapshotsRequest.new(topic: topic, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_topic_snapshots_client_stub.call_rpc_count
    end
  end

  def test_delete_topic
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    topic = "hello world"

    delete_topic_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_topic, name
      assert_kind_of ::Google::Cloud::PubSub::V1::DeleteTopicRequest, request
      assert_equal "hello world", request["topic"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_topic_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_topic({ topic: topic }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_topic topic: topic do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_topic ::Google::Cloud::PubSub::V1::DeleteTopicRequest.new(topic: topic) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_topic({ topic: topic }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_topic(::Google::Cloud::PubSub::V1::DeleteTopicRequest.new(topic: topic), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_topic_client_stub.call_rpc_count
    end
  end

  def test_detach_subscription
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::DetachSubscriptionResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    subscription = "hello world"

    detach_subscription_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :detach_subscription, name
      assert_kind_of ::Google::Cloud::PubSub::V1::DetachSubscriptionRequest, request
      assert_equal "hello world", request["subscription"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, detach_subscription_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.detach_subscription({ subscription: subscription }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.detach_subscription subscription: subscription do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.detach_subscription ::Google::Cloud::PubSub::V1::DetachSubscriptionRequest.new(subscription: subscription) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.detach_subscription({ subscription: subscription }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.detach_subscription(::Google::Cloud::PubSub::V1::DetachSubscriptionRequest.new(subscription: subscription), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, detach_subscription_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::PubSub::V1::Publisher::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::PubSub::V1::Publisher::Client::Configuration, config
  end
end
