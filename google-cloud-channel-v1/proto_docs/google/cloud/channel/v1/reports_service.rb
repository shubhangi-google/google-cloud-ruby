# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module Channel
      module V1
        # Request message for
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#run_report_job CloudChannelReportsService.RunReportJob}.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The report's resource name. Specifies the account and report used
        #     to generate report data. The report_id identifier is a UID (for example,
        #     `613bf59q`).
        #     Name uses the format:
        #     accounts/\\{account_id}/reports/\\{report_id}
        # @!attribute [rw] date_range
        #   @return [::Google::Cloud::Channel::V1::DateRange]
        #     Optional. The range of usage or invoice dates to include in the result.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. A structured string that defines conditions on dimension columns
        #     to restrict the report output.
        #
        #     Filters support logical operators (AND, OR, NOT) and conditional operators
        #     (=, !=, <, >, <=, and >=) using `column_id` as keys.
        #
        #     For example:
        #     `(customer:"accounts/C123abc/customers/S456def" OR
        #     customer:"accounts/C123abc/customers/S789ghi") AND
        #     invoice_start_date.year >= 2022`
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The BCP-47 language code, such as "en-US".  If specified, the
        #     response is localized to the corresponding language code if the
        #     original data sources support it.
        #     Default is "en-US".
        class RunReportJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#run_report_job CloudChannelReportsService.RunReportJob}.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] report_job
        #   @return [::Google::Cloud::Channel::V1::ReportJob]
        #     Pass `report_job.name` to
        #     {::Google::Cloud::Channel::V1::FetchReportResultsRequest#report_job FetchReportResultsRequest.report_job}
        #     to retrieve the report's results.
        # @!attribute [rw] report_metadata
        #   @return [::Google::Cloud::Channel::V1::ReportResultsMetadata]
        #     The metadata for the report's results (display name, columns, row count,
        #     and date range). If you view this before the operation finishes,
        #     you may see incomplete data.
        class RunReportJobResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#fetch_report_results CloudChannelReportsService.FetchReportResults}.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] report_job
        #   @return [::String]
        #     Required. The report job created by
        #     {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#run_report_job CloudChannelReportsService.RunReportJob}.
        #     Report_job uses the format:
        #     accounts/\\{account_id}/reportJobs/\\{report_job_id}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size of the report. The server may return fewer
        #     results than requested. If you don't specify a page size, the server uses a
        #     sensible default (may change over time).
        #
        #     The maximum value is 30,000; the server will change larger values to
        #     30,000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token that specifies a page of results beyond the first page.
        #     Obtained through
        #     {::Google::Cloud::Channel::V1::FetchReportResultsResponse#next_page_token FetchReportResultsResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#fetch_report_results CloudChannelReportsService.FetchReportResults}
        #     call.
        # @!attribute [rw] partition_keys
        #   @return [::Array<::String>]
        #     Optional. List of keys specifying which report partitions to return.
        #     If empty, returns all partitions.
        class FetchReportResultsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#fetch_report_results CloudChannelReportsService.FetchReportResults}.
        # Contains a tabular representation of the report results.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] report_metadata
        #   @return [::Google::Cloud::Channel::V1::ReportResultsMetadata]
        #     The metadata for the report results (display name, columns, row count, and
        #     date ranges).
        # @!attribute [rw] rows
        #   @return [::Array<::Google::Cloud::Channel::V1::Row>]
        #     The report's lists of values. Each row follows the settings and ordering
        #     of the columns from `report_metadata`.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pass this token to
        #     {::Google::Cloud::Channel::V1::FetchReportResultsRequest#page_token FetchReportResultsRequest.page_token}
        #     to retrieve the next page of results.
        class FetchReportResultsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#list_reports CloudChannelReportsService.ListReports}.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the partner account to list available
        #     reports for. Parent uses the format: accounts/\\{account_id}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size of the report. The server might return fewer
        #     results than requested. If unspecified, returns 20 reports. The maximum
        #     value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token that specifies a page of results beyond the first page.
        #     Obtained through
        #     {::Google::Cloud::Channel::V1::ListReportsResponse#next_page_token ListReportsResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#list_reports CloudChannelReportsService.ListReports}
        #     call.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. The BCP-47 language code, such as "en-US".  If specified, the
        #     response is localized to the corresponding language code if the
        #     original data sources support it.
        #     Default is "en-US".
        class ListReportsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#list_reports CloudChannelReportsService.ListReports}.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] reports
        #   @return [::Array<::Google::Cloud::Channel::V1::Report>]
        #     The reports available to the partner.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Pass this token to
        #     {::Google::Cloud::Channel::V1::FetchReportResultsRequest#page_token FetchReportResultsRequest.page_token}
        #     to retrieve the next page of results.
        class ListReportsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The result of a [RunReportJob][] operation. Contains the name to use in
        # {::Google::Cloud::Channel::V1::FetchReportResultsRequest#report_job FetchReportResultsRequest.report_job}
        # and the status of the operation.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of a report job.
        #     Name uses the format:
        #     `accounts/{account_id}/reportJobs/{report_job_id}`
        # @!attribute [rw] report_status
        #   @return [::Google::Cloud::Channel::V1::ReportStatus]
        #     The current status of report generation.
        class ReportJob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The features describing the data. Returned by
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#run_report_job CloudChannelReportsService.RunReportJob}
        # and
        # {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#fetch_report_results CloudChannelReportsService.FetchReportResults}.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] report
        #   @return [::Google::Cloud::Channel::V1::Report]
        #     Details of the completed report.
        # @!attribute [rw] row_count
        #   @return [::Integer]
        #     The total number of rows of data in the final report.
        # @!attribute [rw] date_range
        #   @return [::Google::Cloud::Channel::V1::DateRange]
        #     The date range of reported usage.
        # @!attribute [rw] preceding_date_range
        #   @return [::Google::Cloud::Channel::V1::DateRange]
        #     The usage dates immediately preceding `date_range` with the same duration.
        #     Use this to calculate trending usage and costs. This is only populated if
        #     you request trending data.
        #
        #     For example, if `date_range` is July 1-15, `preceding_date_range` will be
        #     June 16-30.
        class ReportResultsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The definition of a report column. Specifies the data properties
        # in the corresponding position of the report rows.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] column_id
        #   @return [::String]
        #     The unique name of the column (for example, customer_domain,
        #     channel_partner, customer_cost). You can use column IDs in
        #     {::Google::Cloud::Channel::V1::RunReportJobRequest#filter RunReportJobRequest.filter}.
        #     To see all reports and their columns, call
        #     {::Google::Cloud::Channel::V1::CloudChannelReportsService::Client#list_reports CloudChannelReportsService.ListReports}.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The column's display name.
        # @!attribute [rw] data_type
        #   @return [::Google::Cloud::Channel::V1::Column::DataType]
        #     The type of the values for this column.
        class Column
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Available data types for columns. Corresponds to the fields in the
          # ReportValue `oneof` field.
          module DataType
            # Not used.
            DATA_TYPE_UNSPECIFIED = 0

            # ReportValues for this column will use string_value.
            STRING = 1

            # ReportValues for this column will use int_value.
            INT = 2

            # ReportValues for this column will use decimal_value.
            DECIMAL = 3

            # ReportValues for this column will use money_value.
            MONEY = 4

            # ReportValues for this column will use date_value.
            DATE = 5

            # ReportValues for this column will use date_time_value.
            DATE_TIME = 6
          end
        end

        # A representation of usage or invoice date ranges.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] usage_start_date_time
        #   @return [::Google::Type::DateTime]
        #     The earliest usage date time (inclusive).
        #
        #     If you use time groupings (daily, weekly, etc), each group uses
        #     midnight to midnight (Pacific time). The usage start date is
        #     rounded down to include all usage from the specified date. We recommend
        #     that clients pass `usage_start_date_time` in Pacific time.
        # @!attribute [rw] usage_end_date_time
        #   @return [::Google::Type::DateTime]
        #     The latest usage date time (exclusive).
        #
        #     If you use time groupings (daily, weekly, etc), each group uses
        #     midnight to midnight (Pacific time). The usage end date is
        #     rounded down to include all usage from the specified date. We recommend
        #     that clients pass `usage_start_date_time` in Pacific time.
        # @!attribute [rw] invoice_start_date
        #   @return [::Google::Type::Date]
        #     The earliest invoice date (inclusive).
        #
        #     If this value is not the first day of a month, this will move it back to
        #     the first day of the given month.
        # @!attribute [rw] invoice_end_date
        #   @return [::Google::Type::Date]
        #     The latest invoice date (inclusive).
        #
        #     If this value is not the last day of a month, this will move it forward to
        #     the last day of the given month.
        class DateRange
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A row of report values.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] values
        #   @return [::Array<::Google::Cloud::Channel::V1::ReportValue>]
        #     The list of values in the row.
        # @!attribute [rw] partition_key
        #   @return [::String]
        #     The key for the partition this row belongs to. This field is empty
        #     if the report is not partitioned.
        class Row
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A single report value.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] string_value
        #   @return [::String]
        #     A value of type `string`.
        #
        #     Note: The following fields are mutually exclusive: `string_value`, `int_value`, `decimal_value`, `money_value`, `date_value`, `date_time_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] int_value
        #   @return [::Integer]
        #     A value of type `int`.
        #
        #     Note: The following fields are mutually exclusive: `int_value`, `string_value`, `decimal_value`, `money_value`, `date_value`, `date_time_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] decimal_value
        #   @return [::Google::Type::Decimal]
        #     A value of type `google.type.Decimal`, representing non-integer numeric
        #     values.
        #
        #     Note: The following fields are mutually exclusive: `decimal_value`, `string_value`, `int_value`, `money_value`, `date_value`, `date_time_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] money_value
        #   @return [::Google::Type::Money]
        #     A value of type `google.type.Money` (currency code, whole units, decimal
        #     units).
        #
        #     Note: The following fields are mutually exclusive: `money_value`, `string_value`, `int_value`, `decimal_value`, `date_value`, `date_time_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] date_value
        #   @return [::Google::Type::Date]
        #     A value of type `google.type.Date` (year, month, day).
        #
        #     Note: The following fields are mutually exclusive: `date_value`, `string_value`, `int_value`, `decimal_value`, `money_value`, `date_time_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] date_time_value
        #   @return [::Google::Type::DateTime]
        #     A value of type `google.type.DateTime` (year, month, day, hour, minute,
        #     second, and UTC offset or timezone.)
        #
        #     Note: The following fields are mutually exclusive: `date_time_value`, `string_value`, `int_value`, `decimal_value`, `money_value`, `date_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class ReportValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Status of a report generation process.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Channel::V1::ReportStatus::State]
        #     The current state of the report generation process.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The report generation's start time.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The report generation's completion time.
        class ReportStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Available states of report generation.
          module State
            # Not used.
            STATE_UNSPECIFIED = 0

            # Report processing started.
            STARTED = 1

            # Data generated from the report is being staged.
            WRITING = 2

            # Report data is available for access.
            AVAILABLE = 3

            # Report failed.
            FAILED = 4
          end
        end

        # The ID and description of a report that was used to generate report data.
        # For example, "Google Cloud Daily Spend", "Google Workspace License Activity",
        # etc.
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The report's resource name. Specifies the account and report used
        #     to generate report data. The report_id identifier is a UID (for example,
        #     `613bf59q`).
        #
        #     Name uses the format:
        #     accounts/\\{account_id}/reports/\\{report_id}
        # @!attribute [rw] display_name
        #   @return [::String]
        #     A human-readable name for this report.
        # @!attribute [rw] columns
        #   @return [::Array<::Google::Cloud::Channel::V1::Column>]
        #     The list of columns included in the report. This defines the schema of
        #     the report results.
        # @!attribute [rw] description
        #   @return [::String]
        #     A description of other aspects of the report, such as the products
        #     it supports.
        class Report
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
