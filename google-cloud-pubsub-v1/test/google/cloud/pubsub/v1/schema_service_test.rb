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

require "google/pubsub/v1/schema_pb"
require "google/pubsub/v1/schema_services_pb"
require "google/cloud/pubsub/v1/schema_service"

class ::Google::Cloud::PubSub::V1::SchemaService::ClientTest < Minitest::Test
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

  def test_create_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Schema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    schema = {}
    schema_id = "hello world"

    create_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_schema, name
      assert_kind_of ::Google::Cloud::PubSub::V1::CreateSchemaRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::PubSub::V1::Schema), request["schema"]
      assert_equal "hello world", request["schema_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_schema_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_schema({ parent: parent, schema: schema, schema_id: schema_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_schema parent: parent, schema: schema, schema_id: schema_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_schema ::Google::Cloud::PubSub::V1::CreateSchemaRequest.new(parent: parent, schema: schema, schema_id: schema_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_schema({ parent: parent, schema: schema, schema_id: schema_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_schema(::Google::Cloud::PubSub::V1::CreateSchemaRequest.new(parent: parent, schema: schema, schema_id: schema_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_schema_client_stub.call_rpc_count
    end
  end

  def test_get_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Schema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :SCHEMA_VIEW_UNSPECIFIED

    get_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_schema, name
      assert_kind_of ::Google::Cloud::PubSub::V1::GetSchemaRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :SCHEMA_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_schema_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_schema({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_schema name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_schema ::Google::Cloud::PubSub::V1::GetSchemaRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_schema({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_schema(::Google::Cloud::PubSub::V1::GetSchemaRequest.new(name: name, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_schema_client_stub.call_rpc_count
    end
  end

  def test_list_schemas
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::ListSchemasResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    view = :SCHEMA_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"

    list_schemas_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_schemas, name
      assert_kind_of ::Google::Cloud::PubSub::V1::ListSchemasRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal :SCHEMA_VIEW_UNSPECIFIED, request["view"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_schemas_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_schemas({ parent: parent, view: view, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_schemas parent: parent, view: view, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_schemas ::Google::Cloud::PubSub::V1::ListSchemasRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_schemas({ parent: parent, view: view, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_schemas(::Google::Cloud::PubSub::V1::ListSchemasRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_schemas_client_stub.call_rpc_count
    end
  end

  def test_list_schema_revisions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::ListSchemaRevisionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :SCHEMA_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"

    list_schema_revisions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_schema_revisions, name
      assert_kind_of ::Google::Cloud::PubSub::V1::ListSchemaRevisionsRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :SCHEMA_VIEW_UNSPECIFIED, request["view"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_schema_revisions_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_schema_revisions({ name: name, view: view, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_schema_revisions name: name, view: view, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_schema_revisions ::Google::Cloud::PubSub::V1::ListSchemaRevisionsRequest.new(name: name, view: view, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_schema_revisions({ name: name, view: view, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_schema_revisions(::Google::Cloud::PubSub::V1::ListSchemaRevisionsRequest.new(name: name, view: view, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_schema_revisions_client_stub.call_rpc_count
    end
  end

  def test_commit_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Schema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    schema = {}

    commit_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :commit_schema, name
      assert_kind_of ::Google::Cloud::PubSub::V1::CommitSchemaRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::PubSub::V1::Schema), request["schema"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, commit_schema_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.commit_schema({ name: name, schema: schema }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.commit_schema name: name, schema: schema do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.commit_schema ::Google::Cloud::PubSub::V1::CommitSchemaRequest.new(name: name, schema: schema) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.commit_schema({ name: name, schema: schema }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.commit_schema(::Google::Cloud::PubSub::V1::CommitSchemaRequest.new(name: name, schema: schema), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, commit_schema_client_stub.call_rpc_count
    end
  end

  def test_rollback_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Schema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    revision_id = "hello world"

    rollback_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :rollback_schema, name
      assert_kind_of ::Google::Cloud::PubSub::V1::RollbackSchemaRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["revision_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, rollback_schema_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.rollback_schema({ name: name, revision_id: revision_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.rollback_schema name: name, revision_id: revision_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.rollback_schema ::Google::Cloud::PubSub::V1::RollbackSchemaRequest.new(name: name, revision_id: revision_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.rollback_schema({ name: name, revision_id: revision_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.rollback_schema(::Google::Cloud::PubSub::V1::RollbackSchemaRequest.new(name: name, revision_id: revision_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, rollback_schema_client_stub.call_rpc_count
    end
  end

  def test_delete_schema_revision
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::Schema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    revision_id = "hello world"

    delete_schema_revision_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_schema_revision, name
      assert_kind_of ::Google::Cloud::PubSub::V1::DeleteSchemaRevisionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["revision_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_schema_revision_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_schema_revision({ name: name, revision_id: revision_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_schema_revision name: name, revision_id: revision_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_schema_revision ::Google::Cloud::PubSub::V1::DeleteSchemaRevisionRequest.new(name: name, revision_id: revision_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_schema_revision({ name: name, revision_id: revision_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_schema_revision(::Google::Cloud::PubSub::V1::DeleteSchemaRevisionRequest.new(name: name, revision_id: revision_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_schema_revision_client_stub.call_rpc_count
    end
  end

  def test_delete_schema
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_schema, name
      assert_kind_of ::Google::Cloud::PubSub::V1::DeleteSchemaRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_schema_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_schema({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_schema name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_schema ::Google::Cloud::PubSub::V1::DeleteSchemaRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_schema({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_schema(::Google::Cloud::PubSub::V1::DeleteSchemaRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_schema_client_stub.call_rpc_count
    end
  end

  def test_validate_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::ValidateSchemaResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    schema = {}

    validate_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :validate_schema, name
      assert_kind_of ::Google::Cloud::PubSub::V1::ValidateSchemaRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::PubSub::V1::Schema), request["schema"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, validate_schema_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.validate_schema({ parent: parent, schema: schema }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.validate_schema parent: parent, schema: schema do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.validate_schema ::Google::Cloud::PubSub::V1::ValidateSchemaRequest.new(parent: parent, schema: schema) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.validate_schema({ parent: parent, schema: schema }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.validate_schema(::Google::Cloud::PubSub::V1::ValidateSchemaRequest.new(parent: parent, schema: schema), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, validate_schema_client_stub.call_rpc_count
    end
  end

  def test_validate_message
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::PubSub::V1::ValidateMessageResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    name = "hello world"
    message = "hello world"
    encoding = :ENCODING_UNSPECIFIED

    validate_message_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :validate_message, name
      assert_kind_of ::Google::Cloud::PubSub::V1::ValidateMessageRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["name"]
      assert_equal :name, request.schema_spec
      assert_equal "hello world", request["message"]
      assert_equal :ENCODING_UNSPECIFIED, request["encoding"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, validate_message_client_stub do
      # Create client
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.validate_message({ parent: parent, name: name, message: message, encoding: encoding }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.validate_message parent: parent, name: name, message: message, encoding: encoding do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.validate_message ::Google::Cloud::PubSub::V1::ValidateMessageRequest.new(parent: parent, name: name, message: message, encoding: encoding) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.validate_message({ parent: parent, name: name, message: message, encoding: encoding }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.validate_message(::Google::Cloud::PubSub::V1::ValidateMessageRequest.new(parent: parent, name: name, message: message, encoding: encoding), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, validate_message_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::PubSub::V1::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::PubSub::V1::SchemaService::Client::Configuration, config
  end
end
