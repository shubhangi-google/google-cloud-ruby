# frozen_string_literal: true

# Copyright 2024 Google LLC
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


module Google
  module Cloud
    module SecurityCenter
      module V1
        # Information related to Google Cloud Backup and DR Service findings.
        # @!attribute [rw] backup_template
        #   @return [::String]
        #     The name of a Backup and DR template which comprises one or more backup
        #     policies. See the [Backup and DR
        #     documentation](https://cloud.google.com/backup-disaster-recovery/docs/concepts/backup-plan#temp)
        #     for more information. For example, `snap-ov`.
        # @!attribute [rw] policies
        #   @return [::Array<::String>]
        #     The names of Backup and DR policies that are associated with a template
        #     and that define when to run a backup, how frequently to run a backup, and
        #     how long to retain the backup image. For example, `onvaults`.
        # @!attribute [rw] host
        #   @return [::String]
        #     The name of a Backup and DR host, which is managed by the backup and
        #     recovery appliance and known to the management console. The host can be of
        #     type Generic (for example, Compute Engine, SQL Server, Oracle DB, SMB file
        #     system, etc.), vCenter, or an ESX server. See the [Backup and DR
        #     documentation on
        #     hosts](https://cloud.google.com/backup-disaster-recovery/docs/configuration/manage-hosts-and-their-applications)
        #     for more information. For example, `centos7-01`.
        # @!attribute [rw] applications
        #   @return [::Array<::String>]
        #     The names of Backup and DR applications. An application is a VM, database,
        #     or file system on a managed host monitored by a backup and recovery
        #     appliance. For example, `centos7-01-vol00`, `centos7-01-vol01`,
        #     `centos7-01-vol02`.
        # @!attribute [rw] storage_pool
        #   @return [::String]
        #     The name of the Backup and DR storage pool that the backup and recovery
        #     appliance is storing data in. The storage pool could be of type Cloud,
        #     Primary, Snapshot, or OnVault. See the [Backup and DR documentation on
        #     storage
        #     pools](https://cloud.google.com/backup-disaster-recovery/docs/concepts/storage-pools).
        #     For example, `DiskPoolOne`.
        # @!attribute [rw] policy_options
        #   @return [::Array<::String>]
        #     The names of Backup and DR advanced policy options of a policy applying to
        #     an application. See the [Backup and DR documentation on policy
        #     options](https://cloud.google.com/backup-disaster-recovery/docs/create-plan/policy-settings).
        #     For example, `skipofflineappsincongrp, nounmap`.
        # @!attribute [rw] profile
        #   @return [::String]
        #     The name of the Backup and DR resource profile that specifies the storage
        #     media for backups of application and VM data. See the [Backup and DR
        #     documentation on
        #     profiles](https://cloud.google.com/backup-disaster-recovery/docs/concepts/backup-plan#profile).
        #     For example, `GCP`.
        # @!attribute [rw] appliance
        #   @return [::String]
        #     The name of the Backup and DR appliance that captures, moves, and manages
        #     the lifecycle of backup data. For example, `backup-server-57137`.
        # @!attribute [rw] backup_type
        #   @return [::String]
        #     The backup type of the Backup and DR image.
        #     For example, `Snapshot`, `Remote Snapshot`, `OnVault`.
        # @!attribute [rw] backup_create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp at which the Backup and DR backup was created.
        class BackupDisasterRecovery
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end