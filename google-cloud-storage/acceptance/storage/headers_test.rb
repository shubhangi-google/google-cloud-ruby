# Copyright 2026 Google LLC
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

require_relative "../storage_helper"
require 'pry'

describe "Accept-Encoding" do
  # Inject an array into the middleware instead of using class-level state
  class HeaderRecorder < Faraday::Middleware
    def initialize(app, captured_headers)
      super(app)
      @captured_headers = captured_headers
    end

    def call(env)
      @captured_headers << env.request_headers
      @app.call(env)
    end
  end

  let(:storage) { Google::Cloud::Storage.new }
  let(:captured_headers) { [] }
  let(:client) { storage.service.service.client }

  before do
    # Pass our local captured_headers array to the middleware
    client.builder.insert_before(0, HeaderRecorder, captured_headers)
  end

  after do
    client.builder.delete(HeaderRecorder) rescue nil
  end

  it "does not include Accept-Encoding header on metadata calls" do
    storage.buckets(max: 1)

    refute_empty captured_headers
    
    # Assert none of the requests included the header
    assert captured_headers.none? { |headers| headers.key?("Accept-Encoding") }
  end

  it "includes Accept-Encoding gzip header on media calls (upload/download)" do
    bucket_name = "gcloud-test-ae-#{Time.now.to_i}-#{SecureRandom.hex(4)}"
    bucket = storage.create_bucket(bucket_name)

    begin
      # Reset our local array instead of calling a class method
      captured_headers.clear

      # Test Upload
      file = bucket.create_file(StringIO.new("hello world"), "test.txt")
      assert_includes captured_headers.map { |h| h["Accept-Encoding"] }, "gzip"

      captured_headers.clear

      # Test Download
      file.download
      assert_includes captured_headers.map { |h| h["Accept-Encoding"] }, "gzip"
    ensure
      # Cleanup
      safe_gcs_execute { file&.delete }
      safe_gcs_execute { bucket&.delete }
    end
  end
end