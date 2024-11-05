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
    module EdgeContainer
      module V1
        # Long-running operation metadata for Edge Container API methods.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation was created.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation finished running.
        # @!attribute [rw] target
        #   @return [::String]
        #     Server-defined resource path for the target of the operation.
        # @!attribute [rw] verb
        #   @return [::String]
        #     The verb executed by the operation.
        # @!attribute [rw] status_message
        #   @return [::String]
        #     Human-readable status of the operation, if any.
        # @!attribute [rw] requested_cancellation
        #   @return [::Boolean]
        #     Identifies whether the user has requested cancellation of the operation.
        #     Operations that have successfully been cancelled have [Operation.error][]
        #     value with a {::Google::Rpc::Status#code google.rpc.Status.code} of 1,
        #     corresponding to `Code.CANCELLED`.
        # @!attribute [rw] api_version
        #   @return [::String]
        #     API version used to start the operation.
        # @!attribute [rw] warnings
        #   @return [::Array<::String>]
        #     Warnings that do not block the operation, but still hold relevant
        #     information for the end user to receive.
        # @!attribute [rw] status_reason
        #   @return [::Google::Cloud::EdgeContainer::V1::OperationMetadata::StatusReason]
        #     Machine-readable status of the operation, if any.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Indicates the reason for the status of the operation.
          module StatusReason
            # Reason unknown.
            STATUS_REASON_UNSPECIFIED = 0

            # The cluster upgrade is currently paused.
            UPGRADE_PAUSED = 1
          end
        end

        # Lists clusters in a location.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location, which owns this collection of clusters.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of resources to list.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from previous list request.
        #     A page token received from previous list request.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Only resources matching this filter will be listed.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Specifies the order in which resources will be listed.
        class ListClustersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List of clusters in a location.
        # @!attribute [rw] clusters
        #   @return [::Array<::Google::Cloud::EdgeContainer::V1::Cluster>]
        #     Clusters in the location.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListClustersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Gets a cluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the cluster.
        class GetClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Creates a cluster.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location where this cluster will be created.
        # @!attribute [rw] cluster_id
        #   @return [::String]
        #     Required. A client-specified unique identifier for the cluster.
        # @!attribute [rw] cluster
        #   @return [::Google::Cloud::EdgeContainer::V1::Cluster]
        #     Required. The cluster to create.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class CreateClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Updates a cluster.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Field mask is used to specify the fields to be overwritten in the
        #     Cluster resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] cluster
        #   @return [::Google::Cloud::EdgeContainer::V1::Cluster]
        #     The updated cluster.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters.
        #     A random UUID is recommended.
        #     This request is only idempotent if `request_id` is provided.
        class UpdateClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Upgrades a cluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the cluster.
        # @!attribute [rw] target_version
        #   @return [::String]
        #     Required. The version the cluster is going to be upgraded to.
        # @!attribute [rw] schedule
        #   @return [::Google::Cloud::EdgeContainer::V1::UpgradeClusterRequest::Schedule]
        #     The schedule for the upgrade.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class UpgradeClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents the schedule about when the cluster is going to be upgraded.
          module Schedule
            # Unspecified. The default is to upgrade the cluster immediately which is
            # the only option today.
            SCHEDULE_UNSPECIFIED = 0

            # The cluster is going to be upgraded immediately after receiving the
            # request.
            IMMEDIATELY = 1
          end
        end

        # Deletes a cluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the cluster.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class DeleteClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Generates an access token for a cluster.
        # @!attribute [rw] cluster
        #   @return [::String]
        #     Required. The resource name of the cluster.
        class GenerateAccessTokenRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An access token for a cluster.
        # @!attribute [r] access_token
        #   @return [::String]
        #     Output only. Access token to authenticate to k8s api-server.
        # @!attribute [r] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp at which the token will expire.
        class GenerateAccessTokenResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Generates an offline credential(offline) for a cluster.
        # @!attribute [rw] cluster
        #   @return [::String]
        #     Required. The resource name of the cluster.
        class GenerateOfflineCredentialRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An offline credential for a cluster.
        # @!attribute [r] client_certificate
        #   @return [::String]
        #     Output only. Client certificate to authenticate to k8s api-server.
        # @!attribute [r] client_key
        #   @return [::String]
        #     Output only. Client private key to authenticate to k8s api-server.
        # @!attribute [r] user_id
        #   @return [::String]
        #     Output only. Client's identity.
        # @!attribute [r] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp at which this credential will expire.
        class GenerateOfflineCredentialResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Lists node pools in a cluster.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent cluster, which owns this collection of node pools.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of resources to list.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from previous list request.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Only resources matching this filter will be listed.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Specifies the order in which resources will be listed.
        class ListNodePoolsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List of node pools in a cluster.
        # @!attribute [rw] node_pools
        #   @return [::Array<::Google::Cloud::EdgeContainer::V1::NodePool>]
        #     Node pools in the cluster.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListNodePoolsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Gets a node pool.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the node pool.
        class GetNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Creates a node pool.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent cluster where this node pool will be created.
        # @!attribute [rw] node_pool_id
        #   @return [::String]
        #     Required. A client-specified unique identifier for the node pool.
        # @!attribute [rw] node_pool
        #   @return [::Google::Cloud::EdgeContainer::V1::NodePool]
        #     Required. The node pool to create.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class CreateNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Updates a node pool.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Field mask is used to specify the fields to be overwritten in the
        #     NodePool resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] node_pool
        #   @return [::Google::Cloud::EdgeContainer::V1::NodePool]
        #     The updated node pool.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class UpdateNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Deletes a node pool.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the node pool.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class DeleteNodePoolRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Lists machines in a site.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent site, which owns this collection of machines.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of resources to list.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from previous list request.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Only resources matching this filter will be listed.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Specifies the order in which resources will be listed.
        class ListMachinesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List of machines in a site.
        # @!attribute [rw] machines
        #   @return [::Array<::Google::Cloud::EdgeContainer::V1::Machine>]
        #     Machines in the site.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListMachinesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Gets a machine.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the machine.
        class GetMachineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Lists VPN connections.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location, which owns this collection of VPN
        #     connections.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of resources to list.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from previous list request.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Only resources matching this filter will be listed.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Specifies the order in which resources will be listed.
        class ListVpnConnectionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List of VPN connections in a location.
        # @!attribute [rw] vpn_connections
        #   @return [::Array<::Google::Cloud::EdgeContainer::V1::VpnConnection>]
        #     VpnConnections in the location.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListVpnConnectionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Gets a VPN connection.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the vpn connection.
        class GetVpnConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Creates a VPN connection.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location where this vpn connection will be created.
        # @!attribute [rw] vpn_connection_id
        #   @return [::String]
        #     Required. The VPN connection identifier.
        # @!attribute [rw] vpn_connection
        #   @return [::Google::Cloud::EdgeContainer::V1::VpnConnection]
        #     Required. The VPN connection to create.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class CreateVpnConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Deletes a vpn connection.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the vpn connection.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     A unique identifier for this request. Restricted to 36 ASCII characters. A
        #     random UUID is recommended. This request is only idempotent if
        #     `request_id` is provided.
        class DeleteVpnConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Gets the server config.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name (project and location) of the server config to get,
        #     specified in the format `projects/*/locations/*`.
        class GetServerConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
