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
    module DiscoveryEngine
      module V1beta
        # Grounding configuration.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the GroundingConfig, of the form
        #     `projects/{project}/locations/{location}/groundingConfigs/{grounding_config}`.
        class GroundingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Grounding Fact.
        # @!attribute [rw] fact_text
        #   @return [::String]
        #     Text content of the fact. Can be at most 10K characters long.
        # @!attribute [rw] attributes
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Attributes associated with the fact.
        #     Common attributes include `source` (indicating where the fact was sourced
        #     from), `author` (indicating the author of the fact), and so on.
        class GroundingFact
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AttributesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Fact Chunk.
        # @!attribute [rw] chunk_text
        #   @return [::String]
        #     Text content of the fact chunk. Can be at most 10K characters long.
        # @!attribute [rw] source
        #   @return [::String]
        #     Source from which this fact chunk was retrieved. If it was retrieved
        #     from the GroundingFacts provided in the request then this field will
        #     contain the index of the specific fact from which this chunk was
        #     retrieved.
        # @!attribute [rw] index
        #   @return [::Integer]
        #     The index of this chunk. Currently, only used for the streaming mode.
        # @!attribute [rw] source_metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     More fine-grained information for the source reference.
        class FactChunk
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class SourceMetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
