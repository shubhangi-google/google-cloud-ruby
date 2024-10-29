# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/accounts/v1beta/autofeedsettings.proto for package 'google.shopping.merchant.accounts.v1beta'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/shopping/merchant/accounts/v1beta/autofeedsettings_pb'

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          module AutofeedSettingsService
            # Service to support
            # [autofeed](https://support.google.com/merchants/answer/7538732) setting.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.accounts.v1beta.AutofeedSettingsService'

              # Retrieves the autofeed settings of an account.
              rpc :GetAutofeedSettings, ::Google::Shopping::Merchant::Accounts::V1beta::GetAutofeedSettingsRequest, ::Google::Shopping::Merchant::Accounts::V1beta::AutofeedSettings
              # Updates the autofeed settings of an account.
              rpc :UpdateAutofeedSettings, ::Google::Shopping::Merchant::Accounts::V1beta::UpdateAutofeedSettingsRequest, ::Google::Shopping::Merchant::Accounts::V1beta::AutofeedSettings
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
