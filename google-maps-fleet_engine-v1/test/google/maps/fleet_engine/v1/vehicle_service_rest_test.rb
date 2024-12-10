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
require "gapic/rest"
require "google/maps/fleetengine/v1/vehicle_api_pb"
require "google/maps/fleet_engine/v1/vehicle_service/rest"


class ::Google::Maps::FleetEngine::V1::VehicleService::Rest::ClientTest < Minitest::Test
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

  def test_create_vehicle
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::Vehicle.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    vehicle_id = "hello world"
    vehicle = {}

    create_vehicle_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::VehicleService::Rest::ServiceStub.stub :transcode_create_vehicle_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_vehicle_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_vehicle({ header: header, parent: parent, vehicle_id: vehicle_id, vehicle: vehicle }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_vehicle header: header, parent: parent, vehicle_id: vehicle_id, vehicle: vehicle do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_vehicle ::Google::Maps::FleetEngine::V1::CreateVehicleRequest.new(header: header, parent: parent, vehicle_id: vehicle_id, vehicle: vehicle) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_vehicle({ header: header, parent: parent, vehicle_id: vehicle_id, vehicle: vehicle }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_vehicle(::Google::Maps::FleetEngine::V1::CreateVehicleRequest.new(header: header, parent: parent, vehicle_id: vehicle_id, vehicle: vehicle), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_vehicle_client_stub.call_count
      end
    end
  end

  def test_get_vehicle
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::Vehicle.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"
    current_route_segment_version = {}
    waypoints_version = {}

    get_vehicle_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::VehicleService::Rest::ServiceStub.stub :transcode_get_vehicle_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_vehicle_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_vehicle({ header: header, name: name, current_route_segment_version: current_route_segment_version, waypoints_version: waypoints_version }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_vehicle header: header, name: name, current_route_segment_version: current_route_segment_version, waypoints_version: waypoints_version do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_vehicle ::Google::Maps::FleetEngine::V1::GetVehicleRequest.new(header: header, name: name, current_route_segment_version: current_route_segment_version, waypoints_version: waypoints_version) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_vehicle({ header: header, name: name, current_route_segment_version: current_route_segment_version, waypoints_version: waypoints_version }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_vehicle(::Google::Maps::FleetEngine::V1::GetVehicleRequest.new(header: header, name: name, current_route_segment_version: current_route_segment_version, waypoints_version: waypoints_version), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_vehicle_client_stub.call_count
      end
    end
  end

  def test_update_vehicle
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::Vehicle.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"
    vehicle = {}
    update_mask = {}

    update_vehicle_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::VehicleService::Rest::ServiceStub.stub :transcode_update_vehicle_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_vehicle_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_vehicle({ header: header, name: name, vehicle: vehicle, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_vehicle header: header, name: name, vehicle: vehicle, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_vehicle ::Google::Maps::FleetEngine::V1::UpdateVehicleRequest.new(header: header, name: name, vehicle: vehicle, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_vehicle({ header: header, name: name, vehicle: vehicle, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_vehicle(::Google::Maps::FleetEngine::V1::UpdateVehicleRequest.new(header: header, name: name, vehicle: vehicle, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_vehicle_client_stub.call_count
      end
    end
  end

  def test_update_vehicle_attributes
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::UpdateVehicleAttributesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"
    attributes = [{}]

    update_vehicle_attributes_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::VehicleService::Rest::ServiceStub.stub :transcode_update_vehicle_attributes_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_vehicle_attributes_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_vehicle_attributes({ header: header, name: name, attributes: attributes }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_vehicle_attributes header: header, name: name, attributes: attributes do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_vehicle_attributes ::Google::Maps::FleetEngine::V1::UpdateVehicleAttributesRequest.new(header: header, name: name, attributes: attributes) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_vehicle_attributes({ header: header, name: name, attributes: attributes }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_vehicle_attributes(::Google::Maps::FleetEngine::V1::UpdateVehicleAttributesRequest.new(header: header, name: name, attributes: attributes), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_vehicle_attributes_client_stub.call_count
      end
    end
  end

  def test_list_vehicles
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::ListVehiclesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    minimum_capacity = {}
    trip_types = [:UNKNOWN_TRIP_TYPE]
    maximum_staleness = {}
    vehicle_type_categories = [:UNKNOWN]
    required_attributes = ["hello world"]
    required_one_of_attributes = ["hello world"]
    required_one_of_attribute_sets = ["hello world"]
    vehicle_state = :UNKNOWN_VEHICLE_STATE
    on_trip_only = true
    filter = "hello world"
    viewport = {}

    list_vehicles_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::VehicleService::Rest::ServiceStub.stub :transcode_list_vehicles_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_vehicles_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_vehicles({ header: header, parent: parent, page_size: page_size, page_token: page_token, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_type_categories: vehicle_type_categories, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, vehicle_state: vehicle_state, on_trip_only: on_trip_only, filter: filter, viewport: viewport }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_vehicles header: header, parent: parent, page_size: page_size, page_token: page_token, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_type_categories: vehicle_type_categories, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, vehicle_state: vehicle_state, on_trip_only: on_trip_only, filter: filter, viewport: viewport do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_vehicles ::Google::Maps::FleetEngine::V1::ListVehiclesRequest.new(header: header, parent: parent, page_size: page_size, page_token: page_token, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_type_categories: vehicle_type_categories, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, vehicle_state: vehicle_state, on_trip_only: on_trip_only, filter: filter, viewport: viewport) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_vehicles({ header: header, parent: parent, page_size: page_size, page_token: page_token, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_type_categories: vehicle_type_categories, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, vehicle_state: vehicle_state, on_trip_only: on_trip_only, filter: filter, viewport: viewport }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_vehicles(::Google::Maps::FleetEngine::V1::ListVehiclesRequest.new(header: header, parent: parent, page_size: page_size, page_token: page_token, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_type_categories: vehicle_type_categories, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, vehicle_state: vehicle_state, on_trip_only: on_trip_only, filter: filter, viewport: viewport), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_vehicles_client_stub.call_count
      end
    end
  end

  def test_search_vehicles
    # Create test objects.
    client_result = ::Google::Maps::FleetEngine::V1::SearchVehiclesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    pickup_point = {}
    dropoff_point = {}
    pickup_radius_meters = 42
    count = 42
    minimum_capacity = 42
    trip_types = [:UNKNOWN_TRIP_TYPE]
    maximum_staleness = {}
    vehicle_types = [{}]
    required_attributes = [{}]
    required_one_of_attributes = [{}]
    required_one_of_attribute_sets = [{}]
    order_by = :UNKNOWN_VEHICLE_MATCH_ORDER
    include_back_to_back = true
    trip_id = "hello world"
    current_trips_present = :CURRENT_TRIPS_PRESENT_UNSPECIFIED
    filter = "hello world"

    search_vehicles_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Maps::FleetEngine::V1::VehicleService::Rest::ServiceStub.stub :transcode_search_vehicles_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_vehicles_client_stub do
        # Create client
        client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_vehicles({ header: header, parent: parent, pickup_point: pickup_point, dropoff_point: dropoff_point, pickup_radius_meters: pickup_radius_meters, count: count, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_types: vehicle_types, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, order_by: order_by, include_back_to_back: include_back_to_back, trip_id: trip_id, current_trips_present: current_trips_present, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_vehicles header: header, parent: parent, pickup_point: pickup_point, dropoff_point: dropoff_point, pickup_radius_meters: pickup_radius_meters, count: count, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_types: vehicle_types, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, order_by: order_by, include_back_to_back: include_back_to_back, trip_id: trip_id, current_trips_present: current_trips_present, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_vehicles ::Google::Maps::FleetEngine::V1::SearchVehiclesRequest.new(header: header, parent: parent, pickup_point: pickup_point, dropoff_point: dropoff_point, pickup_radius_meters: pickup_radius_meters, count: count, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_types: vehicle_types, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, order_by: order_by, include_back_to_back: include_back_to_back, trip_id: trip_id, current_trips_present: current_trips_present, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_vehicles({ header: header, parent: parent, pickup_point: pickup_point, dropoff_point: dropoff_point, pickup_radius_meters: pickup_radius_meters, count: count, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_types: vehicle_types, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, order_by: order_by, include_back_to_back: include_back_to_back, trip_id: trip_id, current_trips_present: current_trips_present, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_vehicles(::Google::Maps::FleetEngine::V1::SearchVehiclesRequest.new(header: header, parent: parent, pickup_point: pickup_point, dropoff_point: dropoff_point, pickup_radius_meters: pickup_radius_meters, count: count, minimum_capacity: minimum_capacity, trip_types: trip_types, maximum_staleness: maximum_staleness, vehicle_types: vehicle_types, required_attributes: required_attributes, required_one_of_attributes: required_one_of_attributes, required_one_of_attribute_sets: required_one_of_attribute_sets, order_by: order_by, include_back_to_back: include_back_to_back, trip_id: trip_id, current_trips_present: current_trips_present, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_vehicles_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Maps::FleetEngine::V1::VehicleService::Rest::Client::Configuration, config
  end
end
