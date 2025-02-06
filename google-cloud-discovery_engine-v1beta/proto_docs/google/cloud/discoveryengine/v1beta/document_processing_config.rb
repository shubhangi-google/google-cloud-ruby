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
        # A singleton resource of
        # {::Google::Cloud::DiscoveryEngine::V1beta::DataStore DataStore}. If it's empty
        # when {::Google::Cloud::DiscoveryEngine::V1beta::DataStore DataStore} is created
        # and {::Google::Cloud::DiscoveryEngine::V1beta::DataStore DataStore} is set to
        # {::Google::Cloud::DiscoveryEngine::V1beta::DataStore::ContentConfig::CONTENT_REQUIRED DataStore.ContentConfig.CONTENT_REQUIRED},
        # the default parser will default to digital parser.
        # @!attribute [rw] name
        #   @return [::String]
        #     The full resource name of the Document Processing Config.
        #     Format:
        #     `projects/*/locations/*/collections/*/dataStores/*/documentProcessingConfig`.
        # @!attribute [rw] chunking_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ChunkingConfig]
        #     Whether chunking mode is enabled.
        # @!attribute [rw] default_parsing_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ParsingConfig]
        #     Configurations for default Document parser.
        #     If not specified, we will configure it as default DigitalParsingConfig, and
        #     the default parsing config will be applied to all file types for Document
        #     parsing.
        # @!attribute [rw] parsing_config_overrides
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ParsingConfig}]
        #     Map from file type to override the default parsing configuration based on
        #     the file type. Supported keys:
        #
        #     * `pdf`: Override parsing config for PDF files, either digital parsing, ocr
        #     parsing or layout parsing is supported.
        #     * `html`: Override parsing config for HTML files, only digital parsing and
        #     layout parsing are supported.
        #     * `docx`: Override parsing config for DOCX files, only digital parsing and
        #     layout parsing are supported.
        #     * `pptx`: Override parsing config for PPTX files, only digital parsing and
        #     layout parsing are supported.
        #     * `xlsm`: Override parsing config for XLSM files, only digital parsing and
        #     layout parsing are supported.
        #     * `xlsx`: Override parsing config for XLSX files, only digital parsing and
        #     layout parsing are supported.
        class DocumentProcessingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Configuration for chunking config.
          # @!attribute [rw] layout_based_chunking_config
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ChunkingConfig::LayoutBasedChunkingConfig]
          #     Configuration for the layout based chunking.
          class ChunkingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Configuration for the layout based chunking.
            # @!attribute [rw] chunk_size
            #   @return [::Integer]
            #     The token size limit for each chunk.
            #
            #     Supported values: 100-500 (inclusive).
            #     Default value: 500.
            # @!attribute [rw] include_ancestor_headings
            #   @return [::Boolean]
            #     Whether to include appending different levels of headings to chunks
            #     from the middle of the document to prevent context loss.
            #
            #     Default value: False.
            class LayoutBasedChunkingConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Related configurations applied to a specific type of document parser.
          # @!attribute [rw] digital_parsing_config
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ParsingConfig::DigitalParsingConfig]
          #     Configurations applied to digital parser.
          #
          #     Note: The following fields are mutually exclusive: `digital_parsing_config`, `ocr_parsing_config`, `layout_parsing_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] ocr_parsing_config
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ParsingConfig::OcrParsingConfig]
          #     Configurations applied to OCR parser. Currently it only applies to
          #     PDFs.
          #
          #     Note: The following fields are mutually exclusive: `ocr_parsing_config`, `digital_parsing_config`, `layout_parsing_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] layout_parsing_config
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ParsingConfig::LayoutParsingConfig]
          #     Configurations applied to layout parser.
          #
          #     Note: The following fields are mutually exclusive: `layout_parsing_config`, `digital_parsing_config`, `ocr_parsing_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class ParsingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The digital parsing configurations for documents.
            class DigitalParsingConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The OCR parsing configurations for documents.
            # @!attribute [rw] enhanced_document_elements
            #   @deprecated This field is deprecated and may be removed in the next major version update.
            #   @return [::Array<::String>]
            #     [DEPRECATED] This field is deprecated. To use the additional enhanced
            #     document elements processing, please switch to `layout_parsing_config`.
            # @!attribute [rw] use_native_text
            #   @return [::Boolean]
            #     If true, will use native text instead of OCR text on pages containing
            #     native text.
            class OcrParsingConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The layout parsing configurations for documents.
            class LayoutParsingConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig::ParsingConfig]
          class ParsingConfigOverridesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
