# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/css/v1/css_product_inputs.proto for package 'Google.Shopping.Css.V1'
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
require 'google/shopping/css/v1/css_product_inputs_pb'

module Google
  module Shopping
    module Css
      module V1
        module CssProductInputsService
          # Service to use CssProductInput resource.
          # This service helps to insert/update/delete CSS Products.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.shopping.css.v1.CssProductInputsService'

            # Uploads a CssProductInput to your CSS Center account. If an
            # input with the same contentLanguage, identity, feedLabel and feedId already
            # exists, this method replaces that entry.
            #
            # After inserting, updating, or deleting a CSS Product input, it may
            # take several minutes before the processed CSS Product can be retrieved.
            rpc :InsertCssProductInput, ::Google::Shopping::Css::V1::InsertCssProductInputRequest, ::Google::Shopping::Css::V1::CssProductInput
            # Deletes a CSS Product input from your CSS Center account.
            #
            # After a delete it may take several minutes until the input is no longer
            # available.
            rpc :DeleteCssProductInput, ::Google::Shopping::Css::V1::DeleteCssProductInputRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
