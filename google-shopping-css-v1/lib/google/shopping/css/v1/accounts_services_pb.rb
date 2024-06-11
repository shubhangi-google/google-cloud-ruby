# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/css/v1/accounts.proto for package 'Google.Shopping.Css.V1'
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
require 'google/shopping/css/v1/accounts_pb'

module Google
  module Shopping
    module Css
      module V1
        module AccountsService
          # Service for managing CSS/MC account information.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.shopping.css.v1.AccountsService'

            # Lists all the accounts under the specified CSS account ID, and
            # optionally filters by label ID and account name.
            rpc :ListChildAccounts, ::Google::Shopping::Css::V1::ListChildAccountsRequest, ::Google::Shopping::Css::V1::ListChildAccountsResponse
            # Retrieves a single CSS/MC account by ID.
            rpc :GetAccount, ::Google::Shopping::Css::V1::GetAccountRequest, ::Google::Shopping::Css::V1::Account
            # Updates labels assigned to CSS/MC accounts by a CSS domain.
            rpc :UpdateLabels, ::Google::Shopping::Css::V1::UpdateAccountLabelsRequest, ::Google::Shopping::Css::V1::Account
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
