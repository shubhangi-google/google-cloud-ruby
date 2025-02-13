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

# [START secretmanager_view_secret_labels]
require "google/cloud/secret_manager"

##
# View labels of a secret.
#
# @param project_id [String] Your Google Cloud project (e.g. "my-project")
# @param secret_id [String] Your secret name (e.g. "my-secret")
#
def view_secret_labels project_id:, secret_id:
  # Create a Secret Manager client.
  client = Google::Cloud::SecretManager.secret_manager_service

  # Build the resource name of the secret.
  name = client.secret_path project: project_id, secret: secret_id

  # Get the existing secret.
  existing_secret = client.get_secret name: name

  # Get the existing secret's labels.
  existing_secret_labels = existing_secret.labels.to_h

  # Print the secret name and the labels.
  puts "Secret: #{existing_secret.name}"
  existing_secret_labels.each do |key, value|
    puts "Label Key: #{key}, Label Value: #{value}"
  end
end
# [END secretmanager_view_secret_labels]
