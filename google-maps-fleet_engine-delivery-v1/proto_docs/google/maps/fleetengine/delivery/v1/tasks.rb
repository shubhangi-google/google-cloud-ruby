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
          # A Task in the Delivery API represents a single action to track. In general,
          # there is a distinction between shipment-related Tasks and break Tasks. A
          # shipment can have multiple Tasks associated with it. For example, there could
          # be one Task for the pickup, and one for the drop-off or transfer. Also,
          # different Tasks for a given shipment can be handled by different vehicles.
          # For example, one vehicle could handle the pickup, driving the shipment to the
          # hub, while another vehicle drives the same shipment from the hub to the
          # drop-off location.
          #
          # Note: gRPC and REST APIs use different field naming conventions. For example,
          # the `Task.journey_sharing_info` field in the gRPC API and the
          # `Task.journeySharingInfo` field in the REST API refer to the same
          # field.
          # @!attribute [rw] name
          #   @return [::String]
          #     Must be in the format `providers/{provider}/tasks/{task}`.
          # @!attribute [rw] type
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::Task::Type]
          #     Required. Immutable. Defines the type of the Task. For example, a break or
          #     shipment.
          # @!attribute [rw] state
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::Task::State]
          #     Required. The current execution state of the Task.
          # @!attribute [rw] task_outcome
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::Task::TaskOutcome]
          #     The outcome of the Task.
          # @!attribute [rw] task_outcome_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The timestamp that indicates when the `Task`'s outcome was set by the
          #     provider.
          # @!attribute [rw] task_outcome_location
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::LocationInfo]
          #     The location where the `Task`'s outcome was set. This value is updated as
          #     part of `UpdateTask`. If this value isn't explicitly updated by the
          #     provider, then Fleet Engine populates it by default with the last known
          #     vehicle location (the *raw* location).
          # @!attribute [rw] task_outcome_location_source
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::Task::TaskOutcomeLocationSource]
          #     Indicates where the value of the `task_outcome_location` came from.
          # @!attribute [rw] tracking_id
          #   @return [::String]
          #     Immutable. This field facilitates the storing of an ID so you can avoid
          #     using a complicated mapping. You cannot set `tracking_id` for Tasks of type
          #     `UNAVAILABLE` and `SCHEDULED_STOP`. These IDs are subject to the
          #     following restrictions:
          #
          #     * Must be a valid Unicode string.
          #     * Limited to a maximum length of 64 characters.
          #     * Normalized according to [Unicode Normalization Form C]
          #     (http://www.unicode.org/reports/tr15/).
          #     * May not contain any of the following ASCII characters: '/', ':', '?',
          #     ',', or '#'.
          # @!attribute [r] delivery_vehicle_id
          #   @return [::String]
          #     Output only. The ID of the vehicle that is executing this Task. Delivery
          #     Vehicle IDs are subject to the following restrictions:
          #
          #     * Must be a valid Unicode string.
          #     * Limited to a maximum length of 64 characters.
          #     * Normalized according to [Unicode Normalization Form C]
          #     (http://www.unicode.org/reports/tr15/).
          #     * May not contain any of the following ASCII characters: '/', ':', '?',
          #     ',', or '#'.
          # @!attribute [rw] planned_location
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::LocationInfo]
          #     Immutable. The location where the Task will be completed.
          #     Optional for `UNAVAILABLE` Tasks, but required for all other Tasks.
          # @!attribute [rw] task_duration
          #   @return [::Google::Protobuf::Duration]
          #     Required. Immutable. The time needed to execute a Task at this location.
          # @!attribute [rw] target_time_window
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TimeWindow]
          #     The time window during which the task should be completed.
          # @!attribute [r] journey_sharing_info
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::Task::JourneySharingInfo]
          #     Output only. Journey sharing-specific fields. Not populated when state is
          #     `CLOSED`.
          # @!attribute [rw] task_tracking_view_config
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingViewConfig]
          #     The configuration for task tracking that specifies which data elements are
          #     visible to the end users under what circumstances.
          # @!attribute [rw] attributes
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::TaskAttribute>]
          #     A list of custom Task attributes. Each attribute must have a unique key.
          class Task
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Journey sharing specific fields.
            # @!attribute [rw] remaining_vehicle_journey_segments
            #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::VehicleJourneySegment>]
            #     Tracking information for the stops that the assigned vehicle will make
            #     before it completes this Task. Note that this list can contain stops
            #     from other tasks.
            #
            #     The first segment,
            #     `Task.journey_sharing_info.remaining_vehicle_journey_segments[0]` (gRPC)
            #     or `Task.journeySharingInfo.remainingVehicleJourneySegments[0]` (REST),
            #     contains route information from the driver's last known location to the
            #     upcoming `VehicleStop`. Current route information usually comes from the
            #     driver app, except for some cases noted in the documentation for
            #     {::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle#current_route_segment DeliveryVehicle.current_route_segment}.
            #     The other segments in
            #     `Task.journey_sharing_info.remaining_vehicle_journey_segments` (gRPC) or
            #     `Task.journeySharingInfo.remainingVehicleJourneySegments` (REST) are
            #     populated by Fleet Engine. They provide route information between the
            #     remaining `VehicleStops`.
            # @!attribute [rw] last_location
            #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicleLocation]
            #     Indicates the vehicle's last reported location of the assigned vehicle.
            # @!attribute [rw] last_location_snappable
            #   @return [::Boolean]
            #     Indicates whether the vehicle's lastLocation can be snapped to
            #     the `current_route_segment`. This value is False if either
            #     `last_location` or `current_route_segment` don't exist. This value is
            #     computed by Fleet Engine. Updates from clients are ignored.
            class JourneySharingInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The type of Task.
            module Type
              # Default, the Task type is unknown.
              TYPE_UNSPECIFIED = 0

              # A pickup Task is the action taken for picking up a shipment from a
              # customer. Depot or feeder vehicle pickups should use the `SCHEDULED_STOP`
              # type.
              PICKUP = 1

              # A delivery Task is the action taken for delivering a shipment to an end
              # customer. Depot or feeder vehicle dropoffs should use the
              # `SCHEDULED_STOP` type.
              DELIVERY = 2

              # A scheduled stop Task is used for planning purposes. For example, it
              # could represent picking up or dropping off shipments from feeder vehicles
              # or depots. It shouldn't be used for any shipments that are picked up or
              # dropped off from an end customer.
              SCHEDULED_STOP = 3

              # A Task that means the Vehicle is not available for service. For example,
              # this can happen when the driver takes a break, or when the vehicle
              # is being refueled.
              UNAVAILABLE = 4
            end

            # The state of a Task. This indicates the Tasks's progress.
            module State
              # Default. Used for an unspecified or unrecognized Task state.
              STATE_UNSPECIFIED = 0

              # Either the Task has not yet been assigned to a delivery vehicle, or the
              # delivery vehicle has not yet passed the `Task`'s assigned vehicle stop.
              OPEN = 1

              # When the vehicle passes the vehicle stop for this Task.
              CLOSED = 2
            end

            # The outcome of attempting to execute a Task. When `TaskState` is closed,
            # `TaskOutcome` indicates whether it was completed successfully.
            module TaskOutcome
              # The Task outcome before its value is set.
              TASK_OUTCOME_UNSPECIFIED = 0

              # The Task completed successfully.
              SUCCEEDED = 1

              # Either the Task couldn't be completed, or it was cancelled.
              FAILED = 2
            end

            # The identity of the source that populated the `task_outcome_location`.
            module TaskOutcomeLocationSource
              # The task outcome before it is set.
              TASK_OUTCOME_LOCATION_SOURCE_UNSPECIFIED = 0

              # The provider-specified the `task_outcome_location`.
              PROVIDER = 2

              # The provider didn't specify the `task_outcome_location`, so Fleet Engine
              # used the last known vehicle location.
              LAST_VEHICLE_LOCATION = 3
            end
          end

          # The configuration message that defines when a data element of a Task should
          # be visible to the end users.
          # @!attribute [rw] route_polyline_points_visibility
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingViewConfig::VisibilityOption]
          #     The field that specifies when route polyline points can be visible. If this
          #     field is not specified, the project level default visibility configuration
          #     for this data will be used.
          # @!attribute [rw] estimated_arrival_time_visibility
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingViewConfig::VisibilityOption]
          #     The field that specifies when estimated arrival time can be visible. If
          #     this field is not specified, the project level default visibility
          #     configuration for this data will be used.
          # @!attribute [rw] estimated_task_completion_time_visibility
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingViewConfig::VisibilityOption]
          #     The field that specifies when estimated task completion time can be
          #     visible. If this field is not specified, the project level default
          #     visibility configuration for this data will be used.
          # @!attribute [rw] remaining_driving_distance_visibility
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingViewConfig::VisibilityOption]
          #     The field that specifies when remaining driving distance can be visible. If
          #     this field is not specified, the project level default visibility
          #     configuration for this data will be used.
          # @!attribute [rw] remaining_stop_count_visibility
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingViewConfig::VisibilityOption]
          #     The field that specifies when remaining stop count can be visible. If this
          #     field is not specified, the project level default visibility configuration
          #     for this data will be used.
          # @!attribute [rw] vehicle_location_visibility
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingViewConfig::VisibilityOption]
          #     The field that specifies when vehicle location can be visible. If this
          #     field is not specified, the project level default visibility configuration
          #     for this data will be used.
          class TaskTrackingViewConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The option message that defines when a data element should be visible to
            # the end users.
            # @!attribute [rw] remaining_stop_count_threshold
            #   @return [::Integer]
            #     This data element is visible to the end users if the remaining stop
            #     count <= remaining_stop_count_threshold.
            #
            #     Note: The following fields are mutually exclusive: `remaining_stop_count_threshold`, `duration_until_estimated_arrival_time_threshold`, `remaining_driving_distance_meters_threshold`, `always`, `never`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            # @!attribute [rw] duration_until_estimated_arrival_time_threshold
            #   @return [::Google::Protobuf::Duration]
            #     This data element is visible to the end users if the ETA to the stop
            #     <= duration_until_estimated_arrival_time_threshold.
            #
            #     Note: The following fields are mutually exclusive: `duration_until_estimated_arrival_time_threshold`, `remaining_stop_count_threshold`, `remaining_driving_distance_meters_threshold`, `always`, `never`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            # @!attribute [rw] remaining_driving_distance_meters_threshold
            #   @return [::Integer]
            #     This data element is visible to the end users if the remaining
            #     driving distance in meters <=
            #     remaining_driving_distance_meters_threshold.
            #
            #     Note: The following fields are mutually exclusive: `remaining_driving_distance_meters_threshold`, `remaining_stop_count_threshold`, `duration_until_estimated_arrival_time_threshold`, `always`, `never`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            # @!attribute [rw] always
            #   @return [::Boolean]
            #     If set to true, this data element is always visible to the end users
            #     with no thresholds. This field cannot be set to false.
            #
            #     Note: The following fields are mutually exclusive: `always`, `remaining_stop_count_threshold`, `duration_until_estimated_arrival_time_threshold`, `remaining_driving_distance_meters_threshold`, `never`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            # @!attribute [rw] never
            #   @return [::Boolean]
            #     If set to true, this data element is always hidden from the end users
            #     with no thresholds. This field cannot be set to false.
            #
            #     Note: The following fields are mutually exclusive: `never`, `remaining_stop_count_threshold`, `duration_until_estimated_arrival_time_threshold`, `remaining_driving_distance_meters_threshold`, `always`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            class VisibilityOption
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
