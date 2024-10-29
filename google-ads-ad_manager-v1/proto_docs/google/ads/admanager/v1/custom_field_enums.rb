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
  module Ads
    module AdManager
      module V1
        # Wrapper message for
        # {::Google::Ads::AdManager::V1::CustomFieldDataTypeEnum::CustomFieldDataType CustomFieldDataType}
        class CustomFieldDataTypeEnum
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The data type for a CustomField.
          module CustomFieldDataType
            # No value specified
            CUSTOM_FIELD_DATA_TYPE_UNSPECIFIED = 0

            # A string field
            #
            # The max length is 255 characters.
            STRING = 1

            # A number field.
            NUMBER = 2

            # A "Yes" or "No" toggle field.
            TOGGLE = 3

            # A drop-down field.
            DROP_DOWN = 4
          end
        end

        # Wrapper message for
        # {::Google::Ads::AdManager::V1::CustomFieldEntityTypeEnum::CustomFieldEntityType CustomFieldEntityType}
        class CustomFieldEntityTypeEnum
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The types of entities that a CustomField can be applied to.
          module CustomFieldEntityType
            # No value specified
            CUSTOM_FIELD_ENTITY_TYPE_UNSPECIFIED = 0

            # The CustomField is applied to LineItems.
            LINE_ITEM = 1

            # The CustomField is applied to Orders.
            ORDER = 2

            # The CustomField is applied to Creatives.
            CREATIVE = 3

            # The CustomField is applied to Proposals.
            PROPOSAL = 4

            # The CustomField is applied to ProposalLineItems.
            PROPOSAL_LINE_ITEM = 5
          end
        end

        # Wrapper message for
        # {::Google::Ads::AdManager::V1::CustomFieldStatusEnum::CustomFieldStatus CustomFieldStatus}
        class CustomFieldStatusEnum
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The status of the CustomField.
          module CustomFieldStatus
            # No value specified
            CUSTOM_FIELD_STATUS_UNSPECIFIED = 0

            # The CustomField is active.
            ACTIVE = 1

            # The CustomField is inactive.
            INACTIVE = 2
          end
        end

        # Wrapper message for
        # {::Google::Ads::AdManager::V1::CustomFieldVisibilityEnum::CustomFieldVisibility CustomFieldVisibility}
        class CustomFieldVisibilityEnum
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The visibility level of a CustomField.
          module CustomFieldVisibility
            # No value specified
            CUSTOM_FIELD_VISIBILITY_UNSPECIFIED = 0

            # The CustomField is not visible in the UI and only visible through the
            # API.
            HIDDEN = 1

            # The CustomField is visible in the UI and only editable through the API.
            READ_ONLY = 2

            # The CustomField is visible and editable in both the API and UI.
            EDITABLE = 3
          end
        end
      end
    end
  end
end
