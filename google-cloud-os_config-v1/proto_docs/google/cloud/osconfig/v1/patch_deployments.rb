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


module Google
  module Cloud
    module OsConfig
      module V1
        # Patch deployments are configurations that individual patch jobs use to
        # complete a patch. These configurations include instance filter, package
        # repository settings, and a schedule. For more information about creating and
        # managing patch deployments, see [Scheduling patch
        # jobs](https://cloud.google.com/compute/docs/os-patch-management/schedule-patch-jobs).
        # @!attribute [rw] name
        #   @return [::String]
        #     Unique name for the patch deployment resource in a project. The patch
        #     deployment name is in the form:
        #     `projects/{project_id}/patchDeployments/{patch_deployment_id}`.
        #     This field is ignored when you create a new patch deployment.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the patch deployment. Length of the description is
        #     limited to 1024 characters.
        # @!attribute [rw] instance_filter
        #   @return [::Google::Cloud::OsConfig::V1::PatchInstanceFilter]
        #     Required. VM instances to patch.
        # @!attribute [rw] patch_config
        #   @return [::Google::Cloud::OsConfig::V1::PatchConfig]
        #     Optional. Patch configuration that is applied.
        # @!attribute [rw] duration
        #   @return [::Google::Protobuf::Duration]
        #     Optional. Duration of the patch. After the duration ends, the patch times
        #     out.
        # @!attribute [rw] one_time_schedule
        #   @return [::Google::Cloud::OsConfig::V1::OneTimeSchedule]
        #     Required. Schedule a one-time execution.
        #
        #     Note: The following fields are mutually exclusive: `one_time_schedule`, `recurring_schedule`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] recurring_schedule
        #   @return [::Google::Cloud::OsConfig::V1::RecurringSchedule]
        #     Required. Schedule recurring executions.
        #
        #     Note: The following fields are mutually exclusive: `recurring_schedule`, `one_time_schedule`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time the patch deployment was created. Timestamp is in
        #     [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time the patch deployment was last updated. Timestamp is in
        #     [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # @!attribute [r] last_execute_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last time a patch job was started by this deployment.
        #     Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text
        #     format.
        # @!attribute [rw] rollout
        #   @return [::Google::Cloud::OsConfig::V1::PatchRollout]
        #     Optional. Rollout strategy of the patch job.
        # @!attribute [r] state
        #   @return [::Google::Cloud::OsConfig::V1::PatchDeployment::State]
        #     Output only. Current state of the patch deployment.
        class PatchDeployment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents state of patch peployment.
          module State
            # The default value. This value is used if the state is omitted.
            STATE_UNSPECIFIED = 0

            # Active value means that patch deployment generates Patch Jobs.
            ACTIVE = 1

            # Paused value means that patch deployment does not generate
            # Patch jobs. Requires user action to move in and out from this state.
            PAUSED = 2
          end
        end

        # Sets the time for a one time patch deployment. Timestamp is in
        # [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
        # @!attribute [rw] execute_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Required. The desired patch job execution time.
        class OneTimeSchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Sets the time for recurring patch deployments.
        # @!attribute [rw] time_zone
        #   @return [::Google::Type::TimeZone]
        #     Required. Defines the time zone that `time_of_day` is relative to.
        #     The rules for daylight saving time are determined by the chosen time zone.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The time that the recurring schedule becomes effective.
        #     Defaults to `create_time` of the patch deployment.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The end time at which a recurring patch deployment schedule is no
        #     longer active.
        # @!attribute [rw] time_of_day
        #   @return [::Google::Type::TimeOfDay]
        #     Required. Time of the day to run a recurring deployment.
        # @!attribute [rw] frequency
        #   @return [::Google::Cloud::OsConfig::V1::RecurringSchedule::Frequency]
        #     Required. The frequency unit of this recurring schedule.
        # @!attribute [rw] weekly
        #   @return [::Google::Cloud::OsConfig::V1::WeeklySchedule]
        #     Required. Schedule with weekly executions.
        #
        #     Note: The following fields are mutually exclusive: `weekly`, `monthly`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] monthly
        #   @return [::Google::Cloud::OsConfig::V1::MonthlySchedule]
        #     Required. Schedule with monthly executions.
        #
        #     Note: The following fields are mutually exclusive: `monthly`, `weekly`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] last_execute_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the last patch job ran successfully.
        # @!attribute [r] next_execute_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the next patch job is scheduled to run.
        class RecurringSchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specifies the frequency of the recurring patch deployments.
          module Frequency
            # Invalid. A frequency must be specified.
            FREQUENCY_UNSPECIFIED = 0

            # Indicates that the frequency of recurrence should be expressed in terms
            # of weeks.
            WEEKLY = 1

            # Indicates that the frequency of recurrence should be expressed in terms
            # of months.
            MONTHLY = 2

            # Indicates that the frequency of recurrence should be expressed in terms
            # of days.
            DAILY = 3
          end
        end

        # Represents a weekly schedule.
        # @!attribute [rw] day_of_week
        #   @return [::Google::Type::DayOfWeek]
        #     Required. Day of the week.
        class WeeklySchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a monthly schedule. An example of a valid monthly schedule is
        # "on the third Tuesday of the month" or "on the 15th of the month".
        # @!attribute [rw] week_day_of_month
        #   @return [::Google::Cloud::OsConfig::V1::WeekDayOfMonth]
        #     Required. Week day in a month.
        #
        #     Note: The following fields are mutually exclusive: `week_day_of_month`, `month_day`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] month_day
        #   @return [::Integer]
        #     Required. One day of the month. 1-31 indicates the 1st to the 31st day.
        #     -1 indicates the last day of the month. Months without the target day
        #     will be skipped. For example, a schedule to run "every month on the 31st"
        #     will not run in February, April, June, etc.
        #
        #     Note: The following fields are mutually exclusive: `month_day`, `week_day_of_month`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class MonthlySchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents one week day in a month. An example is "the 4th Sunday".
        # @!attribute [rw] week_ordinal
        #   @return [::Integer]
        #     Required. Week number in a month. 1-4 indicates the 1st to 4th week of the
        #     month. -1 indicates the last week of the month.
        # @!attribute [rw] day_of_week
        #   @return [::Google::Type::DayOfWeek]
        #     Required. A day of the week.
        # @!attribute [rw] day_offset
        #   @return [::Integer]
        #     Optional. Represents the number of days before or after the given week day
        #     of month that the patch deployment is scheduled for. For example if
        #     `week_ordinal` and `day_of_week` values point to the second day of the
        #     month and this `day_offset` value is set to `3`, the patch deployment takes
        #     place three days after the second Tuesday of the month. If this value is
        #     negative, for example -5, the patches are deployed five days before before
        #     the second Tuesday of the month. Allowed values are in range [-30, 30].
        class WeekDayOfMonth
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for creating a patch deployment.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project to apply this patch deployment to in the form
        #     `projects/*`.
        # @!attribute [rw] patch_deployment_id
        #   @return [::String]
        #     Required. A name for the patch deployment in the project. When creating a
        #     name the following rules apply:
        #     * Must contain only lowercase letters, numbers, and hyphens.
        #     * Must start with a letter.
        #     * Must be between 1-63 characters.
        #     * Must end with a number or a letter.
        #     * Must be unique within the project.
        # @!attribute [rw] patch_deployment
        #   @return [::Google::Cloud::OsConfig::V1::PatchDeployment]
        #     Required. The patch deployment to create.
        class CreatePatchDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for retrieving a patch deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the patch deployment in the form
        #     `projects/*/patchDeployments/*`.
        class GetPatchDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for listing patch deployments.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent in the form `projects/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of patch deployments to return. Default is
        #     100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A pagination token returned from a previous call to
        #     ListPatchDeployments that indicates where this listing should continue
        #     from.
        class ListPatchDeploymentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response message for listing patch deployments.
        # @!attribute [rw] patch_deployments
        #   @return [::Array<::Google::Cloud::OsConfig::V1::PatchDeployment>]
        #     The list of patch deployments.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A pagination token that can be used to get the next page of patch
        #     deployments.
        class ListPatchDeploymentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for deleting a patch deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the patch deployment in the form
        #     `projects/*/patchDeployments/*`.
        class DeletePatchDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for updating a patch deployment.
        # @!attribute [rw] patch_deployment
        #   @return [::Google::Cloud::OsConfig::V1::PatchDeployment]
        #     Required. The patch deployment to Update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Field mask that controls which fields of the patch deployment
        #     should be updated.
        class UpdatePatchDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for pausing a patch deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the patch deployment in the form
        #     `projects/*/patchDeployments/*`.
        class PausePatchDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request message for resuming a patch deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the patch deployment in the form
        #     `projects/*/patchDeployments/*`.
        class ResumePatchDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
