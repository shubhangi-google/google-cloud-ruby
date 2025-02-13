# frozen_string_literal: true

# Copyright 2022 Google LLC
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
        # Models are deployed into it, and afterwards Endpoint is called to obtain
        # predictions and explanations.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the Endpoint.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the Endpoint.
        #     The name can be up to 128 characters long and can consist of any UTF-8
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the Endpoint.
        # @!attribute [r] deployed_models
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::DeployedModel>]
        #     Output only. The models deployed in this Endpoint.
        #     To add or remove DeployedModels use
        #     {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model EndpointService.DeployModel}
        #     and
        #     {::Google::Cloud::AIPlatform::V1::EndpointService::Client#undeploy_model EndpointService.UndeployModel}
        #     respectively.
        # @!attribute [rw] traffic_split
        #   @return [::Google::Protobuf::Map{::String => ::Integer}]
        #     A map from a DeployedModel's ID to the percentage of this Endpoint's
        #     traffic that should be forwarded to that DeployedModel.
        #
        #     If a DeployedModel's ID is not listed in this map, then it receives no
        #     traffic.
        #
        #     The traffic percentage values must add up to 100, or map must be empty if
        #     the Endpoint is to not accept any traffic at a moment.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Used to perform consistent read-modify-write updates. If not set, a blind
        #     "overwrite" update happens.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels with user-defined metadata to organize your Endpoints.
        #
        #     Label keys and values can be no longer than 64 characters
        #     (Unicode codepoints), can only contain lowercase letters, numeric
        #     characters, underscores and dashes. International characters are allowed.
        #
        #     See https://goo.gl/xmQnxf for more information and examples of labels.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this Endpoint was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this Endpoint was last updated.
        # @!attribute [rw] encryption_spec
        #   @return [::Google::Cloud::AIPlatform::V1::EncryptionSpec]
        #     Customer-managed encryption key spec for an Endpoint. If set, this
        #     Endpoint and all sub-resources of this Endpoint will be secured by
        #     this key.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. The full name of the Google Compute Engine
        #     [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
        #     to which the Endpoint should be peered.
        #
        #     Private services access must already be configured for the network. If left
        #     unspecified, the Endpoint is not peered with any network.
        #
        #     Only one of the fields,
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#network network} or
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#enable_private_service_connect enable_private_service_connect},
        #     can be set.
        #
        #     [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert):
        #     `projects/{project}/global/networks/{network}`.
        #     Where `{project}` is a project number, as in `12345`, and `{network}` is
        #     network name.
        # @!attribute [rw] enable_private_service_connect
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Boolean]
        #     Deprecated: If true, expose the Endpoint via private service connect.
        #
        #     Only one of the fields,
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#network network} or
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#enable_private_service_connect enable_private_service_connect},
        #     can be set.
        # @!attribute [rw] private_service_connect_config
        #   @return [::Google::Cloud::AIPlatform::V1::PrivateServiceConnectConfig]
        #     Optional. Configuration for private service connect.
        #
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#network network} and
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#private_service_connect_config private_service_connect_config}
        #     are mutually exclusive.
        # @!attribute [r] model_deployment_monitoring_job
        #   @return [::String]
        #     Output only. Resource name of the Model Monitoring job associated with this
        #     Endpoint if monitoring is enabled by
        #     {::Google::Cloud::AIPlatform::V1::JobService::Client#create_model_deployment_monitoring_job JobService.CreateModelDeploymentMonitoringJob}.
        #     Format:
        #     `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
        # @!attribute [rw] predict_request_response_logging_config
        #   @return [::Google::Cloud::AIPlatform::V1::PredictRequestResponseLoggingConfig]
        #     Configures the request-response logging for online prediction.
        # @!attribute [rw] dedicated_endpoint_enabled
        #   @return [::Boolean]
        #     If true, the endpoint will be exposed through a dedicated
        #     DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS
        #     will be isolated from other users' traffic and will have better performance
        #     and reliability.
        #     Note: Once you enabled dedicated endpoint, you won't be able to send
        #     request to the shared DNS \\{region}-aiplatform.googleapis.com. The
        #     limitation will be removed soon.
        # @!attribute [r] dedicated_endpoint_dns
        #   @return [::String]
        #     Output only. DNS of the dedicated endpoint. Will only be populated if
        #     dedicated_endpoint_enabled is true.
        #     Format:
        #     `https://{endpoint_id}.{region}-{project_number}.prediction.vertexai.goog`.
        # @!attribute [rw] client_connection_config
        #   @return [::Google::Cloud::AIPlatform::V1::ClientConnectionConfig]
        #     Configurations that are applied to the endpoint for online prediction.
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. Reserved for future use.
        class Endpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Integer]
          class TrafficSplitEntry
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

        # A deployment of a Model. Endpoints contain one or more DeployedModels.
        # @!attribute [rw] dedicated_resources
        #   @return [::Google::Cloud::AIPlatform::V1::DedicatedResources]
        #     A description of resources that are dedicated to the DeployedModel, and
        #     that need a higher degree of manual configuration.
        #
        #     Note: The following fields are mutually exclusive: `dedicated_resources`, `automatic_resources`, `shared_resources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] automatic_resources
        #   @return [::Google::Cloud::AIPlatform::V1::AutomaticResources]
        #     A description of resources that to large degree are decided by Vertex
        #     AI, and require only a modest additional configuration.
        #
        #     Note: The following fields are mutually exclusive: `automatic_resources`, `dedicated_resources`, `shared_resources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] shared_resources
        #   @return [::String]
        #     The resource name of the shared DeploymentResourcePool to deploy on.
        #     Format:
        #     `projects/{project}/locations/{location}/deploymentResourcePools/{deployment_resource_pool}`
        #
        #     Note: The following fields are mutually exclusive: `shared_resources`, `dedicated_resources`, `automatic_resources`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] id
        #   @return [::String]
        #     Immutable. The ID of the DeployedModel. If not provided upon deployment,
        #     Vertex AI will generate a value for this ID.
        #
        #     This value should be 1-10 characters, and valid characters are `/[0-9]/`.
        # @!attribute [rw] model
        #   @return [::String]
        #     Required. The resource name of the Model that this is the deployment of.
        #     Note that the Model may be in a different location than the DeployedModel's
        #     Endpoint.
        #
        #     The resource name may contain version id or version alias to specify the
        #     version.
        #      Example: `projects/{project}/locations/{location}/models/{model}@2`
        #                  or
        #                `projects/{project}/locations/{location}/models/{model}@golden`
        #     if no version is specified, the default version will be deployed.
        # @!attribute [r] model_version_id
        #   @return [::String]
        #     Output only. The version ID of the model that is deployed.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the DeployedModel. If not provided upon creation,
        #     the Model's display_name is used.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when the DeployedModel was created.
        # @!attribute [rw] explanation_spec
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationSpec]
        #     Explanation configuration for this DeployedModel.
        #
        #     When deploying a Model using
        #     {::Google::Cloud::AIPlatform::V1::EndpointService::Client#deploy_model EndpointService.DeployModel},
        #     this value overrides the value of
        #     {::Google::Cloud::AIPlatform::V1::Model#explanation_spec Model.explanation_spec}.
        #     All fields of
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec}
        #     are optional in the request. If a field of
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec}
        #     is not populated, the value of the same field of
        #     {::Google::Cloud::AIPlatform::V1::Model#explanation_spec Model.explanation_spec}
        #     is inherited. If the corresponding
        #     {::Google::Cloud::AIPlatform::V1::Model#explanation_spec Model.explanation_spec}
        #     is not populated, all fields of the
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec}
        #     will be used for the explanation configuration.
        # @!attribute [rw] disable_explanations
        #   @return [::Boolean]
        #     If true, deploy the model without explainable feature, regardless the
        #     existence of
        #     {::Google::Cloud::AIPlatform::V1::Model#explanation_spec Model.explanation_spec}
        #     or
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec}.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     The service account that the DeployedModel's container runs as. Specify the
        #     email address of the service account. If this service account is not
        #     specified, the container runs as a service account that doesn't have access
        #     to the resource project.
        #
        #     Users deploying the Model must have the `iam.serviceAccounts.actAs`
        #     permission on this service account.
        # @!attribute [rw] disable_container_logging
        #   @return [::Boolean]
        #     For custom-trained Models and AutoML Tabular Models, the container of the
        #     DeployedModel instances will send `stderr` and `stdout` streams to
        #     Cloud Logging by default. Please note that the logs incur cost,
        #     which are subject to [Cloud Logging
        #     pricing](https://cloud.google.com/logging/pricing).
        #
        #     User can disable container logging by setting this flag to true.
        # @!attribute [rw] enable_access_logging
        #   @return [::Boolean]
        #     If true, online prediction access logs are sent to Cloud
        #     Logging.
        #     These logs are like standard server access logs, containing
        #     information like timestamp and latency for each prediction request.
        #
        #     Note that logs may incur a cost, especially if your project
        #     receives prediction requests at a high queries per second rate (QPS).
        #     Estimate your costs before enabling this option.
        # @!attribute [r] private_endpoints
        #   @return [::Google::Cloud::AIPlatform::V1::PrivateEndpoints]
        #     Output only. Provide paths for users to send predict/explain/health
        #     requests directly to the deployed model services running on Cloud via
        #     private services access. This field is populated if
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#network network} is configured.
        # @!attribute [rw] faster_deployment_config
        #   @return [::Google::Cloud::AIPlatform::V1::FasterDeploymentConfig]
        #     Configuration for faster model deployment.
        # @!attribute [r] status
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedModel::Status]
        #     Output only. Runtime status of the deployed model.
        # @!attribute [rw] system_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     System labels to apply to Model Garden deployments.
        #     System labels are managed by Google for internal use only.
        # @!attribute [rw] speculative_decoding_spec
        #   @return [::Google::Cloud::AIPlatform::V1::SpeculativeDecodingSpec]
        #     Optional. Spec for configuring speculative decoding.
        class DeployedModel
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Runtime status of the deployed model.
          # @!attribute [r] message
          #   @return [::String]
          #     Output only. The latest deployed model's status message (if any).
          # @!attribute [r] last_update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time at which the status was last updated.
          # @!attribute [r] available_replica_count
          #   @return [::Integer]
          #     Output only. The number of available replicas of the deployed model.
          class Status
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class SystemLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # PrivateEndpoints proto is used to provide paths for users to send
        # requests privately.
        # To send request via private service access, use predict_http_uri,
        # explain_http_uri or health_http_uri. To send request via private service
        # connect, use service_attachment.
        # @!attribute [r] predict_http_uri
        #   @return [::String]
        #     Output only. Http(s) path to send prediction requests.
        # @!attribute [r] explain_http_uri
        #   @return [::String]
        #     Output only. Http(s) path to send explain requests.
        # @!attribute [r] health_http_uri
        #   @return [::String]
        #     Output only. Http(s) path to send health check requests.
        # @!attribute [r] service_attachment
        #   @return [::String]
        #     Output only. The name of the service attachment resource. Populated if
        #     private service connect is enabled.
        class PrivateEndpoints
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for logging request-response to a BigQuery table.
        # @!attribute [rw] enabled
        #   @return [::Boolean]
        #     If logging is enabled or not.
        # @!attribute [rw] sampling_rate
        #   @return [::Float]
        #     Percentage of requests to be logged, expressed as a fraction in
        #     range(0,1].
        # @!attribute [rw] bigquery_destination
        #   @return [::Google::Cloud::AIPlatform::V1::BigQueryDestination]
        #     BigQuery table for logging.
        #     If only given a project, a new dataset will be created with name
        #     `logging_<endpoint-display-name>_<endpoint-id>` where
        #     <endpoint-display-name> will be made BigQuery-dataset-name compatible (e.g.
        #     most special characters will become underscores). If no table name is
        #     given, a new table will be created with name `request_response_logging`
        class PredictRequestResponseLoggingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configurations (e.g. inference timeout) that are applied on your endpoints.
        # @!attribute [rw] inference_timeout
        #   @return [::Google::Protobuf::Duration]
        #     Customizable online prediction request timeout.
        class ClientConnectionConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for faster model deployment.
        # @!attribute [rw] fast_tryout_enabled
        #   @return [::Boolean]
        #     If true, enable fast tryout feature for this deployed model.
        class FasterDeploymentConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for Speculative Decoding.
        # @!attribute [rw] draft_model_speculation
        #   @return [::Google::Cloud::AIPlatform::V1::SpeculativeDecodingSpec::DraftModelSpeculation]
        #     draft model speculation.
        #
        #     Note: The following fields are mutually exclusive: `draft_model_speculation`, `ngram_speculation`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] ngram_speculation
        #   @return [::Google::Cloud::AIPlatform::V1::SpeculativeDecodingSpec::NgramSpeculation]
        #     N-Gram speculation.
        #
        #     Note: The following fields are mutually exclusive: `ngram_speculation`, `draft_model_speculation`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] speculative_token_count
        #   @return [::Integer]
        #     The number of speculative tokens to generate at each step.
        class SpeculativeDecodingSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Draft model speculation works by using the smaller model to generate
          # candidate tokens for speculative decoding.
          # @!attribute [rw] draft_model
          #   @return [::String]
          #     Required. The resource name of the draft model.
          class DraftModelSpeculation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # N-Gram speculation works by trying to find matching tokens in the
          # previous prompt sequence and use those as speculation for generating
          # new tokens.
          # @!attribute [rw] ngram_size
          #   @return [::Integer]
          #     The number of last N input tokens used as ngram to search/match
          #     against the previous prompt sequence.
          #     This is equal to the N in N-Gram.
          #     The default value is 3 if not specified.
          class NgramSpeculation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
