# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/dialogflow/v2/document_pb"
require "google/cloud/dialogflow/v2/document_services_pb"
require "google/cloud/dialogflow/v2/documents"

class ::Google::Cloud::Dialogflow::V2::Documents::ClientTest < Minitest::Test
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

  def test_list_documents
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListDocumentsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_documents, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListDocumentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_documents_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_documents({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_documents parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_documents ::Google::Cloud::Dialogflow::V2::ListDocumentsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_documents({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_documents(::Google::Cloud::Dialogflow::V2::ListDocumentsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_documents_client_stub.call_rpc_count
    end
  end

  def test_get_document
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Document.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_document, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GetDocumentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_document_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_document({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_document name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_document ::Google::Cloud::Dialogflow::V2::GetDocumentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_document({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_document(::Google::Cloud::Dialogflow::V2::GetDocumentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_document_client_stub.call_rpc_count
    end
  end

  def test_create_document
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    document = {}

    create_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_document, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CreateDocumentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Document), request["document"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_document_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_document({ parent: parent, document: document }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_document parent: parent, document: document do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_document ::Google::Cloud::Dialogflow::V2::CreateDocumentRequest.new(parent: parent, document: document) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_document({ parent: parent, document: document }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_document(::Google::Cloud::Dialogflow::V2::CreateDocumentRequest.new(parent: parent, document: document), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_document_client_stub.call_rpc_count
    end
  end

  def test_import_documents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    gcs_source = {}
    document_template = {}
    import_gcs_custom_metadata = true

    import_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_documents, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ImportDocumentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::GcsSources), request["gcs_source"]
      assert_equal :gcs_source, request.source
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::ImportDocumentTemplate), request["document_template"]
      assert_equal true, request["import_gcs_custom_metadata"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_documents_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_documents({ parent: parent, gcs_source: gcs_source, document_template: document_template, import_gcs_custom_metadata: import_gcs_custom_metadata }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_documents parent: parent, gcs_source: gcs_source, document_template: document_template, import_gcs_custom_metadata: import_gcs_custom_metadata do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_documents ::Google::Cloud::Dialogflow::V2::ImportDocumentsRequest.new(parent: parent, gcs_source: gcs_source, document_template: document_template, import_gcs_custom_metadata: import_gcs_custom_metadata) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_documents({ parent: parent, gcs_source: gcs_source, document_template: document_template, import_gcs_custom_metadata: import_gcs_custom_metadata }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_documents(::Google::Cloud::Dialogflow::V2::ImportDocumentsRequest.new(parent: parent, gcs_source: gcs_source, document_template: document_template, import_gcs_custom_metadata: import_gcs_custom_metadata), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_documents_client_stub.call_rpc_count
    end
  end

  def test_delete_document
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_document, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::DeleteDocumentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_document_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_document({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_document name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_document ::Google::Cloud::Dialogflow::V2::DeleteDocumentRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_document({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_document(::Google::Cloud::Dialogflow::V2::DeleteDocumentRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_document_client_stub.call_rpc_count
    end
  end

  def test_update_document
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    document = {}
    update_mask = {}

    update_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_document, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::UpdateDocumentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Document), request["document"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_document_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_document({ document: document, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_document document: document, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_document ::Google::Cloud::Dialogflow::V2::UpdateDocumentRequest.new(document: document, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_document({ document: document, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_document(::Google::Cloud::Dialogflow::V2::UpdateDocumentRequest.new(document: document, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_document_client_stub.call_rpc_count
    end
  end

  def test_reload_document
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    content_uri = "hello world"
    import_gcs_custom_metadata = true
    smart_messaging_partial_update = true

    reload_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :reload_document, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ReloadDocumentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["content_uri"]
      assert_equal :content_uri, request.source
      assert_equal true, request["import_gcs_custom_metadata"]
      assert_equal true, request["smart_messaging_partial_update"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, reload_document_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.reload_document({ name: name, content_uri: content_uri, import_gcs_custom_metadata: import_gcs_custom_metadata, smart_messaging_partial_update: smart_messaging_partial_update }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.reload_document name: name, content_uri: content_uri, import_gcs_custom_metadata: import_gcs_custom_metadata, smart_messaging_partial_update: smart_messaging_partial_update do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.reload_document ::Google::Cloud::Dialogflow::V2::ReloadDocumentRequest.new(name: name, content_uri: content_uri, import_gcs_custom_metadata: import_gcs_custom_metadata, smart_messaging_partial_update: smart_messaging_partial_update) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.reload_document({ name: name, content_uri: content_uri, import_gcs_custom_metadata: import_gcs_custom_metadata, smart_messaging_partial_update: smart_messaging_partial_update }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.reload_document(::Google::Cloud::Dialogflow::V2::ReloadDocumentRequest.new(name: name, content_uri: content_uri, import_gcs_custom_metadata: import_gcs_custom_metadata, smart_messaging_partial_update: smart_messaging_partial_update), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, reload_document_client_stub.call_rpc_count
    end
  end

  def test_export_document
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    gcs_destination = {}
    export_full_content = true
    smart_messaging_partial_update = true

    export_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :export_document, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ExportDocumentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::GcsDestination), request["gcs_destination"]
      assert_equal :gcs_destination, request.destination
      assert_equal true, request["export_full_content"]
      assert_equal true, request["smart_messaging_partial_update"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, export_document_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.export_document({ name: name, gcs_destination: gcs_destination, export_full_content: export_full_content, smart_messaging_partial_update: smart_messaging_partial_update }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.export_document name: name, gcs_destination: gcs_destination, export_full_content: export_full_content, smart_messaging_partial_update: smart_messaging_partial_update do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.export_document ::Google::Cloud::Dialogflow::V2::ExportDocumentRequest.new(name: name, gcs_destination: gcs_destination, export_full_content: export_full_content, smart_messaging_partial_update: smart_messaging_partial_update) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.export_document({ name: name, gcs_destination: gcs_destination, export_full_content: export_full_content, smart_messaging_partial_update: smart_messaging_partial_update }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.export_document(::Google::Cloud::Dialogflow::V2::ExportDocumentRequest.new(name: name, gcs_destination: gcs_destination, export_full_content: export_full_content, smart_messaging_partial_update: smart_messaging_partial_update), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, export_document_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::Documents::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::V2::Documents::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Dialogflow::V2::Documents::Operations, client.operations_client
  end
end
