# frozen_string_literal: true

# Copyright 2023 Google LLC
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
      module V1
        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#get_document DocumentService.GetDocument}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Full resource name of
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document}`.
        #
        #     If the caller does not have permission to access the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}, regardless of whether
        #     or not it exists, a `PERMISSION_DENIED` error is returned.
        #
        #     If the requested {::Google::Cloud::DiscoveryEngine::V1::Document Document} does
        #     not exist, a `NOT_FOUND` error is returned.
        class GetDocumentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#list_documents DocumentService.ListDocuments}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent branch resource name, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
        #     Use `default_branch` as the branch ID, to list documents under the default
        #     branch.
        #
        #     If the caller does not have permission to list
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}s under this branch,
        #     regardless of whether or not this branch exists, a `PERMISSION_DENIED`
        #     error is returned.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of {::Google::Cloud::DiscoveryEngine::V1::Document Document}s to
        #     return. If unspecified, defaults to 100. The maximum allowed value is 1000.
        #     Values above 1000 are set to 1000.
        #
        #     If this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token
        #     {::Google::Cloud::DiscoveryEngine::V1::ListDocumentsResponse#next_page_token ListDocumentsResponse.next_page_token},
        #     received from a previous
        #     {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#list_documents DocumentService.ListDocuments}
        #     call. Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#list_documents DocumentService.ListDocuments}
        #     must match the call that provided the page token. Otherwise, an
        #     `INVALID_ARGUMENT` error is returned.
        class ListDocumentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#list_documents DocumentService.ListDocuments}
        # method.
        # @!attribute [rw] documents
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::Document>]
        #     The {::Google::Cloud::DiscoveryEngine::V1::Document Document}s.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as
        #     {::Google::Cloud::DiscoveryEngine::V1::ListDocumentsRequest#page_token ListDocumentsRequest.page_token}
        #     to retrieve the next page. If this field is omitted, there are no
        #     subsequent pages.
        class ListDocumentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#create_document DocumentService.CreateDocument}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::DiscoveryEngine::V1::Document]
        #     Required. The {::Google::Cloud::DiscoveryEngine::V1::Document Document} to
        #     create.
        # @!attribute [rw] document_id
        #   @return [::String]
        #     Required. The ID to use for the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}, which becomes the
        #     final component of the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document#name Document.name}.
        #
        #     If the caller does not have permission to create the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}, regardless of whether
        #     or not it exists, a `PERMISSION_DENIED` error is returned.
        #
        #     This field must be unique among all
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}s with the same
        #     {::Google::Cloud::DiscoveryEngine::V1::CreateDocumentRequest#parent parent}.
        #     Otherwise, an `ALREADY_EXISTS` error is returned.
        #
        #     This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
        #     standard with a length limit of 63 characters. Otherwise, an
        #     `INVALID_ARGUMENT` error is returned.
        class CreateDocumentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#update_document DocumentService.UpdateDocument}
        # method.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::DiscoveryEngine::V1::Document]
        #     Required. The document to update/create.
        #
        #     If the caller does not have permission to update the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}, regardless of whether
        #     or not it exists, a `PERMISSION_DENIED` error is returned.
        #
        #     If the {::Google::Cloud::DiscoveryEngine::V1::Document Document} to update does
        #     not exist and
        #     {::Google::Cloud::DiscoveryEngine::V1::UpdateDocumentRequest#allow_missing allow_missing}
        #     is not set, a `NOT_FOUND` error is returned.
        # @!attribute [rw] allow_missing
        #   @return [::Boolean]
        #     If set to `true` and the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document} is not found, a new
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document} is be created.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Indicates which fields in the provided imported 'document' to update. If
        #     not set, by default updates all fields.
        class UpdateDocumentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#delete_document DocumentService.DeleteDocument}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Full resource name of
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document}`.
        #
        #     If the caller does not have permission to delete the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}, regardless of whether
        #     or not it exists, a `PERMISSION_DENIED` error is returned.
        #
        #     If the {::Google::Cloud::DiscoveryEngine::V1::Document Document} to delete does
        #     not exist, a `NOT_FOUND` error is returned.
        class DeleteDocumentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#batch_get_documents_metadata DocumentService.BatchGetDocumentsMetadata}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent branch resource name, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
        # @!attribute [rw] matcher
        #   @return [::Google::Cloud::DiscoveryEngine::V1::BatchGetDocumentsMetadataRequest::Matcher]
        #     Required. Matcher for the
        #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}s.
        class BatchGetDocumentsMetadataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Matcher for the {::Google::Cloud::DiscoveryEngine::V1::Document Document}s by
          # exact uris.
          # @!attribute [rw] uris
          #   @return [::Array<::String>]
          #     The exact URIs to match by.
          class UrisMatcher
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Matcher for the {::Google::Cloud::DiscoveryEngine::V1::Document Document}s by
          # FHIR resource names.
          # @!attribute [rw] fhir_resources
          #   @return [::Array<::String>]
          #     Required. The FHIR resources to match by.
          #     Format:
          #     projects/\\{project}/locations/\\{location}/datasets/\\{dataset}/fhirStores/\\{fhir_store}/fhir/\\{resource_type}/\\{fhir_resource_id}
          class FhirMatcher
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Matcher for the {::Google::Cloud::DiscoveryEngine::V1::Document Document}s.
          # Currently supports matching by exact URIs.
          # @!attribute [rw] uris_matcher
          #   @return [::Google::Cloud::DiscoveryEngine::V1::BatchGetDocumentsMetadataRequest::UrisMatcher]
          #     Matcher by exact URIs.
          #
          #     Note: The following fields are mutually exclusive: `uris_matcher`, `fhir_matcher`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] fhir_matcher
          #   @return [::Google::Cloud::DiscoveryEngine::V1::BatchGetDocumentsMetadataRequest::FhirMatcher]
          #     Matcher by FHIR resource names.
          #
          #     Note: The following fields are mutually exclusive: `fhir_matcher`, `uris_matcher`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class Matcher
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1::DocumentService::Client#batch_get_documents_metadata DocumentService.BatchGetDocumentsMetadata}
        # method.
        # @!attribute [rw] documents_metadata
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::BatchGetDocumentsMetadataResponse::DocumentMetadata>]
        #     The metadata of the {::Google::Cloud::DiscoveryEngine::V1::Document Document}s.
        class BatchGetDocumentsMetadataResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The metadata of a {::Google::Cloud::DiscoveryEngine::V1::Document Document}.
          # @!attribute [rw] matcher_value
          #   @return [::Google::Cloud::DiscoveryEngine::V1::BatchGetDocumentsMetadataResponse::DocumentMetadata::MatcherValue]
          #     The value of the matcher that was used to match the
          #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::DiscoveryEngine::V1::BatchGetDocumentsMetadataResponse::State]
          #     The state of the document.
          # @!attribute [rw] last_refreshed_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The timestamp of the last time the
          #     {::Google::Cloud::DiscoveryEngine::V1::Document Document} was last indexed.
          # @!attribute [rw] data_ingestion_source
          #   @return [::String]
          #     The data ingestion source of the
          #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}.
          #
          #     Allowed values are:
          #
          #     * `batch`: Data ingested via Batch API, e.g., ImportDocuments.
          #     * `streaming` Data ingested via Streaming API, e.g., FHIR streaming.
          class DocumentMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The value of the matcher that was used to match the
            # {::Google::Cloud::DiscoveryEngine::V1::Document Document}.
            # @!attribute [rw] uri
            #   @return [::String]
            #     If match by URI, the URI of the
            #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}.
            #
            #     Note: The following fields are mutually exclusive: `uri`, `fhir_resource`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            # @!attribute [rw] fhir_resource
            #   @return [::String]
            #     Format:
            #     projects/\\{project}/locations/\\{location}/datasets/\\{dataset}/fhirStores/\\{fhir_store}/fhir/\\{resource_type}/\\{fhir_resource_id}
            #
            #     Note: The following fields are mutually exclusive: `fhir_resource`, `uri`. If a field in that set is populated, all other fields in the set will automatically be cleared.
            class MatcherValue
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The state of the {::Google::Cloud::DiscoveryEngine::V1::Document Document}.
          module State
            # Should never be set.
            STATE_UNSPECIFIED = 0

            # The {::Google::Cloud::DiscoveryEngine::V1::Document Document} is indexed.
            INDEXED = 1

            # The {::Google::Cloud::DiscoveryEngine::V1::Document Document} is not indexed
            # because its URI is not in the
            # {::Google::Cloud::DiscoveryEngine::V1::TargetSite TargetSite}.
            NOT_IN_TARGET_SITE = 2

            # The {::Google::Cloud::DiscoveryEngine::V1::Document Document} is not indexed.
            NOT_IN_INDEX = 3
          end
        end
      end
    end
  end
end
