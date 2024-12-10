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

require "google/analytics/data/v1beta/analytics_data_api_pb"
require "google/analytics/data/v1beta/analytics_data_api_services_pb"
require "google/analytics/data/v1beta/analytics_data"

class ::Google::Analytics::Data::V1beta::AnalyticsData::ClientTest < Minitest::Test
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

  def test_run_report
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::RunReportResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    property = "hello world"
    dimensions = [{}]
    metrics = [{}]
    date_ranges = [{}]
    dimension_filter = {}
    metric_filter = {}
    offset = 42
    limit = 42
    metric_aggregations = [:METRIC_AGGREGATION_UNSPECIFIED]
    order_bys = [{}]
    currency_code = "hello world"
    cohort_spec = {}
    keep_empty_rows = true
    return_property_quota = true
    comparisons = [{}]

    run_report_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_report, name
      assert_kind_of ::Google::Analytics::Data::V1beta::RunReportRequest, request
      assert_equal "hello world", request["property"]
      assert_kind_of ::Google::Analytics::Data::V1beta::Dimension, request["dimensions"].first
      assert_kind_of ::Google::Analytics::Data::V1beta::Metric, request["metrics"].first
      assert_kind_of ::Google::Analytics::Data::V1beta::DateRange, request["date_ranges"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["dimension_filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["metric_filter"]
      assert_equal 42, request["offset"]
      assert_equal 42, request["limit"]
      assert_equal [:METRIC_AGGREGATION_UNSPECIFIED], request["metric_aggregations"]
      assert_kind_of ::Google::Analytics::Data::V1beta::OrderBy, request["order_bys"].first
      assert_equal "hello world", request["currency_code"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::CohortSpec), request["cohort_spec"]
      assert_equal true, request["keep_empty_rows"]
      assert_equal true, request["return_property_quota"]
      assert_kind_of ::Google::Analytics::Data::V1beta::Comparison, request["comparisons"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_report_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_report({ property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, dimension_filter: dimension_filter, metric_filter: metric_filter, offset: offset, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_report property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, dimension_filter: dimension_filter, metric_filter: metric_filter, offset: offset, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_report ::Google::Analytics::Data::V1beta::RunReportRequest.new(property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, dimension_filter: dimension_filter, metric_filter: metric_filter, offset: offset, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_report({ property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, dimension_filter: dimension_filter, metric_filter: metric_filter, offset: offset, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_report(::Google::Analytics::Data::V1beta::RunReportRequest.new(property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, dimension_filter: dimension_filter, metric_filter: metric_filter, offset: offset, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_report_client_stub.call_rpc_count
    end
  end

  def test_run_pivot_report
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::RunPivotReportResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    property = "hello world"
    dimensions = [{}]
    metrics = [{}]
    date_ranges = [{}]
    pivots = [{}]
    dimension_filter = {}
    metric_filter = {}
    currency_code = "hello world"
    cohort_spec = {}
    keep_empty_rows = true
    return_property_quota = true
    comparisons = [{}]

    run_pivot_report_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_pivot_report, name
      assert_kind_of ::Google::Analytics::Data::V1beta::RunPivotReportRequest, request
      assert_equal "hello world", request["property"]
      assert_kind_of ::Google::Analytics::Data::V1beta::Dimension, request["dimensions"].first
      assert_kind_of ::Google::Analytics::Data::V1beta::Metric, request["metrics"].first
      assert_kind_of ::Google::Analytics::Data::V1beta::DateRange, request["date_ranges"].first
      assert_kind_of ::Google::Analytics::Data::V1beta::Pivot, request["pivots"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["dimension_filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["metric_filter"]
      assert_equal "hello world", request["currency_code"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::CohortSpec), request["cohort_spec"]
      assert_equal true, request["keep_empty_rows"]
      assert_equal true, request["return_property_quota"]
      assert_kind_of ::Google::Analytics::Data::V1beta::Comparison, request["comparisons"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_pivot_report_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_pivot_report({ property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, pivots: pivots, dimension_filter: dimension_filter, metric_filter: metric_filter, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_pivot_report property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, pivots: pivots, dimension_filter: dimension_filter, metric_filter: metric_filter, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_pivot_report ::Google::Analytics::Data::V1beta::RunPivotReportRequest.new(property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, pivots: pivots, dimension_filter: dimension_filter, metric_filter: metric_filter, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_pivot_report({ property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, pivots: pivots, dimension_filter: dimension_filter, metric_filter: metric_filter, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_pivot_report(::Google::Analytics::Data::V1beta::RunPivotReportRequest.new(property: property, dimensions: dimensions, metrics: metrics, date_ranges: date_ranges, pivots: pivots, dimension_filter: dimension_filter, metric_filter: metric_filter, currency_code: currency_code, cohort_spec: cohort_spec, keep_empty_rows: keep_empty_rows, return_property_quota: return_property_quota, comparisons: comparisons), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_pivot_report_client_stub.call_rpc_count
    end
  end

  def test_batch_run_reports
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::BatchRunReportsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    property = "hello world"
    requests = [{}]

    batch_run_reports_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_run_reports, name
      assert_kind_of ::Google::Analytics::Data::V1beta::BatchRunReportsRequest, request
      assert_equal "hello world", request["property"]
      assert_kind_of ::Google::Analytics::Data::V1beta::RunReportRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_run_reports_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_run_reports({ property: property, requests: requests }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_run_reports property: property, requests: requests do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_run_reports ::Google::Analytics::Data::V1beta::BatchRunReportsRequest.new(property: property, requests: requests) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_run_reports({ property: property, requests: requests }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_run_reports(::Google::Analytics::Data::V1beta::BatchRunReportsRequest.new(property: property, requests: requests), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_run_reports_client_stub.call_rpc_count
    end
  end

  def test_batch_run_pivot_reports
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::BatchRunPivotReportsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    property = "hello world"
    requests = [{}]

    batch_run_pivot_reports_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_run_pivot_reports, name
      assert_kind_of ::Google::Analytics::Data::V1beta::BatchRunPivotReportsRequest, request
      assert_equal "hello world", request["property"]
      assert_kind_of ::Google::Analytics::Data::V1beta::RunPivotReportRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_run_pivot_reports_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_run_pivot_reports({ property: property, requests: requests }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_run_pivot_reports property: property, requests: requests do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_run_pivot_reports ::Google::Analytics::Data::V1beta::BatchRunPivotReportsRequest.new(property: property, requests: requests) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_run_pivot_reports({ property: property, requests: requests }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_run_pivot_reports(::Google::Analytics::Data::V1beta::BatchRunPivotReportsRequest.new(property: property, requests: requests), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_run_pivot_reports_client_stub.call_rpc_count
    end
  end

  def test_get_metadata
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::Metadata.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_metadata_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_metadata, name
      assert_kind_of ::Google::Analytics::Data::V1beta::GetMetadataRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_metadata_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_metadata({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_metadata name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_metadata ::Google::Analytics::Data::V1beta::GetMetadataRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_metadata({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_metadata(::Google::Analytics::Data::V1beta::GetMetadataRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_metadata_client_stub.call_rpc_count
    end
  end

  def test_run_realtime_report
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::RunRealtimeReportResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    property = "hello world"
    dimensions = [{}]
    metrics = [{}]
    dimension_filter = {}
    metric_filter = {}
    limit = 42
    metric_aggregations = [:METRIC_AGGREGATION_UNSPECIFIED]
    order_bys = [{}]
    return_property_quota = true
    minute_ranges = [{}]

    run_realtime_report_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_realtime_report, name
      assert_kind_of ::Google::Analytics::Data::V1beta::RunRealtimeReportRequest, request
      assert_equal "hello world", request["property"]
      assert_kind_of ::Google::Analytics::Data::V1beta::Dimension, request["dimensions"].first
      assert_kind_of ::Google::Analytics::Data::V1beta::Metric, request["metrics"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["dimension_filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["metric_filter"]
      assert_equal 42, request["limit"]
      assert_equal [:METRIC_AGGREGATION_UNSPECIFIED], request["metric_aggregations"]
      assert_kind_of ::Google::Analytics::Data::V1beta::OrderBy, request["order_bys"].first
      assert_equal true, request["return_property_quota"]
      assert_kind_of ::Google::Analytics::Data::V1beta::MinuteRange, request["minute_ranges"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_realtime_report_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_realtime_report({ property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, return_property_quota: return_property_quota, minute_ranges: minute_ranges }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_realtime_report property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, return_property_quota: return_property_quota, minute_ranges: minute_ranges do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_realtime_report ::Google::Analytics::Data::V1beta::RunRealtimeReportRequest.new(property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, return_property_quota: return_property_quota, minute_ranges: minute_ranges) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_realtime_report({ property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, return_property_quota: return_property_quota, minute_ranges: minute_ranges }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_realtime_report(::Google::Analytics::Data::V1beta::RunRealtimeReportRequest.new(property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, limit: limit, metric_aggregations: metric_aggregations, order_bys: order_bys, return_property_quota: return_property_quota, minute_ranges: minute_ranges), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_realtime_report_client_stub.call_rpc_count
    end
  end

  def test_check_compatibility
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::CheckCompatibilityResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    property = "hello world"
    dimensions = [{}]
    metrics = [{}]
    dimension_filter = {}
    metric_filter = {}
    compatibility_filter = :COMPATIBILITY_UNSPECIFIED

    check_compatibility_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :check_compatibility, name
      assert_kind_of ::Google::Analytics::Data::V1beta::CheckCompatibilityRequest, request
      assert_equal "hello world", request["property"]
      assert_kind_of ::Google::Analytics::Data::V1beta::Dimension, request["dimensions"].first
      assert_kind_of ::Google::Analytics::Data::V1beta::Metric, request["metrics"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["dimension_filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::FilterExpression), request["metric_filter"]
      assert_equal :COMPATIBILITY_UNSPECIFIED, request["compatibility_filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, check_compatibility_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.check_compatibility({ property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, compatibility_filter: compatibility_filter }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.check_compatibility property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, compatibility_filter: compatibility_filter do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.check_compatibility ::Google::Analytics::Data::V1beta::CheckCompatibilityRequest.new(property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, compatibility_filter: compatibility_filter) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.check_compatibility({ property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, compatibility_filter: compatibility_filter }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.check_compatibility(::Google::Analytics::Data::V1beta::CheckCompatibilityRequest.new(property: property, dimensions: dimensions, metrics: metrics, dimension_filter: dimension_filter, metric_filter: metric_filter, compatibility_filter: compatibility_filter), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, check_compatibility_client_stub.call_rpc_count
    end
  end

  def test_create_audience_export
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    audience_export = {}

    create_audience_export_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_audience_export, name
      assert_kind_of ::Google::Analytics::Data::V1beta::CreateAudienceExportRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Analytics::Data::V1beta::AudienceExport), request["audience_export"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_audience_export_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_audience_export({ parent: parent, audience_export: audience_export }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_audience_export parent: parent, audience_export: audience_export do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_audience_export ::Google::Analytics::Data::V1beta::CreateAudienceExportRequest.new(parent: parent, audience_export: audience_export) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_audience_export({ parent: parent, audience_export: audience_export }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_audience_export(::Google::Analytics::Data::V1beta::CreateAudienceExportRequest.new(parent: parent, audience_export: audience_export), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_audience_export_client_stub.call_rpc_count
    end
  end

  def test_query_audience_export
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::QueryAudienceExportResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    offset = 42
    limit = 42

    query_audience_export_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :query_audience_export, name
      assert_kind_of ::Google::Analytics::Data::V1beta::QueryAudienceExportRequest, request
      assert_equal "hello world", request["name"]
      assert_equal 42, request["offset"]
      assert_equal 42, request["limit"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, query_audience_export_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.query_audience_export({ name: name, offset: offset, limit: limit }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.query_audience_export name: name, offset: offset, limit: limit do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.query_audience_export ::Google::Analytics::Data::V1beta::QueryAudienceExportRequest.new(name: name, offset: offset, limit: limit) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.query_audience_export({ name: name, offset: offset, limit: limit }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.query_audience_export(::Google::Analytics::Data::V1beta::QueryAudienceExportRequest.new(name: name, offset: offset, limit: limit), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, query_audience_export_client_stub.call_rpc_count
    end
  end

  def test_get_audience_export
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::AudienceExport.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_audience_export_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_audience_export, name
      assert_kind_of ::Google::Analytics::Data::V1beta::GetAudienceExportRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_audience_export_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_audience_export({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_audience_export name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_audience_export ::Google::Analytics::Data::V1beta::GetAudienceExportRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_audience_export({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_audience_export(::Google::Analytics::Data::V1beta::GetAudienceExportRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_audience_export_client_stub.call_rpc_count
    end
  end

  def test_list_audience_exports
    # Create GRPC objects.
    grpc_response = ::Google::Analytics::Data::V1beta::ListAudienceExportsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_audience_exports_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_audience_exports, name
      assert_kind_of ::Google::Analytics::Data::V1beta::ListAudienceExportsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_audience_exports_client_stub do
      # Create client
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_audience_exports({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_audience_exports parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_audience_exports ::Google::Analytics::Data::V1beta::ListAudienceExportsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_audience_exports({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_audience_exports(::Google::Analytics::Data::V1beta::ListAudienceExportsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_audience_exports_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Analytics::Data::V1beta::AnalyticsData::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Analytics::Data::V1beta::AnalyticsData::Operations, client.operations_client
  end
end
