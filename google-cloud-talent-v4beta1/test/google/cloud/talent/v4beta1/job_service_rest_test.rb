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
require "gapic/rest"
require "google/cloud/talent/v4beta1/job_service_pb"
require "google/cloud/talent/v4beta1/job_service/rest"


class ::Google::Cloud::Talent::V4beta1::JobService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
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

    def stub_logger
      nil
    end
  end

  def test_create_job
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4beta1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    job = {}

    create_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_create_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_job_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_job({ parent: parent, job: job }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_job parent: parent, job: job do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_job ::Google::Cloud::Talent::V4beta1::CreateJobRequest.new(parent: parent, job: job) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_job({ parent: parent, job: job }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_job(::Google::Cloud::Talent::V4beta1::CreateJobRequest.new(parent: parent, job: job), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_job_client_stub.call_count
      end
    end
  end

  def test_batch_create_jobs
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    jobs = [{}]

    batch_create_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_batch_create_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_create_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_create_jobs({ parent: parent, jobs: jobs }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_create_jobs parent: parent, jobs: jobs do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_create_jobs ::Google::Cloud::Talent::V4beta1::BatchCreateJobsRequest.new(parent: parent, jobs: jobs) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_create_jobs({ parent: parent, jobs: jobs }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_create_jobs(::Google::Cloud::Talent::V4beta1::BatchCreateJobsRequest.new(parent: parent, jobs: jobs), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_create_jobs_client_stub.call_count
      end
    end
  end

  def test_get_job
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4beta1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_get_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_job_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_job ::Google::Cloud::Talent::V4beta1::GetJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_job(::Google::Cloud::Talent::V4beta1::GetJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_job_client_stub.call_count
      end
    end
  end

  def test_update_job
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4beta1::Job.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    job = {}
    update_mask = {}

    update_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_update_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_job_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_job({ job: job, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_job job: job, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_job ::Google::Cloud::Talent::V4beta1::UpdateJobRequest.new(job: job, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_job({ job: job, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_job(::Google::Cloud::Talent::V4beta1::UpdateJobRequest.new(job: job, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_job_client_stub.call_count
      end
    end
  end

  def test_batch_update_jobs
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    jobs = [{}]
    update_mask = {}

    batch_update_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_batch_update_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_update_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_update_jobs({ parent: parent, jobs: jobs, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_update_jobs parent: parent, jobs: jobs, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_update_jobs ::Google::Cloud::Talent::V4beta1::BatchUpdateJobsRequest.new(parent: parent, jobs: jobs, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_update_jobs({ parent: parent, jobs: jobs, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_update_jobs(::Google::Cloud::Talent::V4beta1::BatchUpdateJobsRequest.new(parent: parent, jobs: jobs, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_update_jobs_client_stub.call_count
      end
    end
  end

  def test_delete_job
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_delete_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_job_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_job ::Google::Cloud::Talent::V4beta1::DeleteJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_job(::Google::Cloud::Talent::V4beta1::DeleteJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_job_client_stub.call_count
      end
    end
  end

  def test_batch_delete_jobs
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"

    batch_delete_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_batch_delete_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, batch_delete_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.batch_delete_jobs({ parent: parent, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.batch_delete_jobs parent: parent, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.batch_delete_jobs ::Google::Cloud::Talent::V4beta1::BatchDeleteJobsRequest.new(parent: parent, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.batch_delete_jobs({ parent: parent, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.batch_delete_jobs(::Google::Cloud::Talent::V4beta1::BatchDeleteJobsRequest.new(parent: parent, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, batch_delete_jobs_client_stub.call_count
      end
    end
  end

  def test_list_jobs
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4beta1::ListJobsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_token = "hello world"
    page_size = 42
    job_view = :JOB_VIEW_UNSPECIFIED

    list_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_list_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_jobs({ parent: parent, filter: filter, page_token: page_token, page_size: page_size, job_view: job_view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_jobs parent: parent, filter: filter, page_token: page_token, page_size: page_size, job_view: job_view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_jobs ::Google::Cloud::Talent::V4beta1::ListJobsRequest.new(parent: parent, filter: filter, page_token: page_token, page_size: page_size, job_view: job_view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_jobs({ parent: parent, filter: filter, page_token: page_token, page_size: page_size, job_view: job_view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_jobs(::Google::Cloud::Talent::V4beta1::ListJobsRequest.new(parent: parent, filter: filter, page_token: page_token, page_size: page_size, job_view: job_view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_jobs_client_stub.call_count
      end
    end
  end

  def test_search_jobs
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4beta1::SearchJobsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    search_mode = :SEARCH_MODE_UNSPECIFIED
    request_metadata = {}
    job_query = {}
    enable_broadening = true
    require_precise_result_size = true
    histogram_queries = [{}]
    job_view = :JOB_VIEW_UNSPECIFIED
    offset = 42
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    diversification_level = :DIVERSIFICATION_LEVEL_UNSPECIFIED
    custom_ranking_info = {}
    disable_keyword_match = true
    keyword_match_mode = :KEYWORD_MATCH_MODE_UNSPECIFIED

    search_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_search_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_jobs({ parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_jobs parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_jobs ::Google::Cloud::Talent::V4beta1::SearchJobsRequest.new(parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_jobs({ parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_jobs(::Google::Cloud::Talent::V4beta1::SearchJobsRequest.new(parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_jobs_client_stub.call_count
      end
    end
  end

  def test_search_jobs_for_alert
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4beta1::SearchJobsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    search_mode = :SEARCH_MODE_UNSPECIFIED
    request_metadata = {}
    job_query = {}
    enable_broadening = true
    require_precise_result_size = true
    histogram_queries = [{}]
    job_view = :JOB_VIEW_UNSPECIFIED
    offset = 42
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"
    diversification_level = :DIVERSIFICATION_LEVEL_UNSPECIFIED
    custom_ranking_info = {}
    disable_keyword_match = true
    keyword_match_mode = :KEYWORD_MATCH_MODE_UNSPECIFIED

    search_jobs_for_alert_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4beta1::JobService::Rest::ServiceStub.stub :transcode_search_jobs_for_alert_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_jobs_for_alert_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_jobs_for_alert({ parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_jobs_for_alert parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_jobs_for_alert ::Google::Cloud::Talent::V4beta1::SearchJobsRequest.new(parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_jobs_for_alert({ parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_jobs_for_alert(::Google::Cloud::Talent::V4beta1::SearchJobsRequest.new(parent: parent, search_mode: search_mode, request_metadata: request_metadata, job_query: job_query, enable_broadening: enable_broadening, require_precise_result_size: require_precise_result_size, histogram_queries: histogram_queries, job_view: job_view, offset: offset, page_size: page_size, page_token: page_token, order_by: order_by, diversification_level: diversification_level, custom_ranking_info: custom_ranking_info, disable_keyword_match: disable_keyword_match, keyword_match_mode: keyword_match_mode), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_jobs_for_alert_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Talent::V4beta1::JobService::Rest::Client::Configuration, config
  end
end
