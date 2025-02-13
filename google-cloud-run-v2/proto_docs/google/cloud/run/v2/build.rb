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
    module Run
      module V2
        # Request message for submitting a Build.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location to build in. Location must be a region,
        #     e.g., 'us-central1' or 'global' if the global builder is to be used.
        #     Format:
        #     `projects/{project}/locations/{location}`
        # @!attribute [rw] storage_source
        #   @return [::Google::Cloud::Run::V2::StorageSource]
        #     Required. Source for the build.
        # @!attribute [rw] image_uri
        #   @return [::String]
        #     Required. Artifact Registry URI to store the built image.
        # @!attribute [rw] buildpack_build
        #   @return [::Google::Cloud::Run::V2::SubmitBuildRequest::BuildpacksBuild]
        #     Build the source using Buildpacks.
        #
        #     Note: The following fields are mutually exclusive: `buildpack_build`, `docker_build`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] docker_build
        #   @return [::Google::Cloud::Run::V2::SubmitBuildRequest::DockerBuild]
        #     Build the source using Docker. This means the source has a Dockerfile.
        #
        #     Note: The following fields are mutually exclusive: `docker_build`, `buildpack_build`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Optional. The service account to use for the build. If not set, the default
        #     Cloud Build service account for the project will be used.
        # @!attribute [rw] worker_pool
        #   @return [::String]
        #     Optional. Name of the Cloud Build Custom Worker Pool that should be used to
        #     build the function. The format of this field is
        #     `projects/{project}/locations/{region}/workerPools/{workerPool}` where
        #     `{project}` and `{region}` are the project id and region respectively where
        #     the worker pool is defined and `{workerPool}` is the short name of the
        #     worker pool.
        # @!attribute [rw] tags
        #   @return [::Array<::String>]
        #     Optional. Additional tags to annotate the build.
        class SubmitBuildRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Build the source using Docker. This means the source has a Dockerfile.
          class DockerBuild
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Build the source using Buildpacks.
          # @!attribute [rw] runtime
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::String]
          #     The runtime name, e.g. 'go113'. Leave blank for generic builds.
          # @!attribute [rw] function_target
          #   @return [::String]
          #     Optional. Name of the function target if the source is a function source.
          #     Required for function builds.
          # @!attribute [rw] cache_image_uri
          #   @return [::String]
          #     Optional. cache_image_uri is the GCR/AR URL where the cache image will be
          #     stored. cache_image_uri is optional and omitting it will disable caching.
          #     This URL must be stable across builds. It is used to derive a
          #     build-specific temporary URL by substituting the tag with the build ID.
          #     The build will clean up the temporary image on a best-effort basis.
          # @!attribute [rw] base_image
          #   @return [::String]
          #     Optional. The base image to use for the build.
          # @!attribute [rw] environment_variables
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Optional. User-provided build-time environment variables.
          # @!attribute [rw] enable_automatic_updates
          #   @return [::Boolean]
          #     Optional. Whether or not the application container will be enrolled in
          #     automatic base image updates. When true, the application will be built on
          #     a scratch base image, so the base layers can be appended at run time.
          # @!attribute [rw] project_descriptor
          #   @return [::String]
          #     Optional. project_descriptor stores the path to the project descriptor
          #     file. When empty, it means that there is no project descriptor file in
          #     the source.
          class BuildpacksBuild
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class EnvironmentVariablesEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # Response message for submitting a Build.
        # @!attribute [rw] build_operation
        #   @return [::Google::Longrunning::Operation]
        #     Cloud Build operation to be polled via CloudBuild API.
        # @!attribute [rw] base_image_uri
        #   @return [::String]
        #     URI of the base builder image in Artifact Registry being used in the build.
        #     Used to opt into automatic base image updates.
        # @!attribute [rw] base_image_warning
        #   @return [::String]
        #     Warning message for the base image.
        class SubmitBuildResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Location of the source in an archive file in Google Cloud Storage.
        # @!attribute [rw] bucket
        #   @return [::String]
        #     Required. Google Cloud Storage bucket containing the source (see
        #     [Bucket Name
        #     Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
        # @!attribute [rw] object
        #   @return [::String]
        #     Required. Google Cloud Storage object containing the source.
        #
        #     This object must be a gzipped archive file (`.tar.gz`) containing source to
        #     build.
        # @!attribute [rw] generation
        #   @return [::Integer]
        #     Optional. Google Cloud Storage generation for the object. If the generation
        #     is omitted, the latest generation will be used.
        class StorageSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
