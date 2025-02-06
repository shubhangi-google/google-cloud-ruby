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
    module Parallelstore
      module V1beta
        # A Parallelstore instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the instance, in the format
        #     `projects/{project}/locations/{location}/instances/{instance_id}`.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the instance. 2048 characters or less.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Parallelstore::V1beta::Instance::State]
        #     Output only. The instance state.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the instance was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the instance was updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Cloud Labels are a flexible and lightweight mechanism for
        #     organizing cloud resources into groups that reflect a customer's
        #     organizational needs and deployment strategies. See
        #     https://cloud.google.com/resource-manager/docs/labels-overview for details.
        # @!attribute [rw] capacity_gib
        #   @return [::Integer]
        #     Required. Immutable. The instance's storage capacity in Gibibytes (GiB).
        #     Allowed values are between 12000 and 100000, in multiples of 4000; e.g.,
        #     12000, 16000, 20000, ...
        # @!attribute [r] daos_version
        #   @return [::String]
        #     Output only. The version of DAOS software running in the instance.
        # @!attribute [r] access_points
        #   @return [::Array<::String>]
        #     Output only. A list of IPv4 addresses used for client side configuration.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. Immutable. The name of the Compute Engine
        #     [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the
        #     instance is connected.
        # @!attribute [rw] reserved_ip_range
        #   @return [::String]
        #     Optional. Immutable. The ID of the IP address range being used by the
        #     instance's VPC network. See [Configure a VPC
        #     network](https://cloud.google.com/parallelstore/docs/vpc#create_and_configure_the_vpc).
        #     If no ID is provided, all ranges are considered.
        # @!attribute [r] effective_reserved_ip_range
        #   @return [::String]
        #     Output only. Immutable. The ID of the IP address range being used by the
        #     instance's VPC network. This field is populated by the service and contains
        #     the value currently used by the service.
        # @!attribute [rw] file_stripe_level
        #   @return [::Google::Cloud::Parallelstore::V1beta::FileStripeLevel]
        #     Optional. Stripe level for files. Allowed values are:
        #
        #     * `FILE_STRIPE_LEVEL_MIN`: offers the best performance for small size
        #       files.
        #     * `FILE_STRIPE_LEVEL_BALANCED`: balances performance for workloads
        #       involving a mix of small and large files.
        #     * `FILE_STRIPE_LEVEL_MAX`: higher throughput performance for larger files.
        # @!attribute [rw] directory_stripe_level
        #   @return [::Google::Cloud::Parallelstore::V1beta::DirectoryStripeLevel]
        #     Optional. Stripe level for directories. Allowed values are:
        #
        #     * `DIRECTORY_STRIPE_LEVEL_MIN`: recommended when directories contain a
        #       small number of files.
        #     * `DIRECTORY_STRIPE_LEVEL_BALANCED`: balances performance for workloads
        #       involving a mix of small and large directories.
        #     * `DIRECTORY_STRIPE_LEVEL_MAX`: recommended for directories with a large
        #       number of files.
        # @!attribute [rw] deployment_type
        #   @return [::Google::Cloud::Parallelstore::V1beta::DeploymentType]
        #     Optional. The deployment type of the instance. Allowed values are:
        #
        #     * `SCRATCH`: the instance is a scratch instance.
        #     * `PERSISTENT`: the instance is a persistent instance.
        class Instance
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

          # The possible states of a Parallelstore instance.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # The instance is being created.
            CREATING = 1

            # The instance is available for use.
            ACTIVE = 2

            # The instance is being deleted.
            DELETING = 3

            # The instance is not usable.
            FAILED = 4

            # The instance is being upgraded.
            UPGRADING = 5
          end
        end

        # List instances request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location for which to retrieve instance
        #     information, in the format `projects/{project_id}/locations/{location}`.
        #
        #     To retrieve instance information for all locations, use "-" as the value of
        #     `{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, the server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results.
        class ListInstancesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response from
        # {::Google::Cloud::Parallelstore::V1beta::Parallelstore::Client#list_instances ListInstances}.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::Parallelstore::V1beta::Instance>]
        #     The list of Parallelstore instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListInstancesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Get an instance's details.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The instance resource name, in the format
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`.
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Create a new Parallelstore instance.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The instance's project and location, in the format
        #     `projects/{project}/locations/{location}`.
        #     Locations map to Google Cloud zones; for example, `us-west1-b`.
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. The name of the Parallelstore instance.
        #
        #     * Must contain only lowercase letters, numbers, and hyphens.
        #     * Must start with a letter.
        #     * Must be between 1-63 characters.
        #     * Must end with a number or a letter.
        #     * Must be unique within the customer project / location
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Parallelstore::V1beta::Instance]
        #     Required. The instance to create.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Update an instance.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. Field mask is used to specify the
        #     fields to be overwritten in the Instance resource by the update. At least
        #     one path must be supplied in this field. The fields specified in the
        #     update_mask are relative to the resource, not the full request.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Parallelstore::V1beta::Instance]
        #     Required. The instance to update.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Delete an instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Long-running operation metadata.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have been cancelled successfully
        #     have {::Google::Longrunning::Operation#error Operation.error} value with a
        #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
        #     `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cloud Storage as the source of a data transfer.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. URI to a Cloud Storage bucket in the format:
        #     `gs://<bucket_name>/<path_inside_bucket>`. The path inside the bucket is
        #     optional.
        class SourceGcsBucket
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cloud Storage as the destination of a data transfer.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. URI to a Cloud Storage bucket in the format:
        #     `gs://<bucket_name>/<path_inside_bucket>`. The path inside the bucket is
        #     optional.
        class DestinationGcsBucket
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Parallelstore as the source of a data transfer.
        # @!attribute [rw] path
        #   @return [::String]
        #     Optional. Root directory path to the Paralellstore filesystem, starting
        #     with `/`. Defaults to `/` if unset.
        class SourceParallelstore
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Parallelstore as the destination of a data transfer.
        # @!attribute [rw] path
        #   @return [::String]
        #     Optional. Root directory path to the Paralellstore filesystem, starting
        #     with `/`. Defaults to `/` if unset.
        class DestinationParallelstore
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Import data from Cloud Storage into a Parallelstore instance.
        # @!attribute [rw] source_gcs_bucket
        #   @return [::Google::Cloud::Parallelstore::V1beta::SourceGcsBucket]
        #     The Cloud Storage source bucket and, optionally, path inside the bucket.
        # @!attribute [rw] destination_parallelstore
        #   @return [::Google::Cloud::Parallelstore::V1beta::DestinationParallelstore]
        #     Parallelstore destination.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Optional. User-specified service account credentials to be used when
        #     performing the transfer.
        #
        #     Use one of the following formats:
        #
        #     * `{EMAIL_ADDRESS_OR_UNIQUE_ID}`
        #     * `projects/{PROJECT_ID_OR_NUMBER}/serviceAccounts/{EMAIL_ADDRESS_OR_UNIQUE_ID}`
        #     * `projects/-/serviceAccounts/{EMAIL_ADDRESS_OR_UNIQUE_ID}`
        #
        #     If unspecified, the Parallelstore service agent is used:
        #     `service-<PROJECT_NUMBER>@gcp-sa-parallelstore.iam.gserviceaccount.com`
        class ImportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Export data from Parallelstore to Cloud Storage.
        # @!attribute [rw] source_parallelstore
        #   @return [::Google::Cloud::Parallelstore::V1beta::SourceParallelstore]
        #     Parallelstore source.
        # @!attribute [rw] destination_gcs_bucket
        #   @return [::Google::Cloud::Parallelstore::V1beta::DestinationGcsBucket]
        #     Cloud Storage destination.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Optional. User-specified Service Account (SA) credentials to be used when
        #     performing the transfer.
        #     Use one of the following formats:
        #
        #     * `{EMAIL_ADDRESS_OR_UNIQUE_ID}`
        #     * `projects/{PROJECT_ID_OR_NUMBER}/serviceAccounts/{EMAIL_ADDRESS_OR_UNIQUE_ID}`
        #     * `projects/-/serviceAccounts/{EMAIL_ADDRESS_OR_UNIQUE_ID}`
        #
        #     If unspecified, the Parallelstore service agent is used:
        #     `service-<PROJECT_NUMBER>@gcp-sa-parallelstore.iam.gserviceaccount.com`
        class ExportDataRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response to a request to import data to Parallelstore.
        class ImportDataResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the data import operation.
        # @!attribute [rw] operation_metadata
        #   @return [::Google::Cloud::Parallelstore::V1beta::TransferOperationMetadata]
        #     Data transfer operation metadata.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have {::Google::Longrunning::Operation#error Operation.error} value with a
        #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
        #     `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        class ImportDataMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response to a request to export data from Parallelstore.
        class ExportDataResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the data export operation.
        # @!attribute [rw] operation_metadata
        #   @return [::Google::Cloud::Parallelstore::V1beta::TransferOperationMetadata]
        #     Data transfer operation metadata.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have {::Google::Longrunning::Operation#error Operation.error} value with a
        #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
        #     `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        class ExportDataMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Long-running operation metadata related to a data transfer.
        # @!attribute [r] source_parallelstore
        #   @return [::Google::Cloud::Parallelstore::V1beta::SourceParallelstore]
        #     Output only. Parallelstore source.
        #
        #     Note: The following fields are mutually exclusive: `source_parallelstore`, `source_gcs_bucket`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] source_gcs_bucket
        #   @return [::Google::Cloud::Parallelstore::V1beta::SourceGcsBucket]
        #     Output only. Cloud Storage source.
        #
        #     Note: The following fields are mutually exclusive: `source_gcs_bucket`, `source_parallelstore`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] destination_gcs_bucket
        #   @return [::Google::Cloud::Parallelstore::V1beta::DestinationGcsBucket]
        #     Output only. Cloud Storage destination.
        #
        #     Note: The following fields are mutually exclusive: `destination_gcs_bucket`, `destination_parallelstore`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] destination_parallelstore
        #   @return [::Google::Cloud::Parallelstore::V1beta::DestinationParallelstore]
        #     Output only. Parallelstore destination.
        #
        #     Note: The following fields are mutually exclusive: `destination_parallelstore`, `destination_gcs_bucket`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] counters
        #   @return [::Google::Cloud::Parallelstore::V1beta::TransferCounters]
        #     Output only. The progress of the transfer operation.
        # @!attribute [r] transfer_type
        #   @return [::Google::Cloud::Parallelstore::V1beta::TransferType]
        #     Output only. The type of transfer occurring.
        class TransferOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A collection of counters that report the progress of a transfer operation.
        # @!attribute [rw] objects_found
        #   @return [::Integer]
        #     Objects found in the data source that are scheduled to be transferred,
        #     excluding any that are filtered based on object conditions or skipped due
        #     to sync.
        # @!attribute [rw] bytes_found
        #   @return [::Integer]
        #     Bytes found in the data source that are scheduled to be transferred,
        #     excluding any that are filtered based on object conditions or skipped due
        #     to sync.
        # @!attribute [rw] objects_skipped
        #   @return [::Integer]
        #     Objects in the data source that are not transferred because they already
        #     exist in the data destination.
        # @!attribute [rw] bytes_skipped
        #   @return [::Integer]
        #     Bytes in the data source that are not transferred because they already
        #     exist in the data destination.
        # @!attribute [rw] objects_copied
        #   @return [::Integer]
        #     Objects that are copied to the data destination.
        # @!attribute [rw] bytes_copied
        #   @return [::Integer]
        #     Bytes that are copied to the data destination.
        class TransferCounters
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Type of transfer that occurred.
        module TransferType
          # Zero is an illegal value.
          TRANSFER_TYPE_UNSPECIFIED = 0

          # Imports to Parallelstore.
          IMPORT = 1

          # Exports from Parallelstore.
          EXPORT = 2
        end

        # Represents the striping options for files.
        module FileStripeLevel
          # If not set, FileStripeLevel will default to FILE_STRIPE_LEVEL_BALANCED
          FILE_STRIPE_LEVEL_UNSPECIFIED = 0

          # Minimum file striping
          FILE_STRIPE_LEVEL_MIN = 1

          # Medium file striping
          FILE_STRIPE_LEVEL_BALANCED = 2

          # Maximum file striping
          FILE_STRIPE_LEVEL_MAX = 3
        end

        # Represents the striping options for directories.
        module DirectoryStripeLevel
          # If not set, DirectoryStripeLevel will default to DIRECTORY_STRIPE_LEVEL_MAX
          DIRECTORY_STRIPE_LEVEL_UNSPECIFIED = 0

          # Minimum directory striping
          DIRECTORY_STRIPE_LEVEL_MIN = 1

          # Medium directory striping
          DIRECTORY_STRIPE_LEVEL_BALANCED = 2

          # Maximum directory striping
          DIRECTORY_STRIPE_LEVEL_MAX = 3
        end

        # Represents the deployment type for the instance.
        module DeploymentType
          # Default Deployment Type
          # It is equivalent to SCRATCH
          DEPLOYMENT_TYPE_UNSPECIFIED = 0

          # Scratch
          SCRATCH = 1

          # Persistent
          PERSISTENT = 2
        end
      end
    end
  end
end
