# frozen_string_literal: true

# Copyright 2025 Google LLC
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
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          # Request message for `GetCheckoutSettings` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name/identifier of the merchant account.
          #     Format: `accounts/{account}/programs/{program}/checkoutSettings`
          class GetCheckoutSettingsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `CreateCheckoutSettings` method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The merchant account for which the `CheckoutSettings` will be
          #     created.
          # @!attribute [rw] checkout_settings
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettings]
          #     Required. The `CheckoutSettings` object to create.
          class CreateCheckoutSettingsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `UpdateCheckoutSettings` method.
          # @!attribute [rw] checkout_settings
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettings]
          #     Required. The updated version of the `CheckoutSettings`.
          #     The `name` field is used to identify the `CheckoutSettings`.
          #     Format: `accounts/{account}/programs/{program}/checkoutSettings`
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. List of fields being updated.
          #     The following fields are supported (in both `snake_case` and
          #     `lowerCamelCase`):
          #
          #     - `eligible_destinations`
          #     - `uri_settings`
          class UpdateCheckoutSettingsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `DeleteCheckoutSettings` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name/identifier of the merchant account.
          #     Format: `accounts/{account}/programs/{program}/checkoutSettings`
          class DeleteCheckoutSettingsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # [CheckoutSettings](https://support.google.com/merchants/answer/13945960) for
          # a specific merchant.
          # @!attribute [rw] name
          #   @return [::String]
          #     Identifier. The resource name of the program configuration settings.
          #     Format: `accounts/{account}/programs/{program}/checkoutSettings`
          # @!attribute [rw] uri_settings
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::UriSettings]
          #     URI settings for cart or checkout URL.
          # @!attribute [rw] eligible_destinations
          #   @return [::Array<::Google::Shopping::Type::Destination::DestinationEnum>]
          #     Optional. The destinations to which the checkout program applies, valid
          #     destination values are `SHOPPING_ADS`, `FREE_LISTINGS`
          # @!attribute [r] enrollment_state
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettings::CheckoutEnrollmentState]
          #     Output only. Reflects the merchant enrollment state in `Checkout` program.
          # @!attribute [r] review_state
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettings::CheckoutReviewState]
          #     Output only. Reflects the merchant review state in `Checkout` program.
          #     This is set based on the data quality reviews of the URL provided by
          #     the merchant.
          #     A merchant with enrollment state
          #     as `ENROLLED` can be in the following review states: `IN_REVIEW`,
          #     `APPROVED` or `DISAPPROVED`. A merchant must be in an `enrollment_state` of
          #     `ENROLLED` before a review can begin for the merchant.For more details,
          #     check the help center doc.
          # @!attribute [r] effective_uri_settings
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::UriSettings]
          #     Output only. The effective value of `uri_settings` for a given merchant. If
          #     account level settings are present then this value will be a copy of url
          #     settings. Otherwise, it will have the value of the parent account (for only
          #     marketplace sellers).
          # @!attribute [r] effective_enrollment_state
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettings::CheckoutEnrollmentState]
          #     Output only. The effective value of enrollment_state for a given merchant
          #     ID. If account level settings are present then this value will be a copy of
          #     the account level settings. Otherwise, it will have the value of the parent
          #     account (for only marketplace sellers).
          # @!attribute [r] effective_review_state
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettings::CheckoutReviewState]
          #     Output only. The effective value of `review_state` for a given merchant ID.
          #     If account level settings are present then this value will be a copy of the
          #     account level settings. Otherwise, it will have the value of the parent
          #     account (for only marketplace sellers).
          class CheckoutSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Enum indicating the enrollment state of merchant in `Checkout`
            # program.
            module CheckoutEnrollmentState
              # Default enrollment state when enrollment state is not specified.
              CHECKOUT_ENROLLMENT_STATE_UNSPECIFIED = 0

              # Merchant has not enrolled into the program.
              INACTIVE = 1

              # Merchant has enrolled into the program by providing either an
              # account level URL or checkout URLs as part of their feed.
              ENROLLED = 2

              # Merchant has previously enrolled but opted out of the program.
              OPTED_OUT = 3
            end

            # Enum indicating the review state of merchant in `Checkout`
            # program.
            module CheckoutReviewState
              # Default review state when review state is not specified.
              CHECKOUT_REVIEW_STATE_UNSPECIFIED = 0

              # Merchant provided URLs are being reviewed for data quality issues.
              IN_REVIEW = 1

              # Merchant account has been approved. Indicates the data quality checks
              # have passed.
              APPROVED = 2

              # Merchant account has been disapproved due to data quality issues.
              DISAPPROVED = 3
            end
          end

          # URL settings for cart or checkout URL.
          # @!attribute [rw] checkout_uri_template
          #   @return [::String]
          #     Checkout URL template. When the placeholders are expanded will redirect
          #     the buyer to the merchant checkout page with the item in the cart. For
          #     more details, check the [help center
          #     doc](https://support.google.com/merchants/answer/13945960#method1&zippy=%2Cproduct-level-url-formatting%2Caccount-level-url-formatting)
          #
          #     Note: The following fields are mutually exclusive: `checkout_uri_template`, `cart_uri_template`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] cart_uri_template
          #   @return [::String]
          #     Cart URL template. When the placeholders are expanded will redirect the
          #     buyer to the cart page on the merchant website with the selected
          #     item in cart. For more details, check the [help center
          #     doc](https://support.google.com/merchants/answer/13945960#method1&zippy=%2Cproduct-level-url-formatting%2Caccount-level-url-formatting)
          #
          #     Note: The following fields are mutually exclusive: `cart_uri_template`, `checkout_uri_template`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class UriSettings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
