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
  module Type
    # Represents civil time (or occasionally physical time).
    #
    # This type can represent a civil time in one of a few possible ways:
    #
    #  * When utc_offset is set and time_zone is unset: a civil time on a calendar
    #    day with a particular offset from UTC.
    #  * When time_zone is set and utc_offset is unset: a civil time on a calendar
    #    day in a particular time zone.
    #  * When neither time_zone nor utc_offset is set: a civil time on a calendar
    #    day in local time.
    #
    # The date is relative to the Proleptic Gregorian Calendar.
    #
    # If year is 0, the DateTime is considered not to have a specific year. month
    # and day must have valid, non-zero values.
    #
    # This type may also be used to represent a physical time if all the date and
    # time fields are set and either case of the `time_offset` oneof is set.
    # Consider using `Timestamp` message for physical time instead. If your use
    # case also would like to store the user's timezone, that can be done in
    # another field.
    #
    # This type is more flexible than some applications may want. Make sure to
    # document and validate your application's limitations.
    # @!attribute [rw] year
    #   @return [::Integer]
    #     Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a
    #     datetime without a year.
    # @!attribute [rw] month
    #   @return [::Integer]
    #     Required. Month of year. Must be from 1 to 12.
    # @!attribute [rw] day
    #   @return [::Integer]
    #     Required. Day of month. Must be from 1 to 31 and valid for the year and
    #     month.
    # @!attribute [rw] hours
    #   @return [::Integer]
    #     Required. Hours of day in 24 hour format. Should be from 0 to 23. An API
    #     may choose to allow the value "24:00:00" for scenarios like business
    #     closing time.
    # @!attribute [rw] minutes
    #   @return [::Integer]
    #     Required. Minutes of hour of day. Must be from 0 to 59.
    # @!attribute [rw] seconds
    #   @return [::Integer]
    #     Required. Seconds of minutes of the time. Must normally be from 0 to 59. An
    #     API may allow the value 60 if it allows leap-seconds.
    # @!attribute [rw] nanos
    #   @return [::Integer]
    #     Required. Fractions of seconds in nanoseconds. Must be from 0 to
    #     999,999,999.
    # @!attribute [rw] utc_offset
    #   @return [::Google::Protobuf::Duration]
    #     UTC offset. Must be whole seconds, between -18 hours and +18 hours.
    #     For example, a UTC offset of -4:00 would be represented as
    #     { seconds: -14400 }.
    #
    #     Note: The following fields are mutually exclusive: `utc_offset`, `time_zone`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] time_zone
    #   @return [::Google::Type::TimeZone]
    #     Time zone.
    #
    #     Note: The following fields are mutually exclusive: `time_zone`, `utc_offset`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    class DateTime
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Represents a time zone from the
    # [IANA Time Zone Database](https://www.iana.org/time-zones).
    # @!attribute [rw] id
    #   @return [::String]
    #     IANA Time Zone Database time zone, e.g. "America/New_York".
    # @!attribute [rw] version
    #   @return [::String]
    #     Optional. IANA Time Zone Database version number, e.g. "2019a".
    class TimeZone
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
