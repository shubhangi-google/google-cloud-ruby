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
require "google/cloud/storage"

# [START storage_initiate_resumable_upload]

def initiate_resumable_upload bucket_name:, file:, file_name:, chunk_size:
  # The ID of your GCS bucket
  # bucket_name = "your-unique-bucket-name"
  storage = Google::Cloud::Storage.new upload_chunk_size: chunk_size

  # storage = Google::Cloud::Storage.new(upload_chunk_size: chunk_size, upload_url: upload_url, delete_upload: true)

  bucket = storage.bucket bucket_name
  my_file= bucket.create_file file, file_name
  binding.pry

  puts "Resumable upload completed for #{file_name}"


end
# [END storage_initiate_resumable_upload]

if $PROGRAM_NAME == __FILE__
  storage_initiate_resumable_upload bucket_name: ARGV.shift, file: ARGV.shift, file_name: ARGV.shift,
                                    chunk_size: ARGV.shift
end
