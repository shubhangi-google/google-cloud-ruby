# frozen_string_literal: true

# Copyright 2021 Google LLC
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
        # Represents Pub/Sub message content describing customer update.
        # @!attribute [rw] customer
        #   @return [::String]
        #     Resource name of the customer.
        #     Format: accounts/\\{account_id}/customers/\\{customer_id}
        # @!attribute [rw] event_type
        #   @return [::Google::Cloud::Channel::V1::CustomerEvent::Type]
        #     Type of event which happened on the customer.
        class CustomerEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Type of customer event.
          module Type
            # Not used.
            TYPE_UNSPECIFIED = 0

            # Primary domain for customer was changed.
            PRIMARY_DOMAIN_CHANGED = 1

            # Primary domain of the customer has been verified.
            PRIMARY_DOMAIN_VERIFIED = 2
          end
        end

        # Represents Pub/Sub message content describing entitlement update.
        # @!attribute [rw] entitlement
        #   @return [::String]
        #     Resource name of an entitlement of the form:
        #     accounts/\\{account_id}/customers/\\{customer_id}/entitlements/\\{entitlement_id}
        # @!attribute [rw] event_type
        #   @return [::Google::Cloud::Channel::V1::EntitlementEvent::Type]
        #     Type of event which happened on the entitlement.
        class EntitlementEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Type of entitlement event.
          module Type
            # Not used.
            TYPE_UNSPECIFIED = 0

            # A new entitlement was created.
            CREATED = 1

            # The offer type associated with an entitlement was changed.
            # This is not triggered if an entitlement converts from a commit offer to a
            # flexible offer as part of a renewal.
            PRICE_PLAN_SWITCHED = 3

            # Annual commitment for a commit plan was changed.
            COMMITMENT_CHANGED = 4

            # An annual entitlement was renewed.
            RENEWED = 5

            # Entitlement was suspended.
            SUSPENDED = 6

            # Entitlement was unsuspended.
            ACTIVATED = 7

            # Entitlement was cancelled.
            CANCELLED = 8

            # Entitlement was upgraded or downgraded (e.g. from Google Workspace
            # Business Standard to Google Workspace Business Plus).
            SKU_CHANGED = 9

            # The renewal settings of an entitlement has changed.
            RENEWAL_SETTING_CHANGED = 10

            # Paid service has started on trial entitlement.
            PAID_SERVICE_STARTED = 11

            # License was assigned to or revoked from a user.
            LICENSE_ASSIGNMENT_CHANGED = 12

            # License cap was changed for the entitlement.
            LICENSE_CAP_CHANGED = 13
          end
        end

        # Represents information which resellers will get as part of notification from
        # Pub/Sub.
        # @!attribute [rw] customer_event
        #   @return [::Google::Cloud::Channel::V1::CustomerEvent]
        #     Customer event sent as part of Pub/Sub event to partners.
        #
        #     Note: The following fields are mutually exclusive: `customer_event`, `entitlement_event`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] entitlement_event
        #   @return [::Google::Cloud::Channel::V1::EntitlementEvent]
        #     Entitlement event sent as part of Pub/Sub event to partners.
        #
        #     Note: The following fields are mutually exclusive: `entitlement_event`, `customer_event`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class SubscriberEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
