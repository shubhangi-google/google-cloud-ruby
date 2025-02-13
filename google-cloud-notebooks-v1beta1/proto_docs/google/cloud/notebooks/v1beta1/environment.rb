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
    module Notebooks
      module V1beta1
        # Definition of a software environment that is used to start a notebook
        # instance.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Name of this environment.
        #     Format:
        #     `projects/{project_id}/locations/{location}/environments/{environment_id}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Display name of this environment for the UI.
        # @!attribute [rw] description
        #   @return [::String]
        #     A brief description of this environment.
        # @!attribute [rw] vm_image
        #   @return [::Google::Cloud::Notebooks::V1beta1::VmImage]
        #     Use a Compute Engine VM image to start the notebook instance.
        #
        #     Note: The following fields are mutually exclusive: `vm_image`, `container_image`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] container_image
        #   @return [::Google::Cloud::Notebooks::V1beta1::ContainerImage]
        #     Use a container image to start the notebook instance.
        #
        #     Note: The following fields are mutually exclusive: `container_image`, `vm_image`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] post_startup_script
        #   @return [::String]
        #     Path to a Bash script that automatically runs after a notebook instance
        #     fully boots up. The path must be a URL or
        #     Cloud Storage path. Example: `"gs://path-to-file/file-name"`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this environment was created.
        class Environment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Definition of a custom Compute Engine virtual machine image for starting a
        # notebook instance with the environment installed directly on the VM.
        # @!attribute [rw] project
        #   @return [::String]
        #     Required. The name of the Google Cloud project that this VM image belongs to.
        #     Format: `projects/{project_id}`
        # @!attribute [rw] image_name
        #   @return [::String]
        #     Use VM image name to find the image.
        #
        #     Note: The following fields are mutually exclusive: `image_name`, `image_family`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] image_family
        #   @return [::String]
        #     Use this VM image family to find the image; the newest image in this
        #     family will be used.
        #
        #     Note: The following fields are mutually exclusive: `image_family`, `image_name`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class VmImage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Definition of a container image for starting a notebook instance with the
        # environment installed in a container.
        # @!attribute [rw] repository
        #   @return [::String]
        #     Required. The path to the container image repository. For example:
        #     `gcr.io/{project_id}/{image_name}`
        # @!attribute [rw] tag
        #   @return [::String]
        #     The tag of the container image. If not specified, this defaults
        #     to the latest tag.
        class ContainerImage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
