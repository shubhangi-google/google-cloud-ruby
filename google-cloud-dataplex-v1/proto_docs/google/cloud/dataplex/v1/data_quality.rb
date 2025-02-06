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


module Google
  module Cloud
    module Dataplex
      module V1
        # DataQualityScan related setting.
        # @!attribute [rw] rules
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityRule>]
        #     Required. The list of rules to evaluate against a data source. At least one
        #     rule is required.
        # @!attribute [rw] sampling_percent
        #   @return [::Float]
        #     Optional. The percentage of the records to be selected from the dataset for
        #     DataScan.
        #
        #     * Value can range between 0.0 and 100.0 with up to 3 significant decimal
        #     digits.
        #     * Sampling is not applied if `sampling_percent` is not specified, 0 or
        #     100.
        # @!attribute [rw] row_filter
        #   @return [::String]
        #     Optional. A filter applied to all rows in a single DataScan job.
        #     The filter needs to be a valid SQL expression for a WHERE clause in
        #     BigQuery standard SQL syntax.
        #     Example: col1 >= 0 AND col2 < 10
        # @!attribute [rw] post_scan_actions
        #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec::PostScanActions]
        #     Optional. Actions to take upon job completion.
        class DataQualitySpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The configuration of post scan actions of DataQualityScan.
          # @!attribute [rw] bigquery_export
          #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec::PostScanActions::BigQueryExport]
          #     Optional. If set, results will be exported to the provided BigQuery
          #     table.
          # @!attribute [rw] notification_report
          #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec::PostScanActions::NotificationReport]
          #     Optional. If set, results will be sent to the provided notification
          #     receipts upon triggers.
          class PostScanActions
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The configuration of BigQuery export post scan action.
            # @!attribute [rw] results_table
            #   @return [::String]
            #     Optional. The BigQuery table to export DataQualityScan results to.
            #     Format:
            #     //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
            class BigQueryExport
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The individuals or groups who are designated to receive notifications
            # upon triggers.
            # @!attribute [rw] emails
            #   @return [::Array<::String>]
            #     Optional. The email recipients who will receive the DataQualityScan
            #     results report.
            class Recipients
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # This trigger is triggered when the DQ score in the job result is less
            # than a specified input score.
            # @!attribute [rw] score_threshold
            #   @return [::Float]
            #     Optional. The score range is in [0,100].
            class ScoreThresholdTrigger
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # This trigger is triggered when the scan job itself fails, regardless of
            # the result.
            class JobFailureTrigger
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # This trigger is triggered whenever a scan job run ends, regardless
            # of the result.
            class JobEndTrigger
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The configuration of notification report post scan action.
            # @!attribute [rw] recipients
            #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec::PostScanActions::Recipients]
            #     Required. The recipients who will receive the notification report.
            # @!attribute [rw] score_threshold_trigger
            #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec::PostScanActions::ScoreThresholdTrigger]
            #     Optional. If set, report will be sent when score threshold is met.
            # @!attribute [rw] job_failure_trigger
            #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec::PostScanActions::JobFailureTrigger]
            #     Optional. If set, report will be sent when a scan job fails.
            # @!attribute [rw] job_end_trigger
            #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec::PostScanActions::JobEndTrigger]
            #     Optional. If set, report will be sent when a scan job ends.
            class NotificationReport
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # The output of a DataQualityScan.
        # @!attribute [rw] passed
        #   @return [::Boolean]
        #     Overall data quality result -- `true` if all rules passed.
        # @!attribute [r] score
        #   @return [::Float]
        #     Output only. The overall data quality score.
        #
        #     The score ranges between [0, 100] (up to two decimal points).
        # @!attribute [rw] dimensions
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityDimensionResult>]
        #     A list of results at the dimension level.
        #
        #     A dimension will have a corresponding `DataQualityDimensionResult` if and
        #     only if there is at least one rule with the 'dimension' field set to it.
        # @!attribute [r] columns
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityColumnResult>]
        #     Output only. A list of results at the column level.
        #
        #     A column will have a corresponding `DataQualityColumnResult` if and only if
        #     there is at least one rule with the 'column' field set to it.
        # @!attribute [rw] rules
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityRuleResult>]
        #     A list of all the rules in a job, and their results.
        # @!attribute [rw] row_count
        #   @return [::Integer]
        #     The count of rows processed.
        # @!attribute [rw] scanned_data
        #   @return [::Google::Cloud::Dataplex::V1::ScannedData]
        #     The data scanned for this result.
        # @!attribute [r] post_scan_actions_result
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityResult::PostScanActionsResult]
        #     Output only. The result of post scan actions.
        class DataQualityResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The result of post scan actions of DataQualityScan job.
          # @!attribute [r] bigquery_export_result
          #   @return [::Google::Cloud::Dataplex::V1::DataQualityResult::PostScanActionsResult::BigQueryExportResult]
          #     Output only. The result of BigQuery export post scan action.
          class PostScanActionsResult
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The result of BigQuery export post scan action.
            # @!attribute [r] state
            #   @return [::Google::Cloud::Dataplex::V1::DataQualityResult::PostScanActionsResult::BigQueryExportResult::State]
            #     Output only. Execution state for the BigQuery exporting.
            # @!attribute [r] message
            #   @return [::String]
            #     Output only. Additional information about the BigQuery exporting.
            class BigQueryExportResult
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Execution state for the exporting.
              module State
                # The exporting state is unspecified.
                STATE_UNSPECIFIED = 0

                # The exporting completed successfully.
                SUCCEEDED = 1

                # The exporting is no longer running due to an error.
                FAILED = 2

                # The exporting is skipped due to no valid scan result to export
                # (usually caused by scan failed).
                SKIPPED = 3
              end
            end
          end
        end

        # DataQualityRuleResult provides a more detailed, per-rule view of the results.
        # @!attribute [rw] rule
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule]
        #     The rule specified in the DataQualitySpec, as is.
        # @!attribute [rw] passed
        #   @return [::Boolean]
        #     Whether the rule passed or failed.
        # @!attribute [rw] evaluated_count
        #   @return [::Integer]
        #     The number of rows a rule was evaluated against.
        #
        #     This field is only valid for row-level type rules.
        #
        #     Evaluated count can be configured to either
        #
        #     * include all rows (default) - with `null` rows automatically failing rule
        #     evaluation, or
        #     * exclude `null` rows from the `evaluated_count`, by setting
        #     `ignore_nulls = true`.
        # @!attribute [rw] passed_count
        #   @return [::Integer]
        #     The number of rows which passed a rule evaluation.
        #
        #     This field is only valid for row-level type rules.
        # @!attribute [rw] null_count
        #   @return [::Integer]
        #     The number of rows with null values in the specified column.
        # @!attribute [rw] pass_ratio
        #   @return [::Float]
        #     The ratio of **passed_count / evaluated_count**.
        #
        #     This field is only valid for row-level type rules.
        # @!attribute [rw] failing_rows_query
        #   @return [::String]
        #     The query to find rows that did not pass this rule.
        #
        #     This field is only valid for row-level type rules.
        # @!attribute [r] assertion_row_count
        #   @return [::Integer]
        #     Output only. The number of rows returned by the SQL statement in a SQL
        #     assertion rule.
        #
        #     This field is only valid for SQL assertion rules.
        class DataQualityRuleResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DataQualityDimensionResult provides a more detailed, per-dimension view of
        # the results.
        # @!attribute [r] dimension
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityDimension]
        #     Output only. The dimension config specified in the DataQualitySpec, as is.
        # @!attribute [rw] passed
        #   @return [::Boolean]
        #     Whether the dimension passed or failed.
        # @!attribute [r] score
        #   @return [::Float]
        #     Output only. The dimension-level data quality score for this data scan job
        #     if and only if the 'dimension' field is set.
        #
        #     The score ranges between [0, 100] (up to two decimal
        #     points).
        class DataQualityDimensionResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A dimension captures data quality intent about a defined subset of the rules
        # specified.
        # @!attribute [rw] name
        #   @return [::String]
        #     The dimension name a rule belongs to. Supported dimensions are
        #     ["COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS",
        #     "FRESHNESS", "VOLUME"]
        class DataQualityDimension
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A rule captures data quality intent about a data source.
        # @!attribute [rw] range_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::RangeExpectation]
        #     Row-level rule which evaluates whether each column value lies between a
        #     specified range.
        #
        #     Note: The following fields are mutually exclusive: `range_expectation`, `non_null_expectation`, `set_expectation`, `regex_expectation`, `uniqueness_expectation`, `statistic_range_expectation`, `row_condition_expectation`, `table_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] non_null_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::NonNullExpectation]
        #     Row-level rule which evaluates whether each column value is null.
        #
        #     Note: The following fields are mutually exclusive: `non_null_expectation`, `range_expectation`, `set_expectation`, `regex_expectation`, `uniqueness_expectation`, `statistic_range_expectation`, `row_condition_expectation`, `table_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] set_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::SetExpectation]
        #     Row-level rule which evaluates whether each column value is contained by
        #     a specified set.
        #
        #     Note: The following fields are mutually exclusive: `set_expectation`, `range_expectation`, `non_null_expectation`, `regex_expectation`, `uniqueness_expectation`, `statistic_range_expectation`, `row_condition_expectation`, `table_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] regex_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::RegexExpectation]
        #     Row-level rule which evaluates whether each column value matches a
        #     specified regex.
        #
        #     Note: The following fields are mutually exclusive: `regex_expectation`, `range_expectation`, `non_null_expectation`, `set_expectation`, `uniqueness_expectation`, `statistic_range_expectation`, `row_condition_expectation`, `table_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] uniqueness_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::UniquenessExpectation]
        #     Row-level rule which evaluates whether each column value is unique.
        #
        #     Note: The following fields are mutually exclusive: `uniqueness_expectation`, `range_expectation`, `non_null_expectation`, `set_expectation`, `regex_expectation`, `statistic_range_expectation`, `row_condition_expectation`, `table_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] statistic_range_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::StatisticRangeExpectation]
        #     Aggregate rule which evaluates whether the column aggregate
        #     statistic lies between a specified range.
        #
        #     Note: The following fields are mutually exclusive: `statistic_range_expectation`, `range_expectation`, `non_null_expectation`, `set_expectation`, `regex_expectation`, `uniqueness_expectation`, `row_condition_expectation`, `table_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] row_condition_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::RowConditionExpectation]
        #     Row-level rule which evaluates whether each row in a table passes the
        #     specified condition.
        #
        #     Note: The following fields are mutually exclusive: `row_condition_expectation`, `range_expectation`, `non_null_expectation`, `set_expectation`, `regex_expectation`, `uniqueness_expectation`, `statistic_range_expectation`, `table_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] table_condition_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::TableConditionExpectation]
        #     Aggregate rule which evaluates whether the provided expression is true
        #     for a table.
        #
        #     Note: The following fields are mutually exclusive: `table_condition_expectation`, `range_expectation`, `non_null_expectation`, `set_expectation`, `regex_expectation`, `uniqueness_expectation`, `statistic_range_expectation`, `row_condition_expectation`, `sql_assertion`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] sql_assertion
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::SqlAssertion]
        #     Aggregate rule which evaluates the number of rows returned for the
        #     provided statement. If any rows are returned, this rule fails.
        #
        #     Note: The following fields are mutually exclusive: `sql_assertion`, `range_expectation`, `non_null_expectation`, `set_expectation`, `regex_expectation`, `uniqueness_expectation`, `statistic_range_expectation`, `row_condition_expectation`, `table_condition_expectation`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] column
        #   @return [::String]
        #     Optional. The unnested column which this rule is evaluated against.
        # @!attribute [rw] ignore_null
        #   @return [::Boolean]
        #     Optional. Rows with `null` values will automatically fail a rule, unless
        #     `ignore_null` is `true`. In that case, such `null` rows are trivially
        #     considered passing.
        #
        #     This field is only valid for the following type of rules:
        #
        #     * RangeExpectation
        #     * RegexExpectation
        #     * SetExpectation
        #     * UniquenessExpectation
        # @!attribute [rw] dimension
        #   @return [::String]
        #     Required. The dimension a rule belongs to. Results are also aggregated at
        #     the dimension level. Supported dimensions are **["COMPLETENESS",
        #     "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "FRESHNESS",
        #     "VOLUME"]**
        # @!attribute [rw] threshold
        #   @return [::Float]
        #     Optional. The minimum ratio of **passing_rows / total_rows** required to
        #     pass this rule, with a range of [0.0, 1.0].
        #
        #     0 indicates default value (i.e. 1.0).
        #
        #     This field is only valid for row-level type rules.
        # @!attribute [rw] name
        #   @return [::String]
        #     Optional. A mutable name for the rule.
        #
        #     * The name must contain only letters (a-z, A-Z), numbers (0-9), or
        #     hyphens (-).
        #     * The maximum length is 63 characters.
        #     * Must start with a letter.
        #     * Must end with a number or a letter.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the rule.
        #
        #     * The maximum length is 1,024 characters.
        # @!attribute [rw] suspended
        #   @return [::Boolean]
        #     Optional. Whether the Rule is active or suspended.
        #     Default is false.
        class DataQualityRule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Evaluates whether each column value lies between a specified range.
          # @!attribute [rw] min_value
          #   @return [::String]
          #     Optional. The minimum column value allowed for a row to pass this
          #     validation. At least one of `min_value` and `max_value` need to be
          #     provided.
          # @!attribute [rw] max_value
          #   @return [::String]
          #     Optional. The maximum column value allowed for a row to pass this
          #     validation. At least one of `min_value` and `max_value` need to be
          #     provided.
          # @!attribute [rw] strict_min_enabled
          #   @return [::Boolean]
          #     Optional. Whether each value needs to be strictly greater than ('>') the
          #     minimum, or if equality is allowed.
          #
          #     Only relevant if a `min_value` has been defined. Default = false.
          # @!attribute [rw] strict_max_enabled
          #   @return [::Boolean]
          #     Optional. Whether each value needs to be strictly lesser than ('<') the
          #     maximum, or if equality is allowed.
          #
          #     Only relevant if a `max_value` has been defined. Default = false.
          class RangeExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether each column value is null.
          class NonNullExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether each column value is contained by a specified set.
          # @!attribute [rw] values
          #   @return [::Array<::String>]
          #     Optional. Expected values for the column value.
          class SetExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether each column value matches a specified regex.
          # @!attribute [rw] regex
          #   @return [::String]
          #     Optional. A regular expression the column value is expected to match.
          class RegexExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether the column has duplicates.
          class UniquenessExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether the column aggregate statistic lies between a specified
          # range.
          # @!attribute [rw] statistic
          #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::StatisticRangeExpectation::ColumnStatistic]
          #     Optional. The aggregate metric to evaluate.
          # @!attribute [rw] min_value
          #   @return [::String]
          #     Optional. The minimum column statistic value allowed for a row to pass
          #     this validation.
          #
          #     At least one of `min_value` and `max_value` need to be provided.
          # @!attribute [rw] max_value
          #   @return [::String]
          #     Optional. The maximum column statistic value allowed for a row to pass
          #     this validation.
          #
          #     At least one of `min_value` and `max_value` need to be provided.
          # @!attribute [rw] strict_min_enabled
          #   @return [::Boolean]
          #     Optional. Whether column statistic needs to be strictly greater than
          #     ('>') the minimum, or if equality is allowed.
          #
          #     Only relevant if a `min_value` has been defined. Default = false.
          # @!attribute [rw] strict_max_enabled
          #   @return [::Boolean]
          #     Optional. Whether column statistic needs to be strictly lesser than ('<')
          #     the maximum, or if equality is allowed.
          #
          #     Only relevant if a `max_value` has been defined. Default = false.
          class StatisticRangeExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The list of aggregate metrics a rule can be evaluated against.
            module ColumnStatistic
              # Unspecified statistic type
              STATISTIC_UNDEFINED = 0

              # Evaluate the column mean
              MEAN = 1

              # Evaluate the column min
              MIN = 2

              # Evaluate the column max
              MAX = 3
            end
          end

          # Evaluates whether each row passes the specified condition.
          #
          # The SQL expression needs to use BigQuery standard SQL syntax and should
          # produce a boolean value per row as the result.
          #
          # Example: col1 >= 0 AND col2 < 10
          # @!attribute [rw] sql_expression
          #   @return [::String]
          #     Optional. The SQL expression.
          class RowConditionExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether the provided expression is true.
          #
          # The SQL expression needs to use BigQuery standard SQL syntax and should
          # produce a scalar boolean result.
          #
          # Example: MIN(col1) >= 0
          # @!attribute [rw] sql_expression
          #   @return [::String]
          #     Optional. The SQL expression.
          class TableConditionExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A SQL statement that is evaluated to return rows that match an invalid
          # state. If any rows are are returned, this rule fails.
          #
          # The SQL statement must use BigQuery standard SQL syntax, and must not
          # contain any semicolons.
          #
          # You can use the data reference parameter `${data()}` to reference the
          # source table with all of its precondition filters applied. Examples of
          # precondition filters include row filters, incremental data filters, and
          # sampling. For more information, see [Data reference
          # parameter](https://cloud.google.com/dataplex/docs/auto-data-quality-overview#data-reference-parameter).
          #
          # Example: `SELECT * FROM ${data()} WHERE price < 0`
          # @!attribute [rw] sql_statement
          #   @return [::String]
          #     Optional. The SQL statement.
          class SqlAssertion
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # DataQualityColumnResult provides a more detailed, per-column view of
        # the results.
        # @!attribute [r] column
        #   @return [::String]
        #     Output only. The column specified in the DataQualityRule.
        # @!attribute [r] score
        #   @return [::Float]
        #     Output only. The column-level data quality score for this data scan job if
        #     and only if the 'column' field is set.
        #
        #     The score ranges between between [0, 100] (up to two decimal
        #     points).
        class DataQualityColumnResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
