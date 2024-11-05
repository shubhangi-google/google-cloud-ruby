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
  module Cloud
    module Eventarc
      module V1
        # MessageBus for the messages flowing through the system. The admin has
        # visibility and control over the messages being published and consumed and can
        # restrict publishers and subscribers to only a subset of data available in the
        # system by defining authorization policies.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Resource name of the form
        #     projects/\\{project}/locations/\\{location}/messageBuses/\\{message_bus}
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server assigned unique identifier for the channel. The value
        #     is a UUID4 string and guaranteed to remain unchanged until the resource is
        #     deleted.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. This checksum is computed by the server based on the value of
        #     other fields, and might be sent only on update and delete requests to
        #     ensure that the client has an up-to-date value before proceeding.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Resource labels.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Resource annotations.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Resource display name.
        # @!attribute [rw] crypto_key_name
        #   @return [::String]
        #     Optional. Resource name of a KMS crypto key (managed by the user) used to
        #     encrypt/decrypt their event data.
        #
        #     It must match the pattern
        #     `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
        # @!attribute [rw] logging_config
        #   @return [::Google::Cloud::Eventarc::V1::LoggingConfig]
        #     Optional. Config to control Platform logging for the Message Bus. This log
        #     configuration is applied to the Message Bus itself, and all the Enrollments
        #     attached to it.
        class MessageBus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
