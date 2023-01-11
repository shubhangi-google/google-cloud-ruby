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
        # Explanation of a prediction (provided in
        # {::Google::Cloud::AIPlatform::V1::PredictResponse#predictions PredictResponse.predictions})
        # produced by the Model on a given
        # {::Google::Cloud::AIPlatform::V1::ExplainRequest#instances instance}.
        # @!attribute [r] attributions
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Attribution>]
        #     Output only. Feature attributions grouped by predicted outputs.
        #
        #     For Models that predict only one output, such as regression Models that
        #     predict only one score, there is only one attibution that explains the
        #     predicted output. For Models that predict multiple outputs, such as
        #     multiclass Models that predict multiple classes, each element explains one
        #     specific item.
        #     {::Google::Cloud::AIPlatform::V1::Attribution#output_index Attribution.output_index}
        #     can be used to identify which output this attribution is explaining.
        #
        #     If users set
        #     {::Google::Cloud::AIPlatform::V1::ExplanationParameters#top_k ExplanationParameters.top_k},
        #     the attributions are sorted by
        #     [instance_output_value][Attributions.instance_output_value] in descending
        #     order. If
        #     {::Google::Cloud::AIPlatform::V1::ExplanationParameters#output_indices ExplanationParameters.output_indices}
        #     is specified, the attributions are stored by
        #     {::Google::Cloud::AIPlatform::V1::Attribution#output_index Attribution.output_index}
        #     in the same order as they appear in the output_indices.
        # @!attribute [r] neighbors
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Neighbor>]
        #     Output only. List of the nearest neighbors for example-based explanations.
        #
        #     For models deployed with the examples explanations feature enabled, the
        #     attributions field is empty and instead the neighbors field is populated.
        class Explanation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Aggregated explanation metrics for a Model over a set of instances.
        # @!attribute [r] mean_attributions
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Attribution>]
        #     Output only. Aggregated attributions explaining the Model's prediction
        #     outputs over the set of instances. The attributions are grouped by outputs.
        #
        #     For Models that predict only one output, such as regression Models that
        #     predict only one score, there is only one attibution that explains the
        #     predicted output. For Models that predict multiple outputs, such as
        #     multiclass Models that predict multiple classes, each element explains one
        #     specific item.
        #     {::Google::Cloud::AIPlatform::V1::Attribution#output_index Attribution.output_index}
        #     can be used to identify which output this attribution is explaining.
        #
        #     The
        #     {::Google::Cloud::AIPlatform::V1::Attribution#baseline_output_value baselineOutputValue},
        #     {::Google::Cloud::AIPlatform::V1::Attribution#instance_output_value instanceOutputValue}
        #     and
        #     {::Google::Cloud::AIPlatform::V1::Attribution#feature_attributions featureAttributions}
        #     fields are averaged over the test data.
        #
        #     NOTE: Currently AutoML tabular classification Models produce only one
        #     attribution, which averages attributions over all the classes it predicts.
        #     {::Google::Cloud::AIPlatform::V1::Attribution#approximation_error Attribution.approximation_error}
        #     is not populated.
        class ModelExplanation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Attribution that explains a particular prediction output.
        # @!attribute [r] baseline_output_value
        #   @return [::Float]
        #     Output only. Model predicted output if the input instance is constructed
        #     from the baselines of all the features defined in
        #     {::Google::Cloud::AIPlatform::V1::ExplanationMetadata#inputs ExplanationMetadata.inputs}.
        #     The field name of the output is determined by the key in
        #     {::Google::Cloud::AIPlatform::V1::ExplanationMetadata#outputs ExplanationMetadata.outputs}.
        #
        #     If the Model's predicted output has multiple dimensions (rank > 1), this is
        #     the value in the output located by
        #     {::Google::Cloud::AIPlatform::V1::Attribution#output_index output_index}.
        #
        #     If there are multiple baselines, their output values are averaged.
        # @!attribute [r] instance_output_value
        #   @return [::Float]
        #     Output only. Model predicted output on the corresponding [explanation
        #     instance][ExplainRequest.instances]. The field name of the output is
        #     determined by the key in
        #     {::Google::Cloud::AIPlatform::V1::ExplanationMetadata#outputs ExplanationMetadata.outputs}.
        #
        #     If the Model predicted output has multiple dimensions, this is the value in
        #     the output located by
        #     {::Google::Cloud::AIPlatform::V1::Attribution#output_index output_index}.
        # @!attribute [r] feature_attributions
        #   @return [::Google::Protobuf::Value]
        #     Output only. Attributions of each explained feature. Features are extracted
        #     from the [prediction
        #     instances][google.cloud.aiplatform.v1.ExplainRequest.instances] according
        #     to [explanation metadata for
        #     inputs][google.cloud.aiplatform.v1.ExplanationMetadata.inputs].
        #
        #     The value is a struct, whose keys are the name of the feature. The values
        #     are how much the feature in the
        #     {::Google::Cloud::AIPlatform::V1::ExplainRequest#instances instance} contributed
        #     to the predicted result.
        #
        #     The format of the value is determined by the feature's input format:
        #
        #       * If the feature is a scalar value, the attribution value is a
        #         {::Google::Protobuf::Value#number_value floating number}.
        #
        #       * If the feature is an array of scalar values, the attribution value is
        #         an {::Google::Protobuf::Value#list_value array}.
        #
        #       * If the feature is a struct, the attribution value is a
        #         {::Google::Protobuf::Value#struct_value struct}. The keys in the
        #         attribution value struct are the same as the keys in the feature
        #         struct. The formats of the values in the attribution struct are
        #         determined by the formats of the values in the feature struct.
        #
        #     The
        #     {::Google::Cloud::AIPlatform::V1::ExplanationMetadata#feature_attributions_schema_uri ExplanationMetadata.feature_attributions_schema_uri}
        #     field, pointed to by the
        #     {::Google::Cloud::AIPlatform::V1::ExplanationSpec ExplanationSpec} field of the
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#deployed_models Endpoint.deployed_models}
        #     object, points to the schema file that describes the features and their
        #     attribution values (if it is populated).
        # @!attribute [r] output_index
        #   @return [::Array<::Integer>]
        #     Output only. The index that locates the explained prediction output.
        #
        #     If the prediction output is a scalar value, output_index is not populated.
        #     If the prediction output has multiple dimensions, the length of the
        #     output_index list is the same as the number of dimensions of the output.
        #     The i-th element in output_index is the element index of the i-th dimension
        #     of the output vector. Indices start from 0.
        # @!attribute [r] output_display_name
        #   @return [::String]
        #     Output only. The display name of the output identified by
        #     {::Google::Cloud::AIPlatform::V1::Attribution#output_index output_index}. For
        #     example, the predicted class name by a multi-classification Model.
        #
        #     This field is only populated iff the Model predicts display names as a
        #     separate field along with the explained output. The predicted display name
        #     must has the same shape of the explained output, and can be located using
        #     output_index.
        # @!attribute [r] approximation_error
        #   @return [::Float]
        #     Output only. Error of
        #     {::Google::Cloud::AIPlatform::V1::Attribution#feature_attributions feature_attributions}
        #     caused by approximation used in the explanation method. Lower value means
        #     more precise attributions.
        #
        #     * For Sampled Shapley
        #     {::Google::Cloud::AIPlatform::V1::ExplanationParameters#sampled_shapley_attribution attribution},
        #     increasing
        #     {::Google::Cloud::AIPlatform::V1::SampledShapleyAttribution#path_count path_count}
        #     might reduce the error.
        #     * For Integrated Gradients
        #     {::Google::Cloud::AIPlatform::V1::ExplanationParameters#integrated_gradients_attribution attribution},
        #     increasing
        #     {::Google::Cloud::AIPlatform::V1::IntegratedGradientsAttribution#step_count step_count}
        #     might reduce the error.
        #     * For [XRAI
        #     attribution][google.cloud.aiplatform.v1.ExplanationParameters.xrai_attribution],
        #     increasing
        #     {::Google::Cloud::AIPlatform::V1::XraiAttribution#step_count step_count} might
        #     reduce the error.
        #
        #     See [this introduction](/vertex-ai/docs/explainable-ai/overview)
        #     for more information.
        # @!attribute [r] output_name
        #   @return [::String]
        #     Output only. Name of the explain output. Specified as the key in
        #     {::Google::Cloud::AIPlatform::V1::ExplanationMetadata#outputs ExplanationMetadata.outputs}.
        class Attribution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Neighbors for example-based explanations.
        # @!attribute [r] neighbor_id
        #   @return [::String]
        #     Output only. The neighbor id.
        # @!attribute [r] neighbor_distance
        #   @return [::Float]
        #     Output only. The neighbor distance.
        class Neighbor
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specification of Model explanation.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationParameters]
        #     Required. Parameters that configure explaining of the Model's predictions.
        # @!attribute [rw] metadata
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationMetadata]
        #     Optional. Metadata describing the Model's input and output for explanation.
        class ExplanationSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Parameters to configure explaining for Model's predictions.
        # @!attribute [rw] sampled_shapley_attribution
        #   @return [::Google::Cloud::AIPlatform::V1::SampledShapleyAttribution]
        #     An attribution method that approximates Shapley values for features that
        #     contribute to the label being predicted. A sampling strategy is used to
        #     approximate the value rather than considering all subsets of features.
        #     Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
        # @!attribute [rw] integrated_gradients_attribution
        #   @return [::Google::Cloud::AIPlatform::V1::IntegratedGradientsAttribution]
        #     An attribution method that computes Aumann-Shapley values taking
        #     advantage of the model's fully differentiable structure. Refer to this
        #     paper for more details: https://arxiv.org/abs/1703.01365
        # @!attribute [rw] xrai_attribution
        #   @return [::Google::Cloud::AIPlatform::V1::XraiAttribution]
        #     An attribution method that redistributes Integrated Gradients
        #     attribution to segmented regions, taking advantage of the model's fully
        #     differentiable structure. Refer to this paper for
        #     more details: https://arxiv.org/abs/1906.02825
        #
        #     XRAI currently performs better on natural images, like a picture of a
        #     house or an animal. If the images are taken in artificial environments,
        #     like a lab or manufacturing line, or from diagnostic equipment, like
        #     x-rays or quality-control cameras, use Integrated Gradients instead.
        # @!attribute [rw] top_k
        #   @return [::Integer]
        #     If populated, returns attributions for top K indices of outputs
        #     (defaults to 1). Only applies to Models that predicts more than one outputs
        #     (e,g, multi-class Models). When set to -1, returns explanations for all
        #     outputs.
        # @!attribute [rw] output_indices
        #   @return [::Google::Protobuf::ListValue]
        #     If populated, only returns attributions that have
        #     {::Google::Cloud::AIPlatform::V1::Attribution#output_index output_index}
        #     contained in output_indices. It must be an ndarray of integers, with the
        #     same shape of the output it's explaining.
        #
        #     If not populated, returns attributions for
        #     {::Google::Cloud::AIPlatform::V1::ExplanationParameters#top_k top_k} indices of
        #     outputs. If neither top_k nor output_indices is populated, returns the
        #     argmax index of the outputs.
        #
        #     Only applicable to Models that predict multiple outputs (e,g, multi-class
        #     Models that predict multiple classes).
        class ExplanationParameters
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An attribution method that approximates Shapley values for features that
        # contribute to the label being predicted. A sampling strategy is used to
        # approximate the value rather than considering all subsets of features.
        # @!attribute [rw] path_count
        #   @return [::Integer]
        #     Required. The number of feature permutations to consider when approximating
        #     the Shapley values.
        #
        #     Valid range of its value is [1, 50], inclusively.
        class SampledShapleyAttribution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An attribution method that computes the Aumann-Shapley value taking advantage
        # of the model's fully differentiable structure. Refer to this paper for
        # more details: https://arxiv.org/abs/1703.01365
        # @!attribute [rw] step_count
        #   @return [::Integer]
        #     Required. The number of steps for approximating the path integral.
        #     A good value to start is 50 and gradually increase until the
        #     sum to diff property is within the desired error range.
        #
        #     Valid range of its value is [1, 100], inclusively.
        # @!attribute [rw] smooth_grad_config
        #   @return [::Google::Cloud::AIPlatform::V1::SmoothGradConfig]
        #     Config for SmoothGrad approximation of gradients.
        #
        #     When enabled, the gradients are approximated by averaging the gradients
        #     from noisy samples in the vicinity of the inputs. Adding
        #     noise can help improve the computed gradients. Refer to this paper for more
        #     details: https://arxiv.org/pdf/1706.03825.pdf
        # @!attribute [rw] blur_baseline_config
        #   @return [::Google::Cloud::AIPlatform::V1::BlurBaselineConfig]
        #     Config for IG with blur baseline.
        #
        #     When enabled, a linear path from the maximally blurred image to the input
        #     image is created. Using a blurred baseline instead of zero (black image) is
        #     motivated by the BlurIG approach explained here:
        #     https://arxiv.org/abs/2004.03383
        class IntegratedGradientsAttribution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An explanation method that redistributes Integrated Gradients
        # attributions to segmented regions, taking advantage of the model's fully
        # differentiable structure. Refer to this paper for more details:
        # https://arxiv.org/abs/1906.02825
        #
        # Supported only by image Models.
        # @!attribute [rw] step_count
        #   @return [::Integer]
        #     Required. The number of steps for approximating the path integral.
        #     A good value to start is 50 and gradually increase until the
        #     sum to diff property is met within the desired error range.
        #
        #     Valid range of its value is [1, 100], inclusively.
        # @!attribute [rw] smooth_grad_config
        #   @return [::Google::Cloud::AIPlatform::V1::SmoothGradConfig]
        #     Config for SmoothGrad approximation of gradients.
        #
        #     When enabled, the gradients are approximated by averaging the gradients
        #     from noisy samples in the vicinity of the inputs. Adding
        #     noise can help improve the computed gradients. Refer to this paper for more
        #     details: https://arxiv.org/pdf/1706.03825.pdf
        # @!attribute [rw] blur_baseline_config
        #   @return [::Google::Cloud::AIPlatform::V1::BlurBaselineConfig]
        #     Config for XRAI with blur baseline.
        #
        #     When enabled, a linear path from the maximally blurred image to the input
        #     image is created. Using a blurred baseline instead of zero (black image) is
        #     motivated by the BlurIG approach explained here:
        #     https://arxiv.org/abs/2004.03383
        class XraiAttribution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config for SmoothGrad approximation of gradients.
        #
        # When enabled, the gradients are approximated by averaging the gradients from
        # noisy samples in the vicinity of the inputs. Adding noise can help improve
        # the computed gradients. Refer to this paper for more details:
        # https://arxiv.org/pdf/1706.03825.pdf
        # @!attribute [rw] noise_sigma
        #   @return [::Float]
        #     This is a single float value and will be used to add noise to all the
        #     features. Use this field when all features are normalized to have the
        #     same distribution: scale to range [0, 1], [-1, 1] or z-scoring, where
        #     features are normalized to have 0-mean and 1-variance. Learn more about
        #     [normalization](https://developers.google.com/machine-learning/data-prep/transform/normalization).
        #
        #     For best results the recommended value is about 10% - 20% of the standard
        #     deviation of the input feature. Refer to section 3.2 of the SmoothGrad
        #     paper: https://arxiv.org/pdf/1706.03825.pdf. Defaults to 0.1.
        #
        #     If the distribution is different per feature, set
        #     {::Google::Cloud::AIPlatform::V1::SmoothGradConfig#feature_noise_sigma feature_noise_sigma}
        #     instead for each feature.
        # @!attribute [rw] feature_noise_sigma
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureNoiseSigma]
        #     This is similar to
        #     {::Google::Cloud::AIPlatform::V1::SmoothGradConfig#noise_sigma noise_sigma},
        #     but provides additional flexibility. A separate noise sigma can be
        #     provided for each feature, which is useful if their distributions are
        #     different. No noise is added to features that are not set. If this field
        #     is unset,
        #     {::Google::Cloud::AIPlatform::V1::SmoothGradConfig#noise_sigma noise_sigma}
        #     will be used for all features.
        # @!attribute [rw] noisy_sample_count
        #   @return [::Integer]
        #     The number of gradient samples to use for
        #     approximation. The higher this number, the more accurate the gradient
        #     is, but the runtime complexity increases by this factor as well.
        #     Valid range of its value is [1, 50]. Defaults to 3.
        class SmoothGradConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Noise sigma by features. Noise sigma represents the standard deviation of the
        # gaussian kernel that will be used to add noise to interpolated inputs prior
        # to computing gradients.
        # @!attribute [rw] noise_sigma
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::FeatureNoiseSigma::NoiseSigmaForFeature>]
        #     Noise sigma per feature. No noise is added to features that are not set.
        class FeatureNoiseSigma
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Noise sigma for a single feature.
          # @!attribute [rw] name
          #   @return [::String]
          #     The name of the input feature for which noise sigma is provided. The
          #     features are defined in
          #     [explanation metadata
          #     inputs][google.cloud.aiplatform.v1.ExplanationMetadata.inputs].
          # @!attribute [rw] sigma
          #   @return [::Float]
          #     This represents the standard deviation of the Gaussian kernel that will
          #     be used to add noise to the feature prior to computing gradients. Similar
          #     to {::Google::Cloud::AIPlatform::V1::SmoothGradConfig#noise_sigma noise_sigma}
          #     but represents the noise added to the current feature. Defaults to 0.1.
          class NoiseSigmaForFeature
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Config for blur baseline.
        #
        # When enabled, a linear path from the maximally blurred image to the input
        # image is created. Using a blurred baseline instead of zero (black image) is
        # motivated by the BlurIG approach explained here:
        # https://arxiv.org/abs/2004.03383
        # @!attribute [rw] max_blur_sigma
        #   @return [::Float]
        #     The standard deviation of the blur kernel for the blurred baseline. The
        #     same blurring parameter is used for both the height and the width
        #     dimension. If not set, the method defaults to the zero (i.e. black for
        #     images) baseline.
        class BlurBaselineConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The {::Google::Cloud::AIPlatform::V1::ExplanationSpec ExplanationSpec} entries
        # that can be overridden at [online
        # explanation][google.cloud.aiplatform.v1.PredictionService.Explain] time.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationParameters]
        #     The parameters to be overridden. Note that the
        #     [method][google.cloud.aiplatform.v1.ExplanationParameters.method] cannot be
        #     changed. If not specified, no parameter is overridden.
        # @!attribute [rw] metadata
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationMetadataOverride]
        #     The metadata to be overridden. If not specified, no metadata is overridden.
        # @!attribute [rw] examples_override
        #   @return [::Google::Cloud::AIPlatform::V1::ExamplesOverride]
        #     The example-based explanations parameter overrides.
        class ExplanationSpecOverride
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The {::Google::Cloud::AIPlatform::V1::ExplanationMetadata ExplanationMetadata}
        # entries that can be overridden at [online
        # explanation][google.cloud.aiplatform.v1.PredictionService.Explain] time.
        # @!attribute [rw] inputs
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::ExplanationMetadataOverride::InputMetadataOverride}]
        #     Required. Overrides the [input
        #     metadata][google.cloud.aiplatform.v1.ExplanationMetadata.inputs] of the
        #     features. The key is the name of the feature to be overridden. The keys
        #     specified here must exist in the input metadata to be overridden. If a
        #     feature is not specified here, the corresponding feature's input metadata
        #     is not overridden.
        class ExplanationMetadataOverride
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The [input
          # metadata][google.cloud.aiplatform.v1.ExplanationMetadata.InputMetadata]
          # entries to be overridden.
          # @!attribute [rw] input_baselines
          #   @return [::Array<::Google::Protobuf::Value>]
          #     Baseline inputs for this feature.
          #
          #     This overrides the `input_baseline` field of the
          #     {::Google::Cloud::AIPlatform::V1::ExplanationMetadata::InputMetadata ExplanationMetadata.InputMetadata}
          #     object of the corresponding feature's input metadata. If it's not
          #     specified, the original baselines are not overridden.
          class InputMetadataOverride
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::AIPlatform::V1::ExplanationMetadataOverride::InputMetadataOverride]
          class InputsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Overrides for example-based explanations.
        # @!attribute [rw] neighbor_count
        #   @return [::Integer]
        #     The number of neighbors to return.
        # @!attribute [rw] crowding_count
        #   @return [::Integer]
        #     The number of neighbors to return that have the same crowding tag.
        # @!attribute [rw] restrictions
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ExamplesRestrictionsNamespace>]
        #     Restrict the resulting nearest neighbors to respect these constraints.
        # @!attribute [rw] return_embeddings
        #   @return [::Boolean]
        #     If true, return the embeddings instead of neighbors.
        # @!attribute [rw] data_format
        #   @return [::Google::Cloud::AIPlatform::V1::ExamplesOverride::DataFormat]
        #     The format of the data being provided with each call.
        class ExamplesOverride
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Data format enum.
          module DataFormat
            # Unspecified format. Must not be used.
            DATA_FORMAT_UNSPECIFIED = 0

            # Provided data is a set of model inputs.
            INSTANCES = 1

            # Provided data is a set of embeddings.
            EMBEDDINGS = 2
          end
        end

        # Restrictions namespace for example-based explanations overrides.
        # @!attribute [rw] namespace_name
        #   @return [::String]
        #     The namespace name.
        # @!attribute [rw] allow
        #   @return [::Array<::String>]
        #     The list of allowed tags.
        # @!attribute [rw] deny
        #   @return [::Array<::String>]
        #     The list of deny tags.
        class ExamplesRestrictionsNamespace
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
