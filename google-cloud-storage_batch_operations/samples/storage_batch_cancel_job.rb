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

# [START storage_batch_cancel_job]
require "google/cloud/storage_batch_operations"

# Cancels a Storage Batch Operations job.
#
# Note: If the job is already completed or does not exist, a message indicating
# this will be printed instead of raising an error.
#
# @param project_id [String] The ID of your Google Cloud project.
# @param job_id [String] The ID of the Storage Batch Operations job to cancel.
#
# @example
#   cancel_job project_id: "your-project-id", job_id: "your-job-id"
#
def cancel_job project_id:, job_id:

  client = Google::Cloud::StorageBatchOperations.storage_batch_operations
  parent = "projects/#{project_id}/locations/global"

  request = Google::Cloud::StorageBatchOperations::V1::CancelJobRequest.new name: "#{parent}/jobs/#{job_id}"
  begin
    client.cancel_job request
    message = "The #{job_id} is canceled."
  rescue Google::Cloud::FailedPreconditionError
    # This error is thrown when the job is already completed.
    message = "#{job_id} was already completed."
  rescue Google::Cloud::NotFoundError
    # This error is thrown when the job does not exist.
    message = "#{job_id} not found."

  end
  puts message
end
# [END storage_batch_cancel_job]

cancel_job project_id: ARGV.shift, job_id: ARGV.shift if $PROGRAM_NAME == __FILE__
