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

require "google/cloud/storageinsights/v1/storageinsights_pb"
require "google/cloud/storageinsights/v1/storageinsights_services_pb"
require "google/cloud/storage_insights/v1/storage_insights"

class ::Google::Cloud::StorageInsights::V1::StorageInsights::ClientTest < Minitest::Test
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

  def test_list_report_configs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::StorageInsights::V1::ListReportConfigsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_report_configs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_report_configs, name
      assert_kind_of ::Google::Cloud::StorageInsights::V1::ListReportConfigsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_report_configs_client_stub do
      # Create client
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_report_configs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_report_configs parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_report_configs ::Google::Cloud::StorageInsights::V1::ListReportConfigsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_report_configs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_report_configs(::Google::Cloud::StorageInsights::V1::ListReportConfigsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_report_configs_client_stub.call_rpc_count
    end
  end

  def test_get_report_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::StorageInsights::V1::ReportConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_report_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_report_config, name
      assert_kind_of ::Google::Cloud::StorageInsights::V1::GetReportConfigRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_report_config_client_stub do
      # Create client
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_report_config({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_report_config name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_report_config ::Google::Cloud::StorageInsights::V1::GetReportConfigRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_report_config({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_report_config(::Google::Cloud::StorageInsights::V1::GetReportConfigRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_report_config_client_stub.call_rpc_count
    end
  end

  def test_create_report_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::StorageInsights::V1::ReportConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    report_config = {}
    request_id = "hello world"

    create_report_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_report_config, name
      assert_kind_of ::Google::Cloud::StorageInsights::V1::CreateReportConfigRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::StorageInsights::V1::ReportConfig), request["report_config"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_report_config_client_stub do
      # Create client
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_report_config({ parent: parent, report_config: report_config, request_id: request_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_report_config parent: parent, report_config: report_config, request_id: request_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_report_config ::Google::Cloud::StorageInsights::V1::CreateReportConfigRequest.new(parent: parent, report_config: report_config, request_id: request_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_report_config({ parent: parent, report_config: report_config, request_id: request_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_report_config(::Google::Cloud::StorageInsights::V1::CreateReportConfigRequest.new(parent: parent, report_config: report_config, request_id: request_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_report_config_client_stub.call_rpc_count
    end
  end

  def test_update_report_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::StorageInsights::V1::ReportConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    report_config = {}
    request_id = "hello world"

    update_report_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_report_config, name
      assert_kind_of ::Google::Cloud::StorageInsights::V1::UpdateReportConfigRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::StorageInsights::V1::ReportConfig), request["report_config"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_report_config_client_stub do
      # Create client
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_report_config({ update_mask: update_mask, report_config: report_config, request_id: request_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_report_config update_mask: update_mask, report_config: report_config, request_id: request_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_report_config ::Google::Cloud::StorageInsights::V1::UpdateReportConfigRequest.new(update_mask: update_mask, report_config: report_config, request_id: request_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_report_config({ update_mask: update_mask, report_config: report_config, request_id: request_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_report_config(::Google::Cloud::StorageInsights::V1::UpdateReportConfigRequest.new(update_mask: update_mask, report_config: report_config, request_id: request_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_report_config_client_stub.call_rpc_count
    end
  end

  def test_delete_report_config
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true
    request_id = "hello world"

    delete_report_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_report_config, name
      assert_kind_of ::Google::Cloud::StorageInsights::V1::DeleteReportConfigRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["force"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_report_config_client_stub do
      # Create client
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_report_config({ name: name, force: force, request_id: request_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_report_config name: name, force: force, request_id: request_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_report_config ::Google::Cloud::StorageInsights::V1::DeleteReportConfigRequest.new(name: name, force: force, request_id: request_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_report_config({ name: name, force: force, request_id: request_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_report_config(::Google::Cloud::StorageInsights::V1::DeleteReportConfigRequest.new(name: name, force: force, request_id: request_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_report_config_client_stub.call_rpc_count
    end
  end

  def test_list_report_details
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::StorageInsights::V1::ListReportDetailsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_report_details_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_report_details, name
      assert_kind_of ::Google::Cloud::StorageInsights::V1::ListReportDetailsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_report_details_client_stub do
      # Create client
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_report_details({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_report_details parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_report_details ::Google::Cloud::StorageInsights::V1::ListReportDetailsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_report_details({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_report_details(::Google::Cloud::StorageInsights::V1::ListReportDetailsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_report_details_client_stub.call_rpc_count
    end
  end

  def test_get_report_detail
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::StorageInsights::V1::ReportDetail.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_report_detail_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_report_detail, name
      assert_kind_of ::Google::Cloud::StorageInsights::V1::GetReportDetailRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_report_detail_client_stub do
      # Create client
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_report_detail({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_report_detail name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_report_detail ::Google::Cloud::StorageInsights::V1::GetReportDetailRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_report_detail({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_report_detail(::Google::Cloud::StorageInsights::V1::GetReportDetailRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_report_detail_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::StorageInsights::V1::StorageInsights::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::StorageInsights::V1::StorageInsights::Client::Configuration, config
  end
end
