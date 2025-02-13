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
  module Analytics
    module Admin
      module V1alpha
        # A specific filter expression
        # @!attribute [rw] null_filter
        #   @return [::Boolean]
        #     A filter for null values.
        #
        #     Note: The following fields are mutually exclusive: `null_filter`, `string_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] string_filter
        #   @return [::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterCondition::StringFilter]
        #     A filter for a string-type dimension that matches a particular pattern.
        #
        #     Note: The following fields are mutually exclusive: `string_filter`, `null_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] field_name
        #   @return [::String]
        #     Required. The field that is being filtered.
        class SubpropertyEventFilterCondition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A filter for a string-type dimension that matches a particular pattern.
          # @!attribute [rw] match_type
          #   @return [::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterCondition::StringFilter::MatchType]
          #     Required. The match type for the string filter.
          # @!attribute [rw] value
          #   @return [::String]
          #     Required. The string value used for the matching.
          # @!attribute [rw] case_sensitive
          #   @return [::Boolean]
          #     Optional. If true, the string value is case sensitive. If false, the
          #     match is case-insensitive.
          class StringFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # How the filter will be used to determine a match.
            module MatchType
              # Match type unknown or not specified.
              MATCH_TYPE_UNSPECIFIED = 0

              # Exact match of the string value.
              EXACT = 1

              # Begins with the string value.
              BEGINS_WITH = 2

              # Ends with the string value.
              ENDS_WITH = 3

              # Contains the string value.
              CONTAINS = 4

              # Full regular expression matches with the string value.
              FULL_REGEXP = 5

              # Partial regular expression matches with the string value.
              PARTIAL_REGEXP = 6
            end
          end
        end

        # A logical expression of Subproperty event filters.
        # @!attribute [rw] or_group
        #   @return [::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterExpressionList]
        #     A list of expressions to OR’ed together. Must only contain
        #     not_expression or filter_condition expressions.
        #
        #     Note: The following fields are mutually exclusive: `or_group`, `not_expression`, `filter_condition`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] not_expression
        #   @return [::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterExpression]
        #     A filter expression to be NOT'ed (inverted, complemented). It can only
        #     include a filter. This cannot be set on the top level
        #     SubpropertyEventFilterExpression.
        #
        #     Note: The following fields are mutually exclusive: `not_expression`, `or_group`, `filter_condition`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] filter_condition
        #   @return [::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterCondition]
        #     Creates a filter that matches a specific event. This cannot be set on the
        #     top level SubpropertyEventFilterExpression.
        #
        #     Note: The following fields are mutually exclusive: `filter_condition`, `or_group`, `not_expression`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class SubpropertyEventFilterExpression
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of Subproperty event filter expressions.
        # @!attribute [rw] filter_expressions
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterExpression>]
        #     Required. Unordered list. A list of Subproperty event filter expressions
        class SubpropertyEventFilterExpressionList
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A clause for defining a filter. A filter may be inclusive (events satisfying
        # the filter clause are included in the subproperty's data) or exclusive
        # (events satisfying the filter clause are excluded from the subproperty's
        # data).
        # @!attribute [rw] filter_clause_type
        #   @return [::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterClause::FilterClauseType]
        #     Required. The type for the filter clause.
        # @!attribute [rw] filter_expression
        #   @return [::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterExpression]
        #     Required. The logical expression for what events are sent to the
        #     subproperty.
        class SubpropertyEventFilterClause
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specifies whether this is an include or exclude filter clause.
          module FilterClauseType
            # Filter clause type unknown or not specified.
            FILTER_CLAUSE_TYPE_UNSPECIFIED = 0

            # Events will be included in the Sub property if the filter clause is met.
            INCLUDE = 1

            # Events will be excluded from the Sub property if the filter clause is
            # met.
            EXCLUDE = 2
          end
        end

        # A resource message representing a Google Analytics subproperty event filter.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Format:
        #     properties/\\{ordinary_property_id}/subpropertyEventFilters/\\{sub_property_event_filter}
        #     Example: properties/1234/subpropertyEventFilters/5678
        # @!attribute [rw] apply_to_property
        #   @return [::String]
        #     Immutable. Resource name of the Subproperty that uses this filter.
        # @!attribute [rw] filter_clauses
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::SubpropertyEventFilterClause>]
        #     Required. Unordered list. Filter clauses that define the
        #     SubpropertyEventFilter. All clauses are AND'ed together to determine what
        #     data is sent to the subproperty.
        class SubpropertyEventFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
