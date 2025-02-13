# Copyright 2025 Google LLC
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

# [START secretmanager_create_secret_with_labels]
require "google/cloud/secret_manager"

##
# Create a secret with labels.
#
# @param project_id [String] Your Google Cloud project (e.g. "my-project")
# @param secret_id [String] Your secret name (e.g. "my-secret")
# @param label_key [String] Your label key (e.g. "my-label-key")
# @param label_value [String] Your label value (e.g. "my-label-value")
#
def create_secret_with_labels project_id:, secret_id:, label_key:, label_value:
  # Create a Secret Manager client.
  client = Google::Cloud::SecretManager.secret_manager_service

  # Build the resource name of the parent project.
  parent = client.project_path project: project_id

  # Create the secret.
  secret = client.create_secret(
    parent:    parent,
    secret_id: secret_id,
    secret:    {
      replication: {
        automatic: {}
      },
      labels: {
        label_key => label_value
      }
    }
  )

  # Print the new secret name.
  puts "Created secret with label: #{secret.name}"
end
# [END secretmanager_create_secret_with_labels]
