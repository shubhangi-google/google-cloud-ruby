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
    module AIPlatform
      module V1
        # Represents long-lasting resources that are dedicated to users to runs custom
        # workloads.
        # A PersistentResource can have multiple node pools and each node
        # pool can have its own machine spec.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Resource name of a PersistentResource.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. The display name of the PersistentResource.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] resource_pools
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ResourcePool>]
        #     Required. The spec of the pools of different resources.
        # @!attribute [r] state
        #   @return [::Google::Cloud::AIPlatform::V1::PersistentResource::State]
        #     Output only. The detailed state of a Study.
        # @!attribute [r] error
        #   @return [::Google::Rpc::Status]
        #     Output only. Only populated when persistent resource's state is `STOPPING`
        #     or `ERROR`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the PersistentResource was created.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the PersistentResource for the first time entered
        #     the `RUNNING` state.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the PersistentResource was most recently updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels with user-defined metadata to organize
        #     PersistentResource.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. The full name of the Compute Engine
        #     [network](/compute/docs/networks-and-firewalls#networks) to peered with
        #     Vertex AI to host the persistent resources.
        #     For example, `projects/12345/global/networks/myVPC`.
        #     [Format](/compute/docs/reference/rest/v1/networks/insert)
        #     is of the form `projects/{project}/global/networks/{network}`.
        #     Where \\{project} is a project number, as in `12345`, and \\{network} is a
        #     network name.
        #
        #     To specify this field, you must have already [configured VPC Network
        #     Peering for Vertex
        #     AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering).
        #
        #     If this field is left unspecified, the resources aren't peered with any
        #     network.
        # @!attribute [rw] psc_interface_config
        #   @return [::Google::Cloud::AIPlatform::V1::PscInterfaceConfig]
        #     Optional. Configuration for PSC-I for PersistentResource.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Optional. Customer-managed encryption key spec for a PersistentResource.
        #     If set, this PersistentResource and all sub-resources of this
        #     PersistentResource will be secured by this key.
        # @!attribute [rw] resource_runtime_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ResourceRuntimeSpec]
        #     Optional. Persistent Resource runtime spec.
        #     For example, used for Ray cluster configuration.
        # @!attribute [r] resource_runtime
        #   @return [::Google::Cloud::AIPlatform::V1::ResourceRuntime]
        #     Output only. Runtime information of the Persistent Resource.
        # @!attribute [rw] reserved_ip_ranges
        #   @return [::Array<::String>]
        #     Optional. A list of names for the reserved IP ranges under the VPC network
        #     that can be used for this persistent resource.
        #
        #     If set, we will deploy the persistent resource within the provided IP
        #     ranges. Otherwise, the persistent resource is deployed to any IP
        #     ranges under the provided VPC network.
        #
        #     Example: ['vertex-ai-ip-range'].
        class PersistentResource
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

          # Describes the PersistentResource state.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # The PROVISIONING state indicates the persistent resources is being
            # created.
            PROVISIONING = 1

            # The RUNNING state indicates the persistent resource is healthy and fully
            # usable.
            RUNNING = 3

            # The STOPPING state indicates the persistent resource is being deleted.
            STOPPING = 4

            # The ERROR state indicates the persistent resource may be unusable.
            # Details can be found in the `error` field.
            ERROR = 5

            # The REBOOTING state indicates the persistent resource is being rebooted
            # (PR is not available right now but is expected to be ready again later).
            REBOOTING = 6

            # The UPDATING state indicates the persistent resource is being updated.
            UPDATING = 7
          end
        end

        # Represents the spec of a group of resources of the same type,
        # for example machine type, disk, and accelerators, in a PersistentResource.
        # @!attribute [rw] id
        #   @return [::String]
        #     Immutable. The unique ID in a PersistentResource for referring to this
        #     resource pool. User can specify it if necessary. Otherwise, it's generated
        #     automatically.
        # @!attribute [rw] machine_spec
        #   @return [::Google::Cloud::AIPlatform::V1::MachineSpec]
        #     Required. Immutable. The specification of a single machine.
        # @!attribute [rw] replica_count
        #   @return [::Integer]
        #     Optional. The total number of machines to use for this resource pool.
        # @!attribute [rw] disk_spec
        #   @return [::Google::Cloud::AIPlatform::V1::DiskSpec]
        #     Optional. Disk spec for the machine in this node pool.
        # @!attribute [r] used_replica_count
        #   @return [::Integer]
        #     Output only. The number of machines currently in use by training jobs for
        #     this resource pool. Will replace idle_replica_count.
        # @!attribute [rw] autoscaling_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ResourcePool::AutoscalingSpec]
        #     Optional. Optional spec to configure GKE or Ray-on-Vertex autoscaling
        class ResourcePool
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The min/max number of replicas allowed if enabling autoscaling
          # @!attribute [rw] min_replica_count
          #   @return [::Integer]
          #     Optional. min replicas in the node pool,
          #     must be ≤ replica_count and < max_replica_count or will throw error.
          #     For autoscaling enabled Ray-on-Vertex, we allow min_replica_count of a
          #     resource_pool to be 0 to match the OSS Ray
          #     behavior(https://docs.ray.io/en/latest/cluster/vms/user-guides/configuring-autoscaling.html#cluster-config-parameters).
          #     As for Persistent Resource, the min_replica_count must be > 0, we added
          #     a corresponding validation inside
          #     CreatePersistentResourceRequestValidator.java.
          # @!attribute [rw] max_replica_count
          #   @return [::Integer]
          #     Optional. max replicas in the node pool,
          #     must be ≥ replica_count and > min_replica_count or will throw error
          class AutoscalingSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Configuration for the runtime on a PersistentResource instance, including
        # but not limited to:
        #
        # * Service accounts used to run the workloads.
        # * Whether to make it a dedicated Ray Cluster.
        # @!attribute [rw] service_account_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ServiceAccountSpec]
        #     Optional. Configure the use of workload identity on the PersistentResource
        # @!attribute [rw] ray_spec
        #   @return [::Google::Cloud::AIPlatform::V1::RaySpec]
        #     Optional. Ray cluster configuration.
        #     Required when creating a dedicated RayCluster on the PersistentResource.
        class ResourceRuntimeSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration information for the Ray cluster.
        # For experimental launch, Ray cluster creation and Persistent
        # cluster creation are 1:1 mapping: We will provision all the nodes within the
        # Persistent cluster as Ray nodes.
        # @!attribute [rw] image_uri
        #   @return [::String]
        #     Optional. Default image for user to choose a preferred ML framework
        #     (for example, TensorFlow or Pytorch) by choosing from [Vertex prebuilt
        #     images](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers).
        #     Either this or the resource_pool_images is required. Use this field if
        #     you need all the resource pools to have the same Ray image. Otherwise, use
        #     the \\{@code resource_pool_images} field.
        # @!attribute [rw] resource_pool_images
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Required if image_uri isn't set. A map of resource_pool_id to
        #     prebuild Ray image if user need to use different images for different
        #     head/worker pools. This map needs to cover all the resource pool ids.
        #     Example:
        #     {
        #       "ray_head_node_pool": "head image"
        #       "ray_worker_node_pool1": "worker image"
        #       "ray_worker_node_pool2": "another worker image"
        #     }
        # @!attribute [rw] head_node_resource_pool_id
        #   @return [::String]
        #     Optional. This will be used to indicate which resource pool will serve as
        #     the Ray head node(the first node within that pool). Will use the machine
        #     from the first workerpool as the head node by default if this field isn't
        #     set.
        # @!attribute [rw] ray_metric_spec
        #   @return [::Google::Cloud::AIPlatform::V1::RayMetricSpec]
        #     Optional. Ray metrics configurations.
        # @!attribute [rw] ray_logs_spec
        #   @return [::Google::Cloud::AIPlatform::V1::RayLogsSpec]
        #     Optional. OSS Ray logging configurations.
        class RaySpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ResourcePoolImagesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Persistent Cluster runtime information as output
        # @!attribute [r] access_uris
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Output only. URIs for user to connect to the Cluster.
        #     Example:
        #     {
        #       "RAY_HEAD_NODE_INTERNAL_IP": "head-node-IP:10001"
        #       "RAY_DASHBOARD_URI": "ray-dashboard-address:8888"
        #     }
        class ResourceRuntime
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AccessUrisEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Configuration for the use of custom service account to run the workloads.
        # @!attribute [rw] enable_custom_service_account
        #   @return [::Boolean]
        #     Required. If true, custom user-managed service account is enforced to run
        #     any workloads (for example, Vertex Jobs) on the resource. Otherwise, uses
        #     the [Vertex AI Custom Code Service
        #     Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents).
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Optional. Required when all below conditions are met
        #      * `enable_custom_service_account` is true;
        #      * any runtime is specified via `ResourceRuntimeSpec` on creation time,
        #        for example, Ray
        #
        #     The users must have `iam.serviceAccounts.actAs` permission on this service
        #     account and then the specified runtime containers will run as it.
        #
        #     Do not set this field if you want to submit jobs using custom service
        #     account to this PersistentResource after creation, but only specify the
        #     `service_account` inside the job.
        class ServiceAccountSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for the Ray metrics.
        # @!attribute [rw] disabled
        #   @return [::Boolean]
        #     Optional. Flag to disable the Ray metrics collection.
        class RayMetricSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for the Ray OSS Logs.
        # @!attribute [rw] disabled
        #   @return [::Boolean]
        #     Optional. Flag to disable the export of Ray OSS logs to Cloud Logging.
        class RayLogsSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
