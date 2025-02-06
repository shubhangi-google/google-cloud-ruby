# frozen_string_literal: true

# Copyright 2020 Google LLC
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


module Grafeas
  module V1
    # An instance of an analysis type that has been found on a resource.
    # @!attribute [rw] name
    #   @return [::String]
    #     Output only. The name of the occurrence in the form of
    #     `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
    # @!attribute [rw] resource_uri
    #   @return [::String]
    #     Required. Immutable. A URI that represents the resource for which the
    #     occurrence applies. For example,
    #     `https://gcr.io/project/image@sha256:123abc` for a Docker image.
    # @!attribute [rw] note_name
    #   @return [::String]
    #     Required. Immutable. The analysis note associated with this occurrence, in
    #     the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be
    #     used as a filter in list requests.
    # @!attribute [rw] kind
    #   @return [::Grafeas::V1::NoteKind]
    #     Output only. This explicitly denotes which of the occurrence details are
    #     specified. This field can be used as a filter in list requests.
    # @!attribute [rw] remediation
    #   @return [::String]
    #     A description of actions that can be taken to remedy the note.
    # @!attribute [rw] create_time
    #   @return [::Google::Protobuf::Timestamp]
    #     Output only. The time this occurrence was created.
    # @!attribute [rw] update_time
    #   @return [::Google::Protobuf::Timestamp]
    #     Output only. The time this occurrence was last updated.
    # @!attribute [rw] vulnerability
    #   @return [::Grafeas::V1::VulnerabilityOccurrence]
    #     Describes a security vulnerability.
    #
    #     Note: The following fields are mutually exclusive: `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] build
    #   @return [::Grafeas::V1::BuildOccurrence]
    #     Describes a verifiable build.
    #
    #     Note: The following fields are mutually exclusive: `build`, `vulnerability`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] image
    #   @return [::Grafeas::V1::ImageOccurrence]
    #     Describes how this resource derives from the basis in the associated
    #     note.
    #
    #     Note: The following fields are mutually exclusive: `image`, `vulnerability`, `build`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] package
    #   @return [::Grafeas::V1::PackageOccurrence]
    #     Describes the installation of a package on the linked resource.
    #
    #     Note: The following fields are mutually exclusive: `package`, `vulnerability`, `build`, `image`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] deployment
    #   @return [::Grafeas::V1::DeploymentOccurrence]
    #     Describes the deployment of an artifact on a runtime.
    #
    #     Note: The following fields are mutually exclusive: `deployment`, `vulnerability`, `build`, `image`, `package`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] discovery
    #   @return [::Grafeas::V1::DiscoveryOccurrence]
    #     Describes when a resource was discovered.
    #
    #     Note: The following fields are mutually exclusive: `discovery`, `vulnerability`, `build`, `image`, `package`, `deployment`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] attestation
    #   @return [::Grafeas::V1::AttestationOccurrence]
    #     Describes an attestation of an artifact.
    #
    #     Note: The following fields are mutually exclusive: `attestation`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] upgrade
    #   @return [::Grafeas::V1::UpgradeOccurrence]
    #     Describes an available package upgrade on the linked resource.
    #
    #     Note: The following fields are mutually exclusive: `upgrade`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] compliance
    #   @return [::Grafeas::V1::ComplianceOccurrence]
    #     Describes a compliance violation on a linked resource.
    #
    #     Note: The following fields are mutually exclusive: `compliance`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] dsse_attestation
    #   @return [::Grafeas::V1::DSSEAttestationOccurrence]
    #     Describes an attestation of an artifact using dsse.
    #
    #     Note: The following fields are mutually exclusive: `dsse_attestation`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] sbom_reference
    #   @return [::Grafeas::V1::SBOMReferenceOccurrence]
    #     Describes a specific SBOM reference occurrences.
    #
    #     Note: The following fields are mutually exclusive: `sbom_reference`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] envelope
    #   @return [::Grafeas::V1::Envelope]
    #     https://github.com/secure-systems-lab/dsse
    class Occurrence
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # A type of analysis that can be done for a resource.
    # @!attribute [rw] name
    #   @return [::String]
    #     Output only. The name of the note in the form of
    #     `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
    # @!attribute [rw] short_description
    #   @return [::String]
    #     A one sentence description of this note.
    # @!attribute [rw] long_description
    #   @return [::String]
    #     A detailed description of this note.
    # @!attribute [rw] kind
    #   @return [::Grafeas::V1::NoteKind]
    #     Output only. The type of analysis. This field can be used as a filter in
    #     list requests.
    # @!attribute [rw] related_url
    #   @return [::Array<::Grafeas::V1::RelatedUrl>]
    #     URLs associated with this note.
    # @!attribute [rw] expiration_time
    #   @return [::Google::Protobuf::Timestamp]
    #     Time of expiration for this note. Empty if note does not expire.
    # @!attribute [rw] create_time
    #   @return [::Google::Protobuf::Timestamp]
    #     Output only. The time this note was created. This field can be used as a
    #     filter in list requests.
    # @!attribute [rw] update_time
    #   @return [::Google::Protobuf::Timestamp]
    #     Output only. The time this note was last updated. This field can be used as
    #     a filter in list requests.
    # @!attribute [rw] related_note_names
    #   @return [::Array<::String>]
    #     Other notes related to this note.
    # @!attribute [rw] vulnerability
    #   @return [::Grafeas::V1::VulnerabilityNote]
    #     A note describing a package vulnerability.
    #
    #     Note: The following fields are mutually exclusive: `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] build
    #   @return [::Grafeas::V1::BuildNote]
    #     A note describing build provenance for a verifiable build.
    #
    #     Note: The following fields are mutually exclusive: `build`, `vulnerability`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] image
    #   @return [::Grafeas::V1::ImageNote]
    #     A note describing a base image.
    #
    #     Note: The following fields are mutually exclusive: `image`, `vulnerability`, `build`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] package
    #   @return [::Grafeas::V1::PackageNote]
    #     A note describing a package hosted by various package managers.
    #
    #     Note: The following fields are mutually exclusive: `package`, `vulnerability`, `build`, `image`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] deployment
    #   @return [::Grafeas::V1::DeploymentNote]
    #     A note describing something that can be deployed.
    #
    #     Note: The following fields are mutually exclusive: `deployment`, `vulnerability`, `build`, `image`, `package`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] discovery
    #   @return [::Grafeas::V1::DiscoveryNote]
    #     A note describing the initial analysis of a resource.
    #
    #     Note: The following fields are mutually exclusive: `discovery`, `vulnerability`, `build`, `image`, `package`, `deployment`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] attestation
    #   @return [::Grafeas::V1::AttestationNote]
    #     A note describing an attestation role.
    #
    #     Note: The following fields are mutually exclusive: `attestation`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] upgrade
    #   @return [::Grafeas::V1::UpgradeNote]
    #     A note describing available package upgrades.
    #
    #     Note: The following fields are mutually exclusive: `upgrade`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `compliance`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] compliance
    #   @return [::Grafeas::V1::ComplianceNote]
    #     A note describing a compliance check.
    #
    #     Note: The following fields are mutually exclusive: `compliance`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `dsse_attestation`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] dsse_attestation
    #   @return [::Grafeas::V1::DSSEAttestationNote]
    #     A note describing a dsse attestation note.
    #
    #     Note: The following fields are mutually exclusive: `dsse_attestation`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `vulnerability_assessment`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] vulnerability_assessment
    #   @return [::Grafeas::V1::VulnerabilityAssessmentNote]
    #     A note describing a vulnerability assessment.
    #
    #     Note: The following fields are mutually exclusive: `vulnerability_assessment`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `sbom_reference`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    # @!attribute [rw] sbom_reference
    #   @return [::Grafeas::V1::SBOMReferenceNote]
    #     A note describing an SBOM reference.
    #
    #     Note: The following fields are mutually exclusive: `sbom_reference`, `vulnerability`, `build`, `image`, `package`, `deployment`, `discovery`, `attestation`, `upgrade`, `compliance`, `dsse_attestation`, `vulnerability_assessment`. If a field in that set is populated, all other fields in the set will automatically be cleared.
    class Note
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to get an occurrence.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the occurrence in the form of
    #     `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
    class GetOccurrenceRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to list occurrences.
    # @!attribute [rw] parent
    #   @return [::String]
    #     The name of the project to list occurrences for in the form of
    #     `projects/[PROJECT_ID]`.
    # @!attribute [rw] filter
    #   @return [::String]
    #     The filter expression.
    # @!attribute [rw] page_size
    #   @return [::Integer]
    #     Number of occurrences to return in the list. Must be positive. Max allowed
    #     page size is 1000. If not specified, page size defaults to 20.
    # @!attribute [rw] page_token
    #   @return [::String]
    #     Token to provide to skip to a particular spot in the list.
    class ListOccurrencesRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Response for listing occurrences.
    # @!attribute [rw] occurrences
    #   @return [::Array<::Grafeas::V1::Occurrence>]
    #     The occurrences requested.
    # @!attribute [rw] next_page_token
    #   @return [::String]
    #     The next pagination token in the list response. It should be used as
    #     `page_token` for the following request. An empty value means no more
    #     results.
    class ListOccurrencesResponse
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to delete an occurrence.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the occurrence in the form of
    #     `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
    class DeleteOccurrenceRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to create a new occurrence.
    # @!attribute [rw] parent
    #   @return [::String]
    #     The name of the project in the form of `projects/[PROJECT_ID]`, under which
    #     the occurrence is to be created.
    # @!attribute [rw] occurrence
    #   @return [::Grafeas::V1::Occurrence]
    #     The occurrence to create.
    class CreateOccurrenceRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to update an occurrence.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the occurrence in the form of
    #     `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
    # @!attribute [rw] occurrence
    #   @return [::Grafeas::V1::Occurrence]
    #     The updated occurrence.
    # @!attribute [rw] update_mask
    #   @return [::Google::Protobuf::FieldMask]
    #     The fields to update.
    class UpdateOccurrenceRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to get a note.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the note in the form of
    #     `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
    class GetNoteRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to get the note to which the specified occurrence is attached.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the occurrence in the form of
    #     `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
    class GetOccurrenceNoteRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to list notes.
    # @!attribute [rw] parent
    #   @return [::String]
    #     The name of the project to list notes for in the form of
    #     `projects/[PROJECT_ID]`.
    # @!attribute [rw] filter
    #   @return [::String]
    #     The filter expression.
    # @!attribute [rw] page_size
    #   @return [::Integer]
    #     Number of notes to return in the list. Must be positive. Max allowed page
    #     size is 1000. If not specified, page size defaults to 20.
    # @!attribute [rw] page_token
    #   @return [::String]
    #     Token to provide to skip to a particular spot in the list.
    class ListNotesRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Response for listing notes.
    # @!attribute [rw] notes
    #   @return [::Array<::Grafeas::V1::Note>]
    #     The notes requested.
    # @!attribute [rw] next_page_token
    #   @return [::String]
    #     The next pagination token in the list response. It should be used as
    #     `page_token` for the following request. An empty value means no more
    #     results.
    class ListNotesResponse
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to delete a note.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the note in the form of
    #     `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
    class DeleteNoteRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to create a new note.
    # @!attribute [rw] parent
    #   @return [::String]
    #     The name of the project in the form of `projects/[PROJECT_ID]`, under which
    #     the note is to be created.
    # @!attribute [rw] note_id
    #   @return [::String]
    #     The ID to use for this note.
    # @!attribute [rw] note
    #   @return [::Grafeas::V1::Note]
    #     The note to create.
    class CreateNoteRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to update a note.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the note in the form of
    #     `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
    # @!attribute [rw] note
    #   @return [::Grafeas::V1::Note]
    #     The updated note.
    # @!attribute [rw] update_mask
    #   @return [::Google::Protobuf::FieldMask]
    #     The fields to update.
    class UpdateNoteRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to list occurrences for a note.
    # @!attribute [rw] name
    #   @return [::String]
    #     The name of the note to list occurrences for in the form of
    #     `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
    # @!attribute [rw] filter
    #   @return [::String]
    #     The filter expression.
    # @!attribute [rw] page_size
    #   @return [::Integer]
    #     Number of occurrences to return in the list.
    # @!attribute [rw] page_token
    #   @return [::String]
    #     Token to provide to skip to a particular spot in the list.
    class ListNoteOccurrencesRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Response for listing occurrences for a note.
    # @!attribute [rw] occurrences
    #   @return [::Array<::Grafeas::V1::Occurrence>]
    #     The occurrences attached to the specified note.
    # @!attribute [rw] next_page_token
    #   @return [::String]
    #     Token to provide to skip to a particular spot in the list.
    class ListNoteOccurrencesResponse
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to create notes in batch.
    # @!attribute [rw] parent
    #   @return [::String]
    #     The name of the project in the form of `projects/[PROJECT_ID]`, under which
    #     the notes are to be created.
    # @!attribute [rw] notes
    #   @return [::Google::Protobuf::Map{::String => ::Grafeas::V1::Note}]
    #     The notes to create. Max allowed length is 1000.
    class BatchCreateNotesRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods

      # @!attribute [rw] key
      #   @return [::String]
      # @!attribute [rw] value
      #   @return [::Grafeas::V1::Note]
      class NotesEntry
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end

    # Response for creating notes in batch.
    # @!attribute [rw] notes
    #   @return [::Array<::Grafeas::V1::Note>]
    #     The notes that were created.
    class BatchCreateNotesResponse
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Request to create occurrences in batch.
    # @!attribute [rw] parent
    #   @return [::String]
    #     The name of the project in the form of `projects/[PROJECT_ID]`, under which
    #     the occurrences are to be created.
    # @!attribute [rw] occurrences
    #   @return [::Array<::Grafeas::V1::Occurrence>]
    #     The occurrences to create. Max allowed length is 1000.
    class BatchCreateOccurrencesRequest
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end

    # Response for creating occurrences in batch.
    # @!attribute [rw] occurrences
    #   @return [::Array<::Grafeas::V1::Occurrence>]
    #     The occurrences that were created.
    class BatchCreateOccurrencesResponse
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
