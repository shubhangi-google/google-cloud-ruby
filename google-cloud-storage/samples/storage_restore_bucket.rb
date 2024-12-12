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
require 'pry'

# [START storage_delete_bucket]
def restore_bucket bucket_name:, generation:
  # The ID of your GCS bucket
  # bucket_name = "your-unique-bucket-name"

   #{}require "google/cloud/storage"
  require_relative '../lib/google/cloud/storage'
  require_relative '../lib/google/cloud/storage/project'
  require_relative '../lib/google/cloud/storage/bucket'
  # require_relative '../lib/google/cloud/storage/bucket/list'
  require_relative '../lib/google/cloud/storage/service'
  require "pry"


  storage = Google::Cloud::Storage.new

  bucket_restored = storage.restore_bucket bucket_name, generation, soft_deleted: true
  # fetching soft deleted bucket list
#   deleted_buckets = storage.buckets soft_deleted: true
  binding.pry

  if JSON.parse(bucket_restored.gapi)["name"] == deleted_bucket.name
    puts "#{deleted_bucket.name} Bucket restored"
  else
    puts "#{deleted_bucket.name} Bucket not restored" 
  end

end
# [END storage_delete_bucket]

restore_bucket bucket_name: ARGV.shift, generation: ARGV.shift if $PROGRAM_NAME == __FILE__
