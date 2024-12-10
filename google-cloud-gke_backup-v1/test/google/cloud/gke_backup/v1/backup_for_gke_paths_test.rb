# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/gke_backup/v1/backup_for_gke"

class ::Google::Cloud::GkeBackup::V1::BackupForGKE::ClientPathsTest < Minitest::Test
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

  def test_backup_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.backup_path project: "value0", location: "value1", backup_plan: "value2", backup: "value3"
      assert_equal "projects/value0/locations/value1/backupPlans/value2/backups/value3", path
    end
  end

  def test_backup_plan_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.backup_plan_path project: "value0", location: "value1", backup_plan: "value2"
      assert_equal "projects/value0/locations/value1/backupPlans/value2", path
    end
  end

  def test_cluster_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cluster_path project: "value0", location: "value1", cluster: "value2"
      assert_equal "projects/value0/locations/value1/clusters/value2", path
    end
  end

  def test_crypto_key_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_restore_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.restore_path project: "value0", location: "value1", restore_plan: "value2", restore: "value3"
      assert_equal "projects/value0/locations/value1/restorePlans/value2/restores/value3", path
    end
  end

  def test_restore_plan_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.restore_plan_path project: "value0", location: "value1", restore_plan: "value2"
      assert_equal "projects/value0/locations/value1/restorePlans/value2", path
    end
  end

  def test_volume_backup_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.volume_backup_path project: "value0", location: "value1", backup_plan: "value2", backup: "value3", volume_backup: "value4"
      assert_equal "projects/value0/locations/value1/backupPlans/value2/backups/value3/volumeBackups/value4", path
    end
  end

  def test_volume_restore_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::GkeBackup::V1::BackupForGKE::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.volume_restore_path project: "value0", location: "value1", restore_plan: "value2", restore: "value3", volume_restore: "value4"
      assert_equal "projects/value0/locations/value1/restorePlans/value2/restores/value3/volumeRestores/value4", path
    end
  end
end
