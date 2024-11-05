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
        # {::Google::Ads::AdManager::V1::CustomTargetingValueStatusEnum::CustomTargetingValueStatus CustomTargetingValueStatus}
        class CustomTargetingValueStatusEnum
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Status of the custom targeting value.
          module CustomTargetingValueStatus
            # Not specified value.
            CUSTOM_TARGETING_VALUE_STATUS_UNSPECIFIED = 0

            # Custom targeting value is active.
            ACTIVE = 1

            # Custom targeting value is inactive.
            INACTIVE = 2
          end
        end

        # Wrapper message for
        # {::Google::Ads::AdManager::V1::CustomTargetingValueMatchTypeEnum::CustomTargetingValueMatchType CustomTargetingValueMatchType}
        class CustomTargetingValueMatchTypeEnum
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Match type of the custom targeting value.
          module CustomTargetingValueMatchType
            # Not specified value.
            CUSTOM_TARGETING_VALUE_MATCH_TYPE_UNSPECIFIED = 0

            # Used for exact matching. For example, the targeting value car=honda will
            # only match to the ad request car=honda.
            EXACT = 1

            # Used for lenient matching when at least one of the words in the ad
            # request matches the targeted value. The targeting value car=honda will
            # match to ad requests containing the word honda. So ad requests car=honda
            # or car=honda civic or car=buy honda or car=how much does a honda cost
            # will all have the line item delivered.
            # This match type can not be used within an audience segment rule.
            BROAD = 2

            # Used for 'starts with' matching when the first few characters in the ad
            # request match all of the characters in the targeted value. The targeting
            # value car=honda will match to ad requests car=honda or car=hondas for
            # sale but not to car=I want a honda.
            PREFIX = 3

            # This is a combination of MatchType#BROAD and MatchType#PREFIX matching.
            # The targeting value car=honda will match to ad requests that contain
            # words that start with the characters in the targeted value, for example
            # with car=civic hondas.
            # This match type can not be used within an audience segment rule.
            BROAD_PREFIX = 4

            # Used for 'ends with' matching when the last characters in the ad request
            # match all of the characters in the targeted value. The targeting value
            # car=honda will match with ad requests car=honda or car=I want a honda but
            # not to car=hondas for sale.
            # This match type can not be used within line item targeting.
            SUFFIX = 5

            # Used for 'within' matching when the string in the ad request contains the
            # string in the targeted value. The targeting value car=honda will match
            # with ad requests car=honda, car=I want a honda, and also with car=hondas
            # for sale, but not with car=misspelled hond a. This match type can not be
            # used within line item targeting.
            CONTAINS = 6
          end
        end
      end
    end
  end
end
