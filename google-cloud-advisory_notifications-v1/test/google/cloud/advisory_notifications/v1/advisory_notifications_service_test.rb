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

require "google/cloud/advisorynotifications/v1/service_pb"
require "google/cloud/advisorynotifications/v1/service_services_pb"
require "google/cloud/advisory_notifications/v1/advisory_notifications_service"

class ::Google::Cloud::AdvisoryNotifications::V1::AdvisoryNotificationsService::ClientTest < Minitest::Test
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

  def test_list_notifications
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AdvisoryNotifications::V1::ListNotificationsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    view = :NOTIFICATION_VIEW_UNSPECIFIED
    language_code = "hello world"

    list_notifications_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_notifications, name
      assert_kind_of ::Google::Cloud::AdvisoryNotifications::V1::ListNotificationsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal :NOTIFICATION_VIEW_UNSPECIFIED, request["view"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_notifications_client_stub do
      # Create client
      client = ::Google::Cloud::AdvisoryNotifications::V1::AdvisoryNotificationsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_notifications({ parent: parent, page_size: page_size, page_token: page_token, view: view, language_code: language_code }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_notifications parent: parent, page_size: page_size, page_token: page_token, view: view, language_code: language_code do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_notifications ::Google::Cloud::AdvisoryNotifications::V1::ListNotificationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view, language_code: language_code) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_notifications({ parent: parent, page_size: page_size, page_token: page_token, view: view, language_code: language_code }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_notifications(::Google::Cloud::AdvisoryNotifications::V1::ListNotificationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view, language_code: language_code), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_notifications_client_stub.call_rpc_count
    end
  end

  def test_get_notification
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AdvisoryNotifications::V1::Notification.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_notification_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_notification, name
      assert_kind_of ::Google::Cloud::AdvisoryNotifications::V1::GetNotificationRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_notification_client_stub do
      # Create client
      client = ::Google::Cloud::AdvisoryNotifications::V1::AdvisoryNotificationsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_notification({ name: name, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_notification name: name, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_notification ::Google::Cloud::AdvisoryNotifications::V1::GetNotificationRequest.new(name: name, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_notification({ name: name, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_notification(::Google::Cloud::AdvisoryNotifications::V1::GetNotificationRequest.new(name: name, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_notification_client_stub.call_rpc_count
    end
  end

  def test_get_settings
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AdvisoryNotifications::V1::Settings.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_settings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_settings, name
      assert_kind_of ::Google::Cloud::AdvisoryNotifications::V1::GetSettingsRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_settings_client_stub do
      # Create client
      client = ::Google::Cloud::AdvisoryNotifications::V1::AdvisoryNotificationsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_settings({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_settings name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_settings ::Google::Cloud::AdvisoryNotifications::V1::GetSettingsRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_settings({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_settings(::Google::Cloud::AdvisoryNotifications::V1::GetSettingsRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_settings_client_stub.call_rpc_count
    end
  end

  def test_update_settings
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AdvisoryNotifications::V1::Settings.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    settings = {}

    update_settings_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_settings, name
      assert_kind_of ::Google::Cloud::AdvisoryNotifications::V1::UpdateSettingsRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AdvisoryNotifications::V1::Settings), request["settings"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_settings_client_stub do
      # Create client
      client = ::Google::Cloud::AdvisoryNotifications::V1::AdvisoryNotificationsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_settings({ settings: settings }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_settings settings: settings do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_settings ::Google::Cloud::AdvisoryNotifications::V1::UpdateSettingsRequest.new(settings: settings) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_settings({ settings: settings }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_settings(::Google::Cloud::AdvisoryNotifications::V1::UpdateSettingsRequest.new(settings: settings), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_settings_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AdvisoryNotifications::V1::AdvisoryNotificationsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AdvisoryNotifications::V1::AdvisoryNotificationsService::Client::Configuration, config
  end
end
