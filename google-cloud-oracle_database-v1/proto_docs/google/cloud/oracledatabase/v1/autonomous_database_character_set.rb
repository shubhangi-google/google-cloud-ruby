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
    module OracleDatabase
      module V1
        # Details of the Autonomous Database character set resource.
        # https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabaseCharacterSets/
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The name of the Autonomous Database Character Set resource in
        #     the following format:
        #     projects/\\{project}/locations/\\{region}/autonomousDatabaseCharacterSets/\\{autonomous_database_character_set}
        # @!attribute [r] character_set_type
        #   @return [::Google::Cloud::OracleDatabase::V1::AutonomousDatabaseCharacterSet::CharacterSetType]
        #     Output only. The character set type for the Autonomous Database.
        # @!attribute [r] character_set
        #   @return [::String]
        #     Output only. The character set name for the Autonomous Database which is
        #     the ID in the resource name.
        class AutonomousDatabaseCharacterSet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of character set an Autonomous Database can have.
          module CharacterSetType
            # Character set type is not specified.
            CHARACTER_SET_TYPE_UNSPECIFIED = 0

            # Character set type is set to database.
            DATABASE = 1

            # Character set type is set to national.
            NATIONAL = 2
          end
        end
      end
    end
  end
end
