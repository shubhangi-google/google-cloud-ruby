# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Dialogflow
      module CX
        module V3
          # An intent represents a user's intent to interact with a conversational agent.
          #
          # You can provide information for the Dialogflow API to use to match user input
          # to an intent by adding training phrases (i.e., examples of user input) to
          # your intent.
          # @!attribute [rw] name
          #   @return [::String]
          #     The unique identifier of the intent.
          #     Required for the
          #     {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#update_intent Intents.UpdateIntent}
          #     method.
          #     {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#create_intent Intents.CreateIntent}
          #     populates the name automatically.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/intents/<IntentID>`.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Required. The human-readable name of the intent, unique within the agent.
          # @!attribute [rw] training_phrases
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Intent::TrainingPhrase>]
          #     The collection of training phrases the agent is trained on to identify the
          #     intent.
          # @!attribute [rw] parameters
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Intent::Parameter>]
          #     The collection of parameters associated with the intent.
          # @!attribute [rw] priority
          #   @return [::Integer]
          #     The priority of this intent. Higher numbers represent higher
          #     priorities.
          #
          #     - If the supplied value is unspecified or 0, the service
          #       translates the value to 500,000, which corresponds to the
          #       `Normal` priority in the console.
          #     - If the supplied value is negative, the intent is ignored
          #       in runtime detect intent requests.
          # @!attribute [rw] is_fallback
          #   @return [::Boolean]
          #     Indicates whether this is a fallback intent. Currently only default
          #     fallback intent is allowed in the agent, which is added upon agent
          #     creation.
          #     Adding training phrases to fallback intent is useful in the case of
          #     requests that are mistakenly matched, since training phrases assigned to
          #     fallback intents act as negative examples that triggers no-match event.
          # @!attribute [rw] labels
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     The key/value metadata to label an intent. Labels can contain
          #     lowercase letters, digits and the symbols '-' and '_'. International
          #     characters are allowed, including letters from unicase alphabets. Keys must
          #     start with a letter. Keys and values can be no longer than 63 characters
          #     and no more than 128 bytes.
          #
          #     Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed
          #     Dialogflow defined labels include:
          #     * sys-head
          #     * sys-contextual
          #     The above labels do not require value. "sys-head" means the intent is a
          #     head intent. "sys.contextual" means the intent is a contextual intent.
          # @!attribute [rw] description
          #   @return [::String]
          #     Human readable description for better understanding an intent like its
          #     scope, content, result etc. Maximum character limit: 140 characters.
          class Intent
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Represents an example that the agent is trained on to identify the intent.
            # @!attribute [rw] id
            #   @return [::String]
            #     Output only. The unique identifier of the training phrase.
            # @!attribute [rw] parts
            #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Intent::TrainingPhrase::Part>]
            #     Required. The ordered list of training phrase parts.
            #     The parts are concatenated in order to form the training phrase.
            #
            #     Note: The API does not automatically annotate training phrases like the
            #     Dialogflow Console does.
            #
            #     Note: Do not forget to include whitespace at part boundaries, so the
            #     training phrase is well formatted when the parts are concatenated.
            #
            #     If the training phrase does not need to be annotated with parameters,
            #     you just need a single part with only the
            #     {::Google::Cloud::Dialogflow::CX::V3::Intent::TrainingPhrase::Part#text Part.text}
            #     field set.
            #
            #     If you want to annotate the training phrase, you must create multiple
            #     parts, where the fields of each part are populated in one of two ways:
            #
            #     -   `Part.text` is set to a part of the phrase that has no parameters.
            #     -   `Part.text` is set to a part of the phrase that you want to annotate,
            #         and the `parameter_id` field is set.
            # @!attribute [rw] repeat_count
            #   @return [::Integer]
            #     Indicates how many times this example was added to the intent.
            class TrainingPhrase
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Represents a part of a training phrase.
              # @!attribute [rw] text
              #   @return [::String]
              #     Required. The text for this part.
              # @!attribute [rw] parameter_id
              #   @return [::String]
              #     The {::Google::Cloud::Dialogflow::CX::V3::Intent::Parameter parameter} used to
              #     annotate this part of the training phrase. This field is required for
              #     annotated parts of the training phrase.
              class Part
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Represents an intent parameter.
            # @!attribute [rw] id
            #   @return [::String]
            #     Required. The unique identifier of the parameter. This field
            #     is used by [training
            #     phrases][google.cloud.dialogflow.cx.v3.Intent.TrainingPhrase] to annotate
            #     their {::Google::Cloud::Dialogflow::CX::V3::Intent::TrainingPhrase::Part parts}.
            # @!attribute [rw] entity_type
            #   @return [::String]
            #     Required. The entity type of the parameter.
            #     Format:
            #     `projects/-/locations/-/agents/-/entityTypes/<SystemEntityTypeID>` for
            #     system entity types (for example,
            #     `projects/-/locations/-/agents/-/entityTypes/sys.date`), or
            #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/entityTypes/<EntityTypeID>`
            #     for developer entity types.
            # @!attribute [rw] is_list
            #   @return [::Boolean]
            #     Indicates whether the parameter represents a list of values.
            # @!attribute [rw] redact
            #   @return [::Boolean]
            #     Indicates whether the parameter content should be redacted in log. If
            #     redaction is enabled, the parameter content will be replaced by parameter
            #     name during logging.
            #     Note: the parameter content is subject to redaction if either parameter
            #     level redaction or [entity type level
            #     redaction][google.cloud.dialogflow.cx.v3.EntityType.redact] is enabled.
            class Parameter
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class LabelsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#list_intents Intents.ListIntents}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The agent to list all intents for.
          #     Format: `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language to list intents for. The following fields are language
          #     dependent:
          #
          #     *   `Intent.training_phrases.parts.text`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          # @!attribute [rw] intent_view
          #   @return [::Google::Cloud::Dialogflow::CX::V3::IntentView]
          #     The resource view to apply to the returned intent.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 100 and
          #     at most 1000.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListIntentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#list_intents Intents.ListIntents}.
          # @!attribute [rw] intents
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Intent>]
          #     The list of intents. There will be a maximum number of items returned based
          #     on the page_size field in the request.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListIntentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#get_intent Intents.GetIntent}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the intent.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/intents/<IntentID>`.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language to retrieve the intent for. The following fields are language
          #     dependent:
          #
          #     *   `Intent.training_phrases.parts.text`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          class GetIntentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#create_intent Intents.CreateIntent}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The agent to create an intent for.
          #     Format: `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>`.
          # @!attribute [rw] intent
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Intent]
          #     Required. The intent to create.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language of the following fields in `intent`:
          #
          #     *   `Intent.training_phrases.parts.text`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          class CreateIntentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#update_intent Intents.UpdateIntent}.
          # @!attribute [rw] intent
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Intent]
          #     Required. The intent to update.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     The language of the following fields in `intent`:
          #
          #     *   `Intent.training_phrases.parts.text`
          #
          #     If not specified, the agent's default language is used.
          #     [Many
          #     languages](https://cloud.google.com/dialogflow/cx/docs/reference/language)
          #     are supported.
          #     Note: languages must be enabled in the agent before they can be used.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The mask to control which fields get updated. If the mask is not present,
          #     all fields will be updated.
          class UpdateIntentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#delete_intent Intents.DeleteIntent}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the intent to delete.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/intents/<IntentID>`.
          class DeleteIntentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#import_intents Intents.ImportIntents}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The agent to import the intents into.
          #     Format: `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>`.
          # @!attribute [rw] intents_uri
          #   @return [::String]
          #     The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI
          #     to import intents from. The format of this URI must be
          #     `gs://<bucket-name>/<object-name>`.
          #
          #     Dialogflow performs a read operation for the Cloud Storage object
          #     on the caller's behalf, so your request authentication must
          #     have read permissions for the object. For more information, see
          #     [Dialogflow access
          #     control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
          #
          #     Note: The following fields are mutually exclusive: `intents_uri`, `intents_content`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] intents_content
          #   @return [::Google::Cloud::Dialogflow::CX::V3::InlineSource]
          #     Uncompressed byte content of intents.
          #
          #     Note: The following fields are mutually exclusive: `intents_content`, `intents_uri`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] merge_option
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ImportIntentsRequest::MergeOption]
          #     Merge option for importing intents. If not specified, `REJECT` is assumed.
          class ImportIntentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Merge option when display name conflicts exist during import.
            module MergeOption
              # Unspecified. Should not be used.
              MERGE_OPTION_UNSPECIFIED = 0

              # DEPRECATED: Please use
              # [REPORT_CONFLICT][ImportIntentsRequest.REPORT_CONFLICT] instead.
              # Fail the request if there are intents whose display names conflict with
              # the display names of intents in the agent.
              REJECT = 1

              # Replace the original intent in the agent with the new intent when display
              # name conflicts exist.
              REPLACE = 2

              # Merge the original intent with the new intent when display name conflicts
              # exist.
              MERGE = 3

              # Create new intents with new display names to differentiate them from the
              # existing intents when display name conflicts exist.
              RENAME = 4

              # Report conflict information if display names conflict is detected.
              # Otherwise, import intents.
              REPORT_CONFLICT = 5

              # Keep the original intent and discard the conflicting new intent when
              # display name conflicts exist.
              KEEP = 6
            end
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#import_intents Intents.ImportIntents}.
          # @!attribute [rw] intents
          #   @return [::Array<::String>]
          #     The unique identifier of the imported intents.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/intents/<IntentID>`.
          # @!attribute [rw] conflicting_resources
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ImportIntentsResponse::ConflictingResources]
          #     Info which resources have conflicts when
          #     [REPORT_CONFLICT][ImportIntentsResponse.REPORT_CONFLICT] merge_option is
          #     set in ImportIntentsRequest.
          class ImportIntentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Conflicting resources detected during the import process. Only filled when
            # [REPORT_CONFLICT][ImportIntentsResponse.REPORT_CONFLICT] is set in the
            # request and there are conflicts in the display names.
            # @!attribute [rw] intent_display_names
            #   @return [::Array<::String>]
            #     Display names of conflicting intents.
            # @!attribute [rw] entity_display_names
            #   @return [::Array<::String>]
            #     Display names of conflicting entities.
            class ConflictingResources
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Metadata returned for the
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#import_intents Intents.ImportIntents}
          # long running operation.
          class ImportIntentsMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#export_intents Intents.ExportIntents}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The name of the parent agent to export intents.
          #     Format: `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>`.
          # @!attribute [rw] intents
          #   @return [::Array<::String>]
          #     Required. The name of the intents to export.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/intents/<IntentID>`.
          # @!attribute [rw] intents_uri
          #   @return [::String]
          #     Optional. The [Google Cloud
          #     Storage](https://cloud.google.com/storage/docs/) URI to export the
          #     intents to. The format of this URI must be
          #     `gs://<bucket-name>/<object-name>`.
          #
          #     Dialogflow performs a write operation for the Cloud Storage object
          #     on the caller's behalf, so your request authentication must
          #     have write permissions for the object. For more information, see
          #     [Dialogflow access
          #     control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
          #
          #     Note: The following fields are mutually exclusive: `intents_uri`, `intents_content_inline`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] intents_content_inline
          #   @return [::Boolean]
          #     Optional. The option to return the serialized intents inline.
          #
          #     Note: The following fields are mutually exclusive: `intents_content_inline`, `intents_uri`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] data_format
          #   @return [::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest::DataFormat]
          #     Optional. The data format of the exported intents. If not specified, `BLOB`
          #     is assumed.
          class ExportIntentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Data format of the exported intents.
            module DataFormat
              # Unspecified format. Treated as `BLOB`.
              DATA_FORMAT_UNSPECIFIED = 0

              # Intents will be exported as raw bytes.
              BLOB = 1

              # Intents will be exported in JSON format.
              JSON = 2

              # Intents will be exported in CSV format.
              CSV = 3
            end
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#export_intents Intents.ExportIntents}.
          # @!attribute [rw] intents_uri
          #   @return [::String]
          #     The URI to a file containing the exported intents. This field is
          #     populated only if `intents_uri` is specified in
          #     {::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest ExportIntentsRequest}.
          #
          #     Note: The following fields are mutually exclusive: `intents_uri`, `intents_content`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] intents_content
          #   @return [::Google::Cloud::Dialogflow::CX::V3::InlineDestination]
          #     Uncompressed byte content for intents. This field is populated only if
          #     `intents_content_inline` is set to true in
          #     {::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest ExportIntentsRequest}.
          #
          #     Note: The following fields are mutually exclusive: `intents_content`, `intents_uri`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class ExportIntentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata returned for the
          # {::Google::Cloud::Dialogflow::CX::V3::Intents::Client#export_intents Intents.ExportIntents}
          # long running operation.
          class ExportIntentsMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents the options for views of an intent.
          # An intent can be a sizable object. Therefore, we provide a resource view that
          # does not return training phrases in the response.
          module IntentView
            # Not specified. Treated as INTENT_VIEW_FULL.
            INTENT_VIEW_UNSPECIFIED = 0

            # Training phrases field is not populated in the response.
            INTENT_VIEW_PARTIAL = 1

            # All fields are populated.
            INTENT_VIEW_FULL = 2
          end
        end
      end
    end
  end
end
