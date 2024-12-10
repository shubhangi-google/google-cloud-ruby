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

require "google/shopping/merchant/accounts/v1beta/accounts_pb"

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          module AccountsService
            module Rest
              ##
              # REST service stub for the AccountsService service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                # @private
                def initialize endpoint:, endpoint_template:, universe_domain:, credentials:, logger:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                               endpoint_template: endpoint_template,
                                                               universe_domain: universe_domain,
                                                               credentials: credentials,
                                                               numeric_enums: true,
                                                               service_name: self.class,
                                                               raise_faraday_errors: false,
                                                               logger: logger
                end

                ##
                # The effective universe domain
                #
                # @return [String]
                #
                def universe_domain
                  @client_stub.universe_domain
                end

                ##
                # The effective endpoint
                #
                # @return [String]
                #
                def endpoint
                  @client_stub.endpoint
                end

                ##
                # The logger used for request/response debug logging.
                #
                # @return [Logger]
                #
                def logger stub: false
                  stub ? @client_stub.stub_logger : @client_stub.logger
                end

                ##
                # Baseline implementation for the get_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::GetAccountRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Shopping::Merchant::Accounts::V1beta::Account]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Shopping::Merchant::Accounts::V1beta::Account]
                #   A result object deserialized from the server's reply
                def get_account request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_account_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "get_account",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Shopping::Merchant::Accounts::V1beta::Account.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the create_and_configure_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::CreateAndConfigureAccountRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Shopping::Merchant::Accounts::V1beta::Account]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Shopping::Merchant::Accounts::V1beta::Account]
                #   A result object deserialized from the server's reply
                def create_and_configure_account request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_and_configure_account_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "create_and_configure_account",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Shopping::Merchant::Accounts::V1beta::Account.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the delete_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::DeleteAccountRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Protobuf::Empty]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Protobuf::Empty]
                #   A result object deserialized from the server's reply
                def delete_account request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_delete_account_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "delete_account",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the update_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::UpdateAccountRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Shopping::Merchant::Accounts::V1beta::Account]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Shopping::Merchant::Accounts::V1beta::Account]
                #   A result object deserialized from the server's reply
                def update_account request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_update_account_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "update_account",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Shopping::Merchant::Accounts::V1beta::Account.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the list_accounts REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::ListAccountsRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Shopping::Merchant::Accounts::V1beta::ListAccountsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Shopping::Merchant::Accounts::V1beta::ListAccountsResponse]
                #   A result object deserialized from the server's reply
                def list_accounts request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_accounts_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "list_accounts",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Shopping::Merchant::Accounts::V1beta::ListAccountsResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the list_sub_accounts REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::ListSubAccountsRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Shopping::Merchant::Accounts::V1beta::ListSubAccountsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Shopping::Merchant::Accounts::V1beta::ListSubAccountsResponse]
                #   A result object deserialized from the server's reply
                def list_sub_accounts request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_sub_accounts_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "list_sub_accounts",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Shopping::Merchant::Accounts::V1beta::ListSubAccountsResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::GetAccountRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_account_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/accounts/v1beta/{name}",
                                                            matches: [
                                                              ["name", %r{^accounts/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_and_configure_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::CreateAndConfigureAccountRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_and_configure_account_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/accounts/v1beta/accounts:createAndConfigure",
                                                            body: "*",
                                                            matches: []
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the delete_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::DeleteAccountRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_delete_account_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :delete,
                                                            uri_template: "/accounts/v1beta/{name}",
                                                            matches: [
                                                              ["name", %r{^accounts/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the update_account REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::UpdateAccountRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_update_account_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :patch,
                                                            uri_template: "/accounts/v1beta/{account.name}",
                                                            body: "account",
                                                            matches: [
                                                              ["account.name", %r{^accounts/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_accounts REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::ListAccountsRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_accounts_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/accounts/v1beta/accounts",
                                                            matches: []
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_sub_accounts REST call
                #
                # @param request_pb [::Google::Shopping::Merchant::Accounts::V1beta::ListSubAccountsRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_sub_accounts_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/accounts/v1beta/{provider}:listSubaccounts",
                                                            matches: [
                                                              ["provider", %r{^accounts/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
