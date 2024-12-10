# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/netapp/v1/netapp"

class ::Google::Cloud::NetApp::V1::NetApp::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_active_directory_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.active_directory_path project: "value0", location: "value1", active_directory: "value2"
      assert_equal "projects/value0/locations/value1/activeDirectories/value2", path
    end
  end

  def test_backup_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.backup_path project: "value0", location: "value1", backup_vault: "value2", backup: "value3"
      assert_equal "projects/value0/locations/value1/backupVaults/value2/backups/value3", path
    end
  end

  def test_backup_policy_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.backup_policy_path project: "value0", location: "value1", backup_policy: "value2"
      assert_equal "projects/value0/locations/value1/backupPolicies/value2", path
    end
  end

  def test_backup_vault_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.backup_vault_path project: "value0", location: "value1", backup_vault: "value2"
      assert_equal "projects/value0/locations/value1/backupVaults/value2", path
    end
  end

  def test_kms_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.kms_config_path project: "value0", location: "value1", kms_config: "value2"
      assert_equal "projects/value0/locations/value1/kmsConfigs/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_network_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.network_path project: "value0", network: "value1"
      assert_equal "projects/value0/global/networks/value1", path
    end
  end

  def test_replication_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.replication_path project: "value0", location: "value1", volume: "value2", replication: "value3"
      assert_equal "projects/value0/locations/value1/volumes/value2/replications/value3", path
    end
  end

  def test_snapshot_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.snapshot_path project: "value0", location: "value1", volume: "value2", snapshot: "value3"
      assert_equal "projects/value0/locations/value1/volumes/value2/snapshots/value3", path
    end
  end

  def test_storage_pool_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.storage_pool_path project: "value0", location: "value1", storage_pool: "value2"
      assert_equal "projects/value0/locations/value1/storagePools/value2", path
    end
  end

  def test_volume_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::NetApp::V1::NetApp::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.volume_path project: "value0", location: "value1", volume: "value2"
      assert_equal "projects/value0/locations/value1/volumes/value2", path
    end
  end
end
