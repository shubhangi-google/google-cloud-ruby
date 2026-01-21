# Copyright 2024 Google LLC
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

# [START storage_create_bucket_with_ip_filter]
def create_bucket_with_ip_filter bucket_name:
  # The ID to give your GCS bucket
  # bucket_name = "your-unique-bucket-name"

  require "google/cloud/storage"

  storage = Google::Cloud::Storage.new

  ip_filter = Google::Apis::StorageV1::Bucket::IpFilter.new(
    mode: "Enabled",
    public_network_source: Google::Apis::StorageV1::Bucket::IpFilter::PublicNetworkSource.new(
    allowed_ip_cidr_ranges: [
      "0.0.0.0/0", "::/0"
    ]
  ),
   allow_all_service_agent_access: false
  )
  bucket = storage.create_bucket bucket_name do |b|
    b.ip_filter = ip_filter
    b.uniform_bucket_level_access = true
  end

  puts "Created bucket #{bucket_name} with IP filter enabled."
end

def removes_bucket_ip_filter bucket_name:
  # The ID of your GCS bucket
  # bucket_name = "your-unique-bucket-name"

  require "google/cloud/storage"

  storage = Google::Cloud::Storage.new
  bucket = storage.bucket bucket_name

  ip_filter = Google::Apis::StorageV1::Bucket::IpFilter.new(
    mode: "Disabled"
  )
  bucket.update do |b|
    b.ip_filter = ip_filter
  end

  puts "Updated IP filter for bucket #{bucket_name}."
end

def update_bucket_with_ip_filter bucket_name:
  # The ID to give your GCS bucket
  # bucket_name = "your-unique-bucket-name"

  require "google/cloud/resource_manager/v3"
  storage = Google::Cloud::Storage.new

  ip_filter = Google::Apis::StorageV1::Bucket::IpFilter.new(
    mode: "Enabled",
    public_network_source: Google::Apis::StorageV1::Bucket::IpFilter::PublicNetworkSource.new(
    allowed_ip_cidr_ranges: [
      "0.0.0.0/0", "::/0"
    ]
  ),
   allow_all_service_agent_access: false
  )
  # require "google/cloud/iam"
  # Initialize the IAM Admin Client (Not Credentials Client)
  # iam_client = Google::Cloud::Iam::Service.new
  client = Google::Cloud::ResourceManager::V3::Projects::Client.new


  project_id = "storage-sdk-vendor"
  role_id    = "GcsIpExemptRole"

  # Define the Custom Role
  # role = Google::Cloud::Iam::V1::Role.new(
  #   title: "GCS IP Exemption Role",
  #   included_permissions: ["storage.buckets.exemptFromIpFilter"],
  #   stage: :GA
  # )
  resource = "projects/#{project_id}"

    # Call test_iam_permissions. 
    # In Ruby, you can pass a Hash that matches the request structure.
    response = client.test_iam_permissions(
      resource: resource,
      permissions: ["storage.buckets.exemptFromIpFilter"]
    )

    # The response object contains a 'permissions' array of granted permissions
    puts "Granted permissions: #{response.permissions}"
    
    response.permissions
    binding.pry

      # role   = "projects/#{storage.project}/roles/GcsIpExemptRole"
    member = "serviceAccount:insecure-cloudtop-shared-user@cloudtop-prod-asia-east.iam.gserviceaccount.com"

    bucket.policy requested_policy_version: 3 do |policy|
      policy.bindings.insert role: role, members: [member]
    end
    # bucket = storage.create_bucket bucket_name 
    #    bucket.policy do |p|
    #     p.add "roles/storage.buckets.exemptFromIpFilter", "serviceAccount:insecure-cloudtop-shared-user@cloudtop-prod-asia-east.iam.gserviceaccount.com"
    #   end
    #   binding.pry

  bucket.update do |b|
    b.ip_filter = ip_filter
  end


  puts "Updated bucket #{bucket_name} with IP filter enabled."
end
# [END storage_create_bucket_with_ip_filter]

if $PROGRAM_NAME == __FILE__
  create_bucket_with_ip_filter bucket_name: ARGV.shift
end
