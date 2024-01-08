# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/securesourcemanager/v1/secure_source_manager.proto for package 'Google.Cloud.SecureSourceManager.V1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/securesourcemanager/v1/secure_source_manager_pb'

module Google
  module Cloud
    module SecureSourceManager
      module V1
        module SecureSourceManager
          # Secure Source Manager API
          #
          # Access Secure Source Manager instances, resources, and repositories.
          #
          # This API is split across two servers: the Control Plane and the Data Plane.
          #
          # Data Plane endpoints are hosted directly by your Secure Source Manager
          # instance, so you must connect to your instance's API hostname to access
          # them. The API hostname looks like the following:
          #
          #    https://[instance-id]-[project-number]-api.[location].sourcemanager.dev
          #
          # For example,
          #
          #    https://my-instance-702770452863-api.us-central1.sourcemanager.dev
          #
          # Data Plane endpoints are denoted with **Host: Data Plane**.
          #
          # All other endpoints are found in the normal Cloud API location, namely,
          # `securcesourcemanager.googleapis.com`.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.securesourcemanager.v1.SecureSourceManager'

            # Lists Instances in a given project and location.
            rpc :ListInstances, ::Google::Cloud::SecureSourceManager::V1::ListInstancesRequest, ::Google::Cloud::SecureSourceManager::V1::ListInstancesResponse
            # Gets details of a single instance.
            rpc :GetInstance, ::Google::Cloud::SecureSourceManager::V1::GetInstanceRequest, ::Google::Cloud::SecureSourceManager::V1::Instance
            # Creates a new instance in a given project and location.
            rpc :CreateInstance, ::Google::Cloud::SecureSourceManager::V1::CreateInstanceRequest, ::Google::Longrunning::Operation
            # Deletes a single instance.
            rpc :DeleteInstance, ::Google::Cloud::SecureSourceManager::V1::DeleteInstanceRequest, ::Google::Longrunning::Operation
            # Lists Repositories in a given project and location.
            #
            # **Host: Data Plane**
            rpc :ListRepositories, ::Google::Cloud::SecureSourceManager::V1::ListRepositoriesRequest, ::Google::Cloud::SecureSourceManager::V1::ListRepositoriesResponse
            # Gets metadata of a repository.
            #
            # **Host: Data Plane**
            rpc :GetRepository, ::Google::Cloud::SecureSourceManager::V1::GetRepositoryRequest, ::Google::Cloud::SecureSourceManager::V1::Repository
            # Creates a new repository in a given project and location.
            #
            # **Host: Data Plane**
            rpc :CreateRepository, ::Google::Cloud::SecureSourceManager::V1::CreateRepositoryRequest, ::Google::Longrunning::Operation
            # Deletes a Repository.
            #
            # **Host: Data Plane**
            rpc :DeleteRepository, ::Google::Cloud::SecureSourceManager::V1::DeleteRepositoryRequest, ::Google::Longrunning::Operation
            # Get IAM policy for a repository.
            rpc :GetIamPolicyRepo, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Set IAM policy on a repository.
            rpc :SetIamPolicyRepo, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Test IAM permissions on a repository.
            # IAM permission checks are not required on this method.
            rpc :TestIamPermissionsRepo, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end