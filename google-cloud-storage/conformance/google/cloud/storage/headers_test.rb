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

require "helper"

class HeadersTest < MockStorage

  HOST = "http://localhost:9000/"

  class HeaderRecorder < Faraday::Middleware
    def initialize app, captured_headers
      super app
      @captured_headers = captured_headers
    end

    def call env
      @captured_headers << env.request_headers
      @app.call env
    end
  end

  def setup
    storage.service.service.root_url = HOST
    @captured_headers = []
    @client = storage.service.service.client
    @client.builder.insert_before 0, HeaderRecorder, @captured_headers
  end

  def teardown
    @client.builder.delete HeaderRecorder rescue nil
  end

  def test_no_accept_encoding_on_metadata_calls
    storage.buckets max: 1

    refute_empty @captured_headers
    assert @captured_headers.none? { |headers| headers.key? "Accept-Encoding" }
  end

  def test_accept_encoding_gzip_on_media_calls
    bucket_name = random_bucket_name
    bucket = storage.create_bucket bucket_name

    begin
      @captured_headers.clear

      # Test Upload
      file = bucket.create_file StringIO.new("hello world"), "test.txt"
      assert_includes @captured_headers.map { |h| h["Accept-Encoding"] }, "gzip"

      @captured_headers.clear

      # Test Download
      file.download
      assert_includes @captured_headers.map { |h| h["Accept-Encoding"] }, "gzip"
    ensure
      file&.delete rescue nil
      bucket&.delete rescue nil
    end
  end
end
