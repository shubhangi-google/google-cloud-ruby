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
      module V1beta
        # Request message for PurgeUserEvents method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the catalog under which the events are
        #     created. The format is
        #     `projects/{project}/locations/global/collections/{collection}/dataStores/{dataStore}`.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. The filter string to specify the events to be deleted with a
        #     length limit of 5,000 characters. The eligible fields for filtering are:
        #
        #     * `eventType`: Double quoted
        #     {::Google::Cloud::DiscoveryEngine::V1beta::UserEvent#event_type UserEvent.event_type}
        #     string.
        #     * `eventTime`: in ISO 8601 "zulu" format.
        #     * `userPseudoId`: Double quoted string. Specifying this will delete all
        #       events associated with a visitor.
        #     * `userId`: Double quoted string. Specifying this will delete all events
        #       associated with a user.
        #
        #     Examples:
        #
        #     * Deleting all events in a time range:
        #       `eventTime > "2012-04-23T18:25:43.511Z"
        #       eventTime < "2012-04-23T18:30:43.511Z"`
        #     * Deleting specific eventType:
        #       `eventType = "search"`
        #     * Deleting all events for a specific visitor:
        #       `userPseudoId = "visitor1024"`
        #     * Deleting all events inside a DataStore:
        #       `*`
        #
        #     The filtering fields are assumed to have an implicit AND.
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     The `force` field is currently not supported. Purge user event requests
        #     will permanently delete all purgeable events. Once the development is
        #     complete:
        #     If `force` is set to false, the method will return the expected
        #     purge count without deleting any user events. This field will default to
        #     false if not included in the request.
        class PurgeUserEventsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of the PurgeUserEventsRequest. If the long running operation is
        # successfully done, then this message is returned by the
        # google.longrunning.Operations.response field.
        # @!attribute [rw] purge_count
        #   @return [::Integer]
        #     The total count of events purged as a result of the operation.
        class PurgeUserEventsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the PurgeUserEvents operation.
        # This will be returned by the google.longrunning.Operation.metadata field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        # @!attribute [rw] success_count
        #   @return [::Integer]
        #     Count of entries that were deleted successfully.
        # @!attribute [rw] failure_count
        #   @return [::Integer]
        #     Count of entries that encountered errors while processing.
        class PurgeUserEventsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration of destination for Purge related errors.
        # @!attribute [rw] gcs_prefix
        #   @return [::String]
        #     Cloud Storage prefix for purge errors. This must be an empty,
        #     existing Cloud Storage directory. Purge errors are written to
        #     sharded files in this directory, one per line, as a JSON-encoded
        #     `google.rpc.Status` message.
        class PurgeErrorConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client#purge_documents DocumentService.PurgeDocuments}
        # method.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::GcsSource]
        #     Cloud Storage location for the input content.
        #     Supported `data_schema`:
        #     * `document_id`: One valid
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Document#id Document.id} per line.
        #
        #     Note: The following fields are mutually exclusive: `gcs_source`, `inline_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] inline_source
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::PurgeDocumentsRequest::InlineSource]
        #     Inline source for the input content for purge.
        #
        #     Note: The following fields are mutually exclusive: `inline_source`, `gcs_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. Filter matching documents to purge. Only currently supported
        #     value is
        #     `*` (all items).
        # @!attribute [rw] error_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::PurgeErrorConfig]
        #     The desired location of errors incurred during the purge.
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     Actually performs the purge. If `force` is set to false, return the
        #     expected purge count without deleting any documents.
        class PurgeDocumentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The inline source for the input config for
          # {::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client#purge_documents DocumentService.PurgeDocuments}
          # method.
          # @!attribute [rw] documents
          #   @return [::Array<::String>]
          #     Required. A list of full resource name of documents to purge. In the
          #     format
          #     `projects/*/locations/*/collections/*/dataStores/*/branches/*/documents/*`.
          #     Recommended max of 100 items.
          class InlineSource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client#purge_documents DocumentService.PurgeDocuments}
        # method. If the long running operation is successfully done, then this message
        # is returned by the google.longrunning.Operations.response field.
        # @!attribute [rw] purge_count
        #   @return [::Integer]
        #     The total count of documents purged as a result of the operation.
        # @!attribute [rw] purge_sample
        #   @return [::Array<::String>]
        #     A sample of document names that will be deleted. Only populated if `force`
        #     is set to false. A max of 100 names will be returned and the names are
        #     chosen at random.
        class PurgeDocumentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the PurgeDocuments operation.
        # This will be returned by the google.longrunning.Operation.metadata field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        # @!attribute [rw] success_count
        #   @return [::Integer]
        #     Count of entries that were deleted successfully.
        # @!attribute [rw] failure_count
        #   @return [::Integer]
        #     Count of entries that encountered errors while processing.
        # @!attribute [rw] ignored_count
        #   @return [::Integer]
        #     Count of entries that were ignored as entries were not found.
        class PurgeDocumentsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::CompletionService::Client#purge_suggestion_deny_list_entries CompletionService.PurgeSuggestionDenyListEntries}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent data store resource name for which to import denylist
        #     entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        class PurgeSuggestionDenyListEntriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::CompletionService::Client#purge_suggestion_deny_list_entries CompletionService.PurgeSuggestionDenyListEntries}
        # method.
        # @!attribute [rw] purge_count
        #   @return [::Integer]
        #     Number of suggestion deny list entries purged.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        class PurgeSuggestionDenyListEntriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the PurgeSuggestionDenyListEntries
        # operation. This is returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class PurgeSuggestionDenyListEntriesMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::CompletionService::Client#purge_completion_suggestions CompletionService.PurgeCompletionSuggestions}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent data store resource name for which to purge completion
        #     suggestions. Follows pattern
        #     projects/*/locations/*/collections/*/dataStores/*.
        class PurgeCompletionSuggestionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::CompletionService::Client#purge_completion_suggestions CompletionService.PurgeCompletionSuggestions}
        # method.
        # @!attribute [rw] purge_succeeded
        #   @return [::Boolean]
        #     Whether the completion suggestions were successfully purged.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        class PurgeCompletionSuggestionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the PurgeCompletionSuggestions
        # operation. This is returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class PurgeCompletionSuggestionsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
