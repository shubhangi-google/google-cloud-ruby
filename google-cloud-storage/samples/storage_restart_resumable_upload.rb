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
 require_relative '../lib/google/cloud/storage/service'
 require_relative '../lib/google/cloud/storage'
 require "pry"


# [START storage_restart_resumable_upload]
def restart_resumable_upload bucket_name:
  # The ID of your GCS bucket
  # bucket_name = "your-unique-bucket-name"

  # Create a 3 MB file using StringIO
  file_content = "A" * (3 * 1024 * 1024) # 3 MB of 'A' characters
  file = StringIO.new file_content

  file_name = "my_io_3mb4.txt"
  chunk_size = 256 * 1024 * 3

  # storage = Google::Cloud::Storage.new upload_chunk_size: chunk_size

#   upload_url=  "https://storage.googleapis.com/upload/storage/v1/b/ruby_7/o?name=my_io_3mb4.txt&name=my_io_3mb4.txt&uploadType=resumable&upload_id=AHMx-iED_BP-upLbxEmspBKvvtpCWIWvslGEP8RsPFChF8NEluVBNsvScs3OaVzREDrLvT3UJYTR1FSaRAMFEY5s2i4PM8Jmw2BuGR8kTYyQ4ZY"

  storage = Google::Cloud::Storage.new(upload_chunk_size: chunk_size, upload_url: upload_url)
  bucket = storage.bucket bucket_name

  bucket.create_file file, file_name
end
# [END storage_restart_resumable_upload]

# if $PROGRAM_NAME == __FILE__
 storage_restart_resumable_upload bucket_name: "ruby_7"
# end
