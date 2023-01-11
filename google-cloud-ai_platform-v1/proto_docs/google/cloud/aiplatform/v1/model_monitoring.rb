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
        # The objective configuration for model monitoring, including the information
        # needed to detect anomalies for one particular model.
        # @!attribute [rw] training_dataset
        #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringObjectiveConfig::TrainingDataset]
        #     Training dataset for models. This field has to be set only if
        #     TrainingPredictionSkewDetectionConfig is specified.
        # @!attribute [rw] training_prediction_skew_detection_config
        #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringObjectiveConfig::TrainingPredictionSkewDetectionConfig]
        #     The config for skew between training data and prediction data.
        # @!attribute [rw] prediction_drift_detection_config
        #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringObjectiveConfig::PredictionDriftDetectionConfig]
        #     The config for drift of prediction data.
        # @!attribute [rw] explanation_config
        #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringObjectiveConfig::ExplanationConfig]
        #     The config for integrating with Vertex Explainable AI.
        class ModelMonitoringObjectiveConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Training Dataset information.
          # @!attribute [rw] dataset
          #   @return [::String]
          #     The resource name of the Dataset used to train this Model.
          # @!attribute [rw] gcs_source
          #   @return [::Google::Cloud::AIPlatform::V1::GcsSource]
          #     The Google Cloud Storage uri of the unmanaged Dataset used to train
          #     this Model.
          # @!attribute [rw] bigquery_source
          #   @return [::Google::Cloud::AIPlatform::V1::BigQuerySource]
          #     The BigQuery table of the unmanaged Dataset used to train this
          #     Model.
          # @!attribute [rw] data_format
          #   @return [::String]
          #     Data format of the dataset, only applicable if the input is from
          #     Google Cloud Storage.
          #     The possible formats are:
          #
          #     "tf-record"
          #     The source file is a TFRecord file.
          #
          #     "csv"
          #     The source file is a CSV file.
          #     "jsonl"
          #     The source file is a JSONL file.
          # @!attribute [rw] target_field
          #   @return [::String]
          #     The target field name the model is to predict.
          #     This field will be excluded when doing Predict and (or) Explain for the
          #     training data.
          # @!attribute [rw] logging_sampling_strategy
          #   @return [::Google::Cloud::AIPlatform::V1::SamplingStrategy]
          #     Strategy to sample data from Training Dataset.
          #     If not set, we process the whole dataset.
          class TrainingDataset
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The config for Training & Prediction data skew detection. It specifies the
          # training dataset sources and the skew detection parameters.
          # @!attribute [rw] skew_thresholds
          #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::ThresholdConfig}]
          #     Key is the feature name and value is the threshold. If a feature needs to
          #     be monitored for skew, a value threshold must be configured for that
          #     feature. The threshold here is against feature distribution distance
          #     between the training and prediction feature.
          # @!attribute [rw] attribution_score_skew_thresholds
          #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::ThresholdConfig}]
          #     Key is the feature name and value is the threshold. The threshold here is
          #     against attribution score distance between the training and prediction
          #     feature.
          # @!attribute [rw] default_skew_threshold
          #   @return [::Google::Cloud::AIPlatform::V1::ThresholdConfig]
          #     Skew anomaly detection threshold used by all features.
          #     When the per-feature thresholds are not set, this field can be used to
          #     specify a threshold for all features.
          class TrainingPredictionSkewDetectionConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Cloud::AIPlatform::V1::ThresholdConfig]
            class SkewThresholdsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Cloud::AIPlatform::V1::ThresholdConfig]
            class AttributionScoreSkewThresholdsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The config for Prediction data drift detection.
          # @!attribute [rw] drift_thresholds
          #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::ThresholdConfig}]
          #     Key is the feature name and value is the threshold. If a feature needs to
          #     be monitored for drift, a value threshold must be configured for that
          #     feature. The threshold here is against feature distribution distance
          #     between different time windws.
          # @!attribute [rw] attribution_score_drift_thresholds
          #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::ThresholdConfig}]
          #     Key is the feature name and value is the threshold. The threshold here is
          #     against attribution score distance between different time windows.
          # @!attribute [rw] default_drift_threshold
          #   @return [::Google::Cloud::AIPlatform::V1::ThresholdConfig]
          #     Drift anomaly detection threshold used by all features.
          #     When the per-feature thresholds are not set, this field can be used to
          #     specify a threshold for all features.
          class PredictionDriftDetectionConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Cloud::AIPlatform::V1::ThresholdConfig]
            class DriftThresholdsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Cloud::AIPlatform::V1::ThresholdConfig]
            class AttributionScoreDriftThresholdsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The config for integrating with Vertex Explainable AI. Only applicable if
          # the Model has explanation_spec populated.
          # @!attribute [rw] enable_feature_attributes
          #   @return [::Boolean]
          #     If want to analyze the Vertex Explainable AI feature attribute scores or
          #     not. If set to true, Vertex AI will log the feature attributions from
          #     explain response and do the skew/drift detection for them.
          # @!attribute [rw] explanation_baseline
          #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringObjectiveConfig::ExplanationConfig::ExplanationBaseline]
          #     Predictions generated by the BatchPredictionJob using baseline dataset.
          class ExplanationConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Output from
            # {::Google::Cloud::AIPlatform::V1::BatchPredictionJob BatchPredictionJob} for
            # Model Monitoring baseline dataset, which can be used to generate baseline
            # attribution scores.
            # @!attribute [rw] gcs
            #   @return [::Google::Cloud::AIPlatform::V1::GcsDestination]
            #     Cloud Storage location for BatchExplain output.
            # @!attribute [rw] bigquery
            #   @return [::Google::Cloud::AIPlatform::V1::BigQueryDestination]
            #     BigQuery location for BatchExplain output.
            # @!attribute [rw] prediction_format
            #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringObjectiveConfig::ExplanationConfig::ExplanationBaseline::PredictionFormat]
            #     The storage format of the predictions generated BatchPrediction job.
            class ExplanationBaseline
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The storage format of the predictions generated BatchPrediction job.
              module PredictionFormat
                # Should not be set.
                PREDICTION_FORMAT_UNSPECIFIED = 0

                # Predictions are in JSONL files.
                JSONL = 2

                # Predictions are in BigQuery.
                BIGQUERY = 3
              end
            end
          end
        end

        # @!attribute [rw] email_alert_config
        #   @return [::Google::Cloud::AIPlatform::V1::ModelMonitoringAlertConfig::EmailAlertConfig]
        #     Email alert config.
        # @!attribute [rw] enable_logging
        #   @return [::Boolean]
        #     Dump the anomalies to Cloud Logging. The anomalies will be put to json
        #     payload encoded from proto
        #     [google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry][].
        #     This can be further sinked to Pub/Sub or any other services supported
        #     by Cloud Logging.
        class ModelMonitoringAlertConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The config for email alert.
          # @!attribute [rw] user_emails
          #   @return [::Array<::String>]
          #     The email addresses to send the alert.
          class EmailAlertConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The config for feature monitoring threshold.
        # @!attribute [rw] value
        #   @return [::Float]
        #     Specify a threshold value that can trigger the alert.
        #     If this threshold config is for feature distribution distance:
        #       1. For categorical feature, the distribution distance is calculated by
        #          L-inifinity norm.
        #       2. For numerical feature, the distribution distance is calculated by
        #          Jensen–Shannon divergence.
        #     Each feature must have a non-zero threshold if they need to be monitored.
        #     Otherwise no alert will be triggered for that feature.
        class ThresholdConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Sampling Strategy for logging, can be for both training and prediction
        # dataset.
        # @!attribute [rw] random_sample_config
        #   @return [::Google::Cloud::AIPlatform::V1::SamplingStrategy::RandomSampleConfig]
        #     Random sample config. Will support more sampling strategies later.
        class SamplingStrategy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Requests are randomly selected.
          # @!attribute [rw] sample_rate
          #   @return [::Float]
          #     Sample rate (0, 1]
          class RandomSampleConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
