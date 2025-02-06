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


module Google
  module Cloud
    module DataLabeling
      module V1beta1
        # Defines an evaluation job that runs periodically to generate
        # {::Google::Cloud::DataLabeling::V1beta1::Evaluation Evaluations}. [Creating an evaluation
        # job](/ml-engine/docs/continuous-evaluation/create-job) is the starting point
        # for using continuous evaluation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Output only. After you create a job, Data Labeling Service assigns a name
        #     to the job with the following format:
        #
        #     "projects/<var>\\{project_id}</var>/evaluationJobs/<var>\\{evaluation_job_id}</var>"
        # @!attribute [rw] description
        #   @return [::String]
        #     Required. Description of the job. The description can be up to 25,000
        #     characters long.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationJob::State]
        #     Output only. Describes the current state of the job.
        # @!attribute [rw] schedule
        #   @return [::String]
        #     Required. Describes the interval at which the job runs. This interval must
        #     be at least 1 day, and it is rounded to the nearest day. For example, if
        #     you specify a 50-hour interval, the job runs every 2 days.
        #
        #     You can provide the schedule in
        #     [crontab format](/scheduler/docs/configuring/cron-job-schedules) or in an
        #     [English-like
        #     format](/appengine/docs/standard/python/config/cronref#schedule_format).
        #
        #     Regardless of what you specify, the job will run at 10:00 AM UTC. Only the
        #     interval from this schedule is used, not the specific time of day.
        # @!attribute [rw] model_version
        #   @return [::String]
        #     Required. The [AI Platform Prediction model
        #     version](/ml-engine/docs/prediction-overview) to be evaluated. Prediction
        #     input and output is sampled from this model version. When creating an
        #     evaluation job, specify the model version in the following format:
        #
        #     "projects/<var>\\{project_id}</var>/models/<var>\\{model_name}</var>/versions/<var>\\{version_name}</var>"
        #
        #     There can only be one evaluation job per model version.
        # @!attribute [rw] evaluation_job_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationJobConfig]
        #     Required. Configuration details for the evaluation job.
        # @!attribute [rw] annotation_spec_set
        #   @return [::String]
        #     Required. Name of the {::Google::Cloud::DataLabeling::V1beta1::AnnotationSpecSet AnnotationSpecSet} describing all the
        #     labels that your machine learning model outputs. You must create this
        #     resource before you create an evaluation job and provide its name in the
        #     following format:
        #
        #     "projects/<var>\\{project_id}</var>/annotationSpecSets/<var>\\{annotation_spec_set_id}</var>"
        # @!attribute [rw] label_missing_ground_truth
        #   @return [::Boolean]
        #     Required. Whether you want Data Labeling Service to provide ground truth
        #     labels for prediction input. If you want the service to assign human
        #     labelers to annotate your data, set this to `true`. If you want to provide
        #     your own ground truth labels in the evaluation job's BigQuery table, set
        #     this to `false`.
        # @!attribute [rw] attempts
        #   @return [::Array<::Google::Cloud::DataLabeling::V1beta1::Attempt>]
        #     Output only. Every time the evaluation job runs and an error occurs, the
        #     failed attempt is appended to this array.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp of when this evaluation job was created.
        class EvaluationJob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State of the job.
          module State
            STATE_UNSPECIFIED = 0

            # The job is scheduled to run at the {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#schedule configured interval}. You
            # can {::Google::Cloud::DataLabeling::V1beta1::DataLabelingService::Client#pause_evaluation_job pause} or
            # {::Google::Cloud::DataLabeling::V1beta1::DataLabelingService::Client#delete_evaluation_job delete} the job.
            #
            # When the job is in this state, it samples prediction input and output
            # from your model version into your BigQuery table as predictions occur.
            SCHEDULED = 1

            # The job is currently running. When the job runs, Data Labeling Service
            # does several things:
            #
            # 1. If you have configured your job to use Data Labeling Service for
            #    ground truth labeling, the service creates a
            #    {::Google::Cloud::DataLabeling::V1beta1::Dataset Dataset} and a labeling task for all data sampled
            #    since the last time the job ran. Human labelers provide ground truth
            #    labels for your data. Human labeling may take hours, or even days,
            #    depending on how much data has been sampled. The job remains in the
            #    `RUNNING` state during this time, and it can even be running multiple
            #    times in parallel if it gets triggered again (for example 24 hours
            #    later) before the earlier run has completed. When human labelers have
            #    finished labeling the data, the next step occurs.
            #    <br><br>
            #    If you have configured your job to provide your own ground truth
            #    labels, Data Labeling Service still creates a {::Google::Cloud::DataLabeling::V1beta1::Dataset Dataset} for newly
            #    sampled data, but it expects that you have already added ground truth
            #    labels to the BigQuery table by this time. The next step occurs
            #    immediately.
            #
            # 2. Data Labeling Service creates an {::Google::Cloud::DataLabeling::V1beta1::Evaluation Evaluation} by comparing your
            #    model version's predictions with the ground truth labels.
            #
            # If the job remains in this state for a long time, it continues to sample
            # prediction data into your BigQuery table and will run again at the next
            # interval, even if it causes the job to run multiple times in parallel.
            RUNNING = 2

            # The job is not sampling prediction input and output into your BigQuery
            # table and it will not run according to its schedule. You can
            # {::Google::Cloud::DataLabeling::V1beta1::DataLabelingService::Client#resume_evaluation_job resume} the job.
            PAUSED = 3

            # The job has this state right before it is deleted.
            STOPPED = 4
          end
        end

        # Configures specific details of how a continuous evaluation job works. Provide
        # this configuration when you create an EvaluationJob.
        # @!attribute [rw] image_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::ImageClassificationConfig]
        #     Specify this field if your model version performs image classification or
        #     general classification.
        #
        #     `annotationSpecSet` in this configuration must match
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#annotation_spec_set EvaluationJob.annotationSpecSet}.
        #     `allowMultiLabel` in this configuration must match
        #     `classificationMetadata.isMultiLabel` in {::Google::Cloud::DataLabeling::V1beta1::EvaluationJobConfig#input_config input_config}.
        #
        #     Note: The following fields are mutually exclusive: `image_classification_config`, `bounding_poly_config`, `text_classification_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] bounding_poly_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::BoundingPolyConfig]
        #     Specify this field if your model version performs image object detection
        #     (bounding box detection).
        #
        #     `annotationSpecSet` in this configuration must match
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#annotation_spec_set EvaluationJob.annotationSpecSet}.
        #
        #     Note: The following fields are mutually exclusive: `bounding_poly_config`, `image_classification_config`, `text_classification_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] text_classification_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::TextClassificationConfig]
        #     Specify this field if your model version performs text classification.
        #
        #     `annotationSpecSet` in this configuration must match
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#annotation_spec_set EvaluationJob.annotationSpecSet}.
        #     `allowMultiLabel` in this configuration must match
        #     `classificationMetadata.isMultiLabel` in {::Google::Cloud::DataLabeling::V1beta1::EvaluationJobConfig#input_config input_config}.
        #
        #     Note: The following fields are mutually exclusive: `text_classification_config`, `image_classification_config`, `bounding_poly_config`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::InputConfig]
        #     Rquired. Details for the sampled prediction input. Within this
        #     configuration, there are requirements for several fields:
        #
        #     * `dataType` must be one of `IMAGE`, `TEXT`, or `GENERAL_DATA`.
        #     * `annotationType` must be one of `IMAGE_CLASSIFICATION_ANNOTATION`,
        #       `TEXT_CLASSIFICATION_ANNOTATION`, `GENERAL_CLASSIFICATION_ANNOTATION`,
        #       or `IMAGE_BOUNDING_BOX_ANNOTATION` (image object detection).
        #     * If your machine learning model performs classification, you must specify
        #       `classificationMetadata.isMultiLabel`.
        #     * You must specify `bigquerySource` (not `gcsSource`).
        # @!attribute [rw] evaluation_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationConfig]
        #     Required. Details for calculating evaluation metrics and creating
        #     {::Google::Cloud::DataLabeling::V1beta1::Evaluation Evaulations}. If your model version performs image object
        #     detection, you must specify the `boundingBoxEvaluationOptions` field within
        #     this configuration. Otherwise, provide an empty object for this
        #     configuration.
        # @!attribute [rw] human_annotation_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::HumanAnnotationConfig]
        #     Optional. Details for human annotation of your data. If you set
        #     {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#label_missing_ground_truth labelMissingGroundTruth} to
        #     `true` for this evaluation job, then you must specify this field. If you
        #     plan to provide your own ground truth labels, then omit this field.
        #
        #     Note that you must create an {::Google::Cloud::DataLabeling::V1beta1::Instruction Instruction} resource before you can
        #     specify this field. Provide the name of the instruction resource in the
        #     `instruction` field within this configuration.
        # @!attribute [rw] bigquery_import_keys
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Required. Prediction keys that tell Data Labeling Service where to find the
        #     data for evaluation in your BigQuery table. When the service samples
        #     prediction input and output from your model version and saves it to
        #     BigQuery, the data gets stored as JSON strings in the BigQuery table. These
        #     keys tell Data Labeling Service how to parse the JSON.
        #
        #     You can provide the following entries in this field:
        #
        #     * `data_json_key`: the data key for prediction input. You must provide
        #       either this key or `reference_json_key`.
        #     * `reference_json_key`: the data reference key for prediction input. You
        #       must provide either this key or `data_json_key`.
        #     * `label_json_key`: the label key for prediction output. Required.
        #     * `label_score_json_key`: the score key for prediction output. Required.
        #     * `bounding_box_json_key`: the bounding box key for prediction output.
        #       Required if your model version perform image object detection.
        #
        #     Learn [how to configure prediction
        #     keys](/ml-engine/docs/continuous-evaluation/create-job#prediction-keys).
        # @!attribute [rw] example_count
        #   @return [::Integer]
        #     Required. The maximum number of predictions to sample and save to BigQuery
        #     during each {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#schedule evaluation interval}. This limit
        #     overrides `example_sample_percentage`: even if the service has not sampled
        #     enough predictions to fulfill `example_sample_perecentage` during an
        #     interval, it stops sampling predictions when it meets this limit.
        # @!attribute [rw] example_sample_percentage
        #   @return [::Float]
        #     Required. Fraction of predictions to sample and save to BigQuery during
        #     each {::Google::Cloud::DataLabeling::V1beta1::EvaluationJob#schedule evaluation interval}. For example, 0.1 means
        #     10% of predictions served by your model version get saved to BigQuery.
        # @!attribute [rw] evaluation_job_alert_config
        #   @return [::Google::Cloud::DataLabeling::V1beta1::EvaluationJobAlertConfig]
        #     Optional. Configuration details for evaluation job alerts. Specify this
        #     field if you want to receive email alerts if the evaluation job finds that
        #     your predictions have low mean average precision during a run.
        class EvaluationJobConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class BigqueryImportKeysEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Provides details for how an evaluation job sends email alerts based on the
        # results of a run.
        # @!attribute [rw] email
        #   @return [::String]
        #     Required. An email address to send alerts to.
        # @!attribute [rw] min_acceptable_mean_average_precision
        #   @return [::Float]
        #     Required. A number between 0 and 1 that describes a minimum mean average
        #     precision threshold. When the evaluation job runs, if it calculates that
        #     your model version's predictions from the recent interval have
        #     {::Google::Cloud::DataLabeling::V1beta1::PrCurve#mean_average_precision meanAveragePrecision} below this
        #     threshold, then it sends an alert to your specified email.
        class EvaluationJobAlertConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Records a failed evaluation job run.
        # @!attribute [rw] attempt_time
        #   @return [::Google::Protobuf::Timestamp]
        # @!attribute [rw] partial_failures
        #   @return [::Array<::Google::Rpc::Status>]
        #     Details of errors that occurred.
        class Attempt
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
