# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/eventarc/v1/eventarc"

class ::Google::Cloud::Eventarc::V1::Eventarc::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_channel_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.channel_path project: "value0", location: "value1", channel: "value2"
      assert_equal "projects/value0/locations/value1/channels/value2", path
    end
  end

  def test_channel_connection_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.channel_connection_path project: "value0", location: "value1", channel_connection: "value2"
      assert_equal "projects/value0/locations/value1/channelConnections/value2", path
    end
  end

  def test_cloud_function_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cloud_function_path project: "value0", location: "value1", function: "value2"
      assert_equal "projects/value0/locations/value1/functions/value2", path
    end
  end

  def test_crypto_key_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3", path
    end
  end

  def test_enrollment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.enrollment_path project: "value0", location: "value1", enrollment: "value2"
      assert_equal "projects/value0/locations/value1/enrollments/value2", path
    end
  end

  def test_google_api_source_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.google_api_source_path project: "value0", location: "value1", google_api_source: "value2"
      assert_equal "projects/value0/locations/value1/googleApiSources/value2", path
    end
  end

  def test_google_channel_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.google_channel_config_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1/googleChannelConfig", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_message_bus_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.message_bus_path project: "value0", location: "value1", message_bus: "value2"
      assert_equal "projects/value0/locations/value1/messageBuses/value2", path
    end
  end

  def test_network_attachment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_attachment_path project: "value0", region: "value1", networkattachment: "value2"
      assert_equal "projects/value0/regions/value1/networkAttachments/value2", path
    end
  end

  def test_pipeline_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.pipeline_path project: "value0", location: "value1", pipeline: "value2"
      assert_equal "projects/value0/locations/value1/pipelines/value2", path
    end
  end

  def test_provider_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.provider_path project: "value0", location: "value1", provider: "value2"
      assert_equal "projects/value0/locations/value1/providers/value2", path
    end
  end

  def test_service_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end
    end
  end

  def test_service_account_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_account_path project: "value0", service_account: "value1"
      assert_equal "projects/value0/serviceAccounts/value1", path
    end
  end

  def test_topic_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.topic_path project: "value0", topic: "value1"
      assert_equal "projects/value0/topics/value1", path
    end
  end

  def test_trigger_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.trigger_path project: "value0", location: "value1", trigger: "value2"
      assert_equal "projects/value0/locations/value1/triggers/value2", path
    end
  end

  def test_workflow_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Eventarc::V1::Eventarc::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.workflow_path project: "value0", location: "value1", workflow: "value2"
      assert_equal "projects/value0/locations/value1/workflows/value2", path
    end
  end
end
