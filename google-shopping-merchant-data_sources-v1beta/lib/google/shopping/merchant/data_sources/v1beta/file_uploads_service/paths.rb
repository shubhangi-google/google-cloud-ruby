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
      module DataSources
        module V1beta
          module FileUploadsService
            # Path helper methods for the FileUploadsService API.
            module Paths
              ##
              # Create a fully-qualified FileUpload resource string.
              #
              # The resource will be in the following format:
              #
              # `accounts/{account}/dataSources/{datasource}/fileUploads/{fileupload}`
              #
              # @param account [String]
              # @param datasource [String]
              # @param fileupload [String]
              #
              # @return [::String]
              def file_upload_path account:, datasource:, fileupload:
                raise ::ArgumentError, "account cannot contain /" if account.to_s.include? "/"
                raise ::ArgumentError, "datasource cannot contain /" if datasource.to_s.include? "/"

                "accounts/#{account}/dataSources/#{datasource}/fileUploads/#{fileupload}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
