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
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          # An account.
          # @!attribute [rw] name
          #   @return [::String]
          #     Identifier. The resource name of the account.
          #     Format: `accounts/{account}`
          # @!attribute [r] account_id
          #   @return [::Integer]
          #     Output only. The ID of the account.
          # @!attribute [rw] account_name
          #   @return [::String]
          #     Required. A human-readable name of the account. See
          #     [store name](https://support.google.com/merchants/answer/160556) and
          #     [business name](https://support.google.com/merchants/answer/12159159) for
          #     more information.
          # @!attribute [rw] adult_content
          #   @return [::Boolean]
          #     Whether this account contains adult content.
          # @!attribute [r] test_account
          #   @return [::Boolean]
          #     Output only. Whether this is a test account.
          # @!attribute [rw] time_zone
          #   @return [::Google::Type::TimeZone]
          #     Required. The time zone of the account.
          #
          #     On writes, `time_zone` sets both the `reporting_time_zone` and the
          #     `display_time_zone`.
          #
          #     For reads, `time_zone` always returns the `display_time_zone`. If
          #     `display_time_zone` doesn't exist for your account, `time_zone` is empty.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     Required. The account's [BCP-47 language
          #     code](https://tools.ietf.org/html/bcp47), such as `en-US` or `sr-Latn`.
          class Account
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `GetAccount` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the account to retrieve.
          #     Format: `accounts/{account}`
          class GetAccountRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `CreateAndConfigureAccount` method.
          # @!attribute [rw] account
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::Account]
          #     Required. The account to be created.
          # @!attribute [rw] users
          #   @return [::Array<::Google::Shopping::Merchant::Accounts::V1beta::CreateUserRequest>]
          #     Optional. Users to be added to the account.
          # @!attribute [rw] accept_terms_of_service
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::CreateAndConfigureAccountRequest::AcceptTermsOfService]
          #     Optional. The Terms of Service (ToS) to be accepted immediately upon
          #     account creation.
          # @!attribute [rw] service
          #   @return [::Array<::Google::Shopping::Merchant::Accounts::V1beta::CreateAndConfigureAccountRequest::AddAccountService>]
          #     Required. An account service between the account to be created and the
          #     provider account is initialized as part of the creation. At least one such
          #     service needs to be provided. Currently exactly one of these needs to be
          #     `account_aggregation`, which means you can only create sub accounts, not
          #     standalone account through this method. Additional `account_management` or
          #     `product_management` services may be provided.
          class CreateAndConfigureAccountRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Reference to a Terms of Service resource.
            # @!attribute [rw] name
            #   @return [::String]
            #     Required. The resource name of the terms of service version in the format
            #     `termsOfService/{version}`. To retrieve the latest version, use the
            #     [termsOfService.retrieveLatest](/merchant/api/reference/rest/accounts_v1beta/termsOfService/retrieveLatest)
            #     method.
            # @!attribute [rw] region_code
            #   @return [::String]
            #     Required. Region code as defined by [CLDR](https://cldr.unicode.org/).
            #     This is either a country when the ToS applies specifically to that
            #     country or `001` when it applies globally.
            class AcceptTermsOfService
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Additional instructions to add account services during creation of the
            # account.
            # @!attribute [rw] account_aggregation
            #   @return [::Google::Shopping::Merchant::Accounts::V1beta::AccountAggregation]
            #     The provider is an
            #     [aggregator](https://support.google.com/merchants/answer/188487) for
            #     the account. Payload for service type Account Aggregation.
            # @!attribute [rw] provider
            #   @return [::String]
            #     Optional. The provider of the service.
            #     Format: `accounts/{account}`
            class AddAccountService
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Request message for the `DeleteAccount` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the account to delete.
          #     Format: `accounts/{account}`
          # @!attribute [rw] force
          #   @return [::Boolean]
          #     Optional. If set to `true`, the account is deleted even if it provides
          #     services to other accounts or has processed offers.
          class DeleteAccountRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `UpdateAccount` method.
          # @!attribute [rw] account
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::Account]
          #     Required. The new version of the account.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. List of fields being updated.
          class UpdateAccountRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `ListAccounts` method.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of accounts to return. The service may return
          #     fewer than this value.  If unspecified, at most 250 accounts are returned.
          #     The maximum value is 500; values above 500 are coerced to 500.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A page token, received from a previous `ListAccounts` call.
          #     Provide this to retrieve the subsequent page.
          #
          #     When paginating, all other parameters provided to `ListAccounts` must match
          #     the call that provided the page token.
          # @!attribute [rw] filter
          #   @return [::String]
          #     Optional. Returns only accounts that match the
          #     [filter](/merchant/api/guides/accounts/filter).
          #     For more details, see the
          #     [filter syntax reference](/merchant/api/guides/accounts/filter-syntax).
          class ListAccountsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for the `ListAccounts` method.
          # @!attribute [rw] accounts
          #   @return [::Array<::Google::Shopping::Merchant::Accounts::V1beta::Account>]
          #     The accounts matching the `ListAccountsRequest`.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token, which can be sent as `page_token` to retrieve the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListAccountsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `ListSubAccounts` method.
          # @!attribute [rw] provider
          #   @return [::String]
          #     Required. The parent account.
          #     Format: `accounts/{account}`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of accounts to return. The service may return
          #     fewer than this value.  If unspecified, at most 250 accounts are returned.
          #     The maximum value is 500; values above 500 are coerced to 500.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A page token, received from a previous `ListAccounts` call.
          #     Provide this to retrieve the subsequent page.
          #
          #     When paginating, all other parameters provided to `ListAccounts` must match
          #     the call that provided the page token.
          class ListSubAccountsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for the `ListSubAccounts` method.
          # @!attribute [rw] accounts
          #   @return [::Array<::Google::Shopping::Merchant::Accounts::V1beta::Account>]
          #     The accounts for which the given parent account is an aggregator.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token, which can be sent as `page_token` to retrieve the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListSubAccountsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
