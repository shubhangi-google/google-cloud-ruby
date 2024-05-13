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


module Google
  module Maps
    module FleetEngine
      module Delivery
        module V1
          # The `DeliveryVehicle` message. A delivery vehicle transports shipments from a
          # depot to a delivery location, and from a pickup location to the depot. In
          # some cases, delivery vehicles also transport shipments directly from the
          # pickup location to the delivery location.
          #
          # Note: gRPC and REST APIs use different field naming conventions. For example,
          # the `DeliveryVehicle.current_route_segment` field in the gRPC API and the
          # `DeliveryVehicle.currentRouteSegment` field in the REST API refer to the same
          # field.
          # @!attribute [rw] name
          #   @return [::String]
          #     The unique name of this Delivery Vehicle.
          #     The format is `providers/{provider}/deliveryVehicles/{vehicle}`.
          # @!attribute [rw] last_location
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicleLocation]
          #     The last reported location of the Delivery Vehicle.
          # @!attribute [rw] navigation_status
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicleNavigationStatus]
          #     The Delivery Vehicle's navigation status.
          # @!attribute [rw] current_route_segment
          #   @return [::String]
          #     The encoded polyline specifying the route that the navigation recommends
          #     taking to the next waypoint. Your driver app updates this when a
          #     stop is reached or passed, and when the navigation reroutes. These
          #     `LatLng`s are returned in
          #     `Task.journey_sharing_info.remaining_vehicle_journey_segments[0].path`
          #     (gRPC) or `Task.journeySharingInfo.remainingVehicleJourneySegments[0].path`
          #     (REST) for all active Tasks assigned to the Vehicle.
          #
          #     There are a few cases where this field might not be used to populate
          #     `Task.journey_sharing_info.remaining_vehicle_journey_segments[0].path`
          #     (gRPC) or `Task.journeySharingInfo.remainingVehicleJourneySegments[0].path`
          #     (REST):
          #
          #     * The endpoint of the `current_route_segment` does not match
          #     `DeliveryVehicle.remaining_vehicle_journey_segments[0].stop` (gRPC) or
          #     `DeliveryVehicle.remainingVehicleJourneySegments[0].stop` (REST).
          #
          #     * The driver app has not updated its location recently, so the last
          #     updated value for this field might be stale.
          #
          #     * The driver app has recently updated its location, but the
          #     `current_route_segment` is stale, and points to a previous vehicle stop.
          #
          #     In these cases, Fleet Engine populates this field with a route from the
          #     most recently passed VehicleStop to the upcoming VehicleStop to ensure that
          #     the consumer of this field has the best available information on the
          #     current path of the Delivery Vehicle.
          # @!attribute [rw] current_route_segment_end_point
          #   @return [::Google::Type::LatLng]
          #     The location where the `current_route_segment` ends. This is not currently
          #     populated by the driver app, but you can supply it on
          #     `UpdateDeliveryVehicle` calls. It is either the `LatLng` from the upcoming
          #     vehicle stop, or the last `LatLng` of the `current_route_segment`. Fleet
          #     Engine will then do its best to interpolate to an actual `VehicleStop`.
          #
          #     This field is ignored in `UpdateDeliveryVehicle` calls if the
          #     `current_route_segment` field is empty.
          # @!attribute [rw] remaining_distance_meters
          #   @return [::Google::Protobuf::Int32Value]
          #     The remaining driving distance for the `current_route_segment`.
          #     The Driver app typically provides this field, but there are some
          #     circumstances in which Fleet Engine will override the value sent by the
          #     app. For more information, see
          #     {::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle#current_route_segment DeliveryVehicle.current_route_segment}.
          #     This field is returned in
          #     `Task.remaining_vehicle_journey_segments[0].driving_distance_meters` (gRPC)
          #     or `Task.remainingVehicleJourneySegments[0].drivingDistanceMeters` (REST)
          #     for all active `Task`s assigned to the Delivery Vehicle.
          #
          #     Fleet Engine ignores this field in `UpdateDeliveryVehicleRequest` if the
          #     `current_route_segment` field is empty.
          # @!attribute [rw] remaining_duration
          #   @return [::Google::Protobuf::Duration]
          #     The remaining driving time for the `current_route_segment`.
          #     The Driver app typically provides this field, but there are some
          #     circumstances in which Fleet Engine will override the value sent by the
          #     app.  For more information, see
          #     {::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle#current_route_segment DeliveryVehicle.current_route_segment}.
          #     This field is returned in
          #     `Task.remaining_vehicle_journey_segments[0].driving_duration` (gRPC) or
          #     `Task.remainingVehicleJourneySegments[0].drivingDuration` (REST) for all
          #     active tasks assigned to the Delivery Vehicle.
          #
          #     Fleet Engine ignores this field in `UpdateDeliveryVehicleRequest` if the
          #     `current_route_segment` field is empty.
          # @!attribute [rw] remaining_vehicle_journey_segments
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::VehicleJourneySegment>]
          #     The journey segments assigned to this Delivery Vehicle, starting from the
          #     Vehicle's most recently reported location. This field won't be populated
          #     in the response of `ListDeliveryVehicles`.
          # @!attribute [rw] attributes
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicleAttribute>]
          #     A list of custom Delivery Vehicle attributes. A Delivery Vehicle can have
          #     at most 100 attributes, and each attribute must have a unique key.
          # @!attribute [rw] type
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle::DeliveryVehicleType]
          #     The type of this delivery vehicle. If unset, this will default to `AUTO`.
          class DeliveryVehicle
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The type of delivery vehicle.
            module DeliveryVehicleType
              # The value is unused.
              DELIVERY_VEHICLE_TYPE_UNSPECIFIED = 0

              # An automobile.
              AUTO = 1

              # A motorcycle, moped, or other two-wheeled vehicle
              TWO_WHEELER = 2

              # Human-powered transport.
              BICYCLE = 3

              # A human transporter, typically walking or running, traveling along
              # pedestrian pathways.
              PEDESTRIAN = 4
            end
          end

          # A location with any additional identifiers.
          # @!attribute [rw] point
          #   @return [::Google::Type::LatLng]
          #     The location's coordinates.
          class LocationInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a Vehicle’s travel segment - from its previous stop to the
          # current stop. If it is the first active stop, then it is from the
          # Vehicle’s current location to this stop.
          # @!attribute [rw] stop
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::VehicleStop]
          #     Specifies the stop location, along with the `Task`s associated with
          #     the stop. Some fields of the VehicleStop might not be present if this
          #     journey segment is part of `JourneySharingInfo`.
          # @!attribute [r] driving_distance_meters
          #   @return [::Google::Protobuf::Int32Value]
          #     Output only. The travel distance from the previous stop to this stop.
          #     If the current stop is the first stop in the list of journey
          #     segments, then the starting point is the vehicle's location recorded
          #     at the time that this stop was added to the list. This field might not be
          #     present if this journey segment is part of `JourneySharingInfo`.
          # @!attribute [r] driving_duration
          #   @return [::Google::Protobuf::Duration]
          #     Output only. The travel time from the previous stop to this stop.
          #     If the current stop is the first stop in the list of journey
          #     segments, then the starting point is the Vehicle's location recorded
          #     at the time that this stop was added to the list.
          #
          #     If this field is defined in the path
          #     `Task.remaining_vehicle_journey_segments[0].driving_duration` (gRPC) or
          #     `Task.remainingVehicleJourneySegments[0].drivingDuration` (REST),
          #     then it may be populated with the value from
          #     `DeliveryVehicle.remaining_duration` (gRPC) or
          #     `DeliveryVehicle.remainingDuration` (REST).
          #     This provides the remaining driving duration from the driver app's latest
          #     known location rather than the driving time from the previous stop.
          # @!attribute [r] path
          #   @return [::Array<::Google::Type::LatLng>]
          #     Output only. The path from the previous stop to this stop. If the current
          #     stop is the first stop in the list of journey segments, then this is the
          #     path from the vehicle's current location to this stop at the time that the
          #     stop was added to the list. This field might not be present if this journey
          #     segment is part of `JourneySharingInfo`.
          #
          #     If this field is defined in the path
          #     `Task.journey_sharing_info.remaining_vehicle_journey_segments[0].path`
          #     (gRPC) or `Task.journeySharingInfo.remainingVehicleJourneySegments[0].path`
          #     (REST), then it may be populated with the `LatLng`s decoded from
          #     `DeliveryVehicle.current_route_segment` (gRPC) or
          #     `DeliveryVehicle.currentRouteSegment` (REST). This provides the driving
          #     path from the driver app's latest known location rather than the path from
          #     the previous stop.
          class VehicleJourneySegment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes a point where a Vehicle stops to perform one or more `Task`s.
          # @!attribute [rw] planned_location
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::LocationInfo]
          #     Required. The location of the stop. Note that the locations in the `Task`s
          #     might not exactly match this location, but will be within a short distance
          #     of it. This field won't be populated in the response of a `GetTask` call.
          # @!attribute [rw] tasks
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::VehicleStop::TaskInfo>]
          #     The list of `Task`s to be performed at this stop. This field won't be
          #     populated in the response of a `GetTask` call.
          # @!attribute [rw] state
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::VehicleStop::State]
          #     The state of the `VehicleStop`. This field won't be populated in the
          #     response of a `GetTask` call.
          class VehicleStop
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Additional information about the Task performed at this stop.
            # @!attribute [rw] task_id
            #   @return [::String]
            #     The Task ID. This field won't be populated in the response of a `GetTask`
            #     call. Task IDs are subject to the following restrictions:
            #
            #     * Must be a valid Unicode string.
            #     * Limited to a maximum length of 64 characters.
            #     * Normalized according to [Unicode Normalization Form C]
            #     (http://www.unicode.org/reports/tr15/).
            #     * May not contain any of the following ASCII characters: '/', ':', '?',
            #     ',', or '#'.
            # @!attribute [r] task_duration
            #   @return [::Google::Protobuf::Duration]
            #     Output only. The time required to perform the Task.
            # @!attribute [r] target_time_window
            #   @return [::Google::Maps::FleetEngine::Delivery::V1::TimeWindow]
            #     Output only. The time window during which the task should be completed.
            #     This is only set in the response to `GetDeliveryVehicle`.
            class TaskInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The current state of a `VehicleStop`.
            module State
              # Unknown.
              STATE_UNSPECIFIED = 0

              # Created, but not actively routing.
              NEW = 1

              # Assigned and actively routing.
              ENROUTE = 2

              # Arrived at stop. Assumes that when the Vehicle is routing to the next
              # stop, that all previous stops have been completed.
              ARRIVED = 3
            end
          end
        end
      end
    end
  end
end
