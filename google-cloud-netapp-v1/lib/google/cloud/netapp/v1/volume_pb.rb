# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/netapp/v1/volume.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/netapp/v1/common_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n#google/cloud/netapp/v1/volume.proto\x12\x16google.cloud.netapp.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/netapp/v1/common.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x93\x01\n\x12ListVolumesRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\x12\x1cnetapp.googleapis.com/Volume\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"t\n\x13ListVolumesResponse\x12/\n\x07volumes\x18\x01 \x03(\x0b\x32\x1e.google.cloud.netapp.v1.Volume\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"F\n\x10GetVolumeRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1cnetapp.googleapis.com/Volume\"\x98\x01\n\x13\x43reateVolumeRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\x12\x1cnetapp.googleapis.com/Volume\x12\x16\n\tvolume_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x33\n\x06volume\x18\x03 \x01(\x0b\x32\x1e.google.cloud.netapp.v1.VolumeB\x03\xe0\x41\x02\"\x80\x01\n\x13UpdateVolumeRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x33\n\x06volume\x18\x02 \x01(\x0b\x32\x1e.google.cloud.netapp.v1.VolumeB\x03\xe0\x41\x02\"X\n\x13\x44\x65leteVolumeRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1cnetapp.googleapis.com/Volume\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\"c\n\x13RevertVolumeRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1cnetapp.googleapis.com/Volume\x12\x18\n\x0bsnapshot_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\x84\x0f\n\x06Volume\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x38\n\x05state\x18\x02 \x01(\x0e\x32$.google.cloud.netapp.v1.Volume.StateB\x03\xe0\x41\x03\x12\x1a\n\rstate_details\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x17\n\nshare_name\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tpsa_range\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12?\n\x0cstorage_pool\x18\x07 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!netapp.googleapis.com/StoragePool\x12\x37\n\x07network\x18\x08 \x01(\tB&\xe0\x41\x03\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12@\n\rservice_level\x18\t \x01(\x0e\x32$.google.cloud.netapp.v1.ServiceLevelB\x03\xe0\x41\x03\x12\x19\n\x0c\x63\x61pacity_gib\x18\n \x01(\x03\x42\x03\xe0\x41\x02\x12@\n\rexport_policy\x18\x0b \x01(\x0b\x32$.google.cloud.netapp.v1.ExportPolicyB\x03\xe0\x41\x01\x12\x39\n\tprotocols\x18\x0c \x03(\x0e\x32!.google.cloud.netapp.v1.ProtocolsB\x03\xe0\x41\x02\x12>\n\x0csmb_settings\x18\r \x03(\x0e\x32#.google.cloud.netapp.v1.SMBSettingsB\x03\xe0\x41\x01\x12?\n\rmount_options\x18\x0e \x03(\x0b\x32#.google.cloud.netapp.v1.MountOptionB\x03\xe0\x41\x03\x12\x1d\n\x10unix_permissions\x18\x0f \x01(\tB\x03\xe0\x41\x01\x12?\n\x06labels\x18\x10 \x03(\x0b\x32*.google.cloud.netapp.v1.Volume.LabelsEntryB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x11 \x01(\tB\x03\xe0\x41\x01\x12\x44\n\x0fsnapshot_policy\x18\x12 \x01(\x0b\x32&.google.cloud.netapp.v1.SnapshotPolicyB\x03\xe0\x41\x01\x12\x19\n\x0csnap_reserve\x18\x13 \x01(\x01\x42\x03\xe0\x41\x01\x12\x1f\n\x12snapshot_directory\x18\x14 \x01(\x08\x42\x03\xe0\x41\x01\x12\x15\n\x08used_gib\x18\x15 \x01(\x03\x42\x03\xe0\x41\x03\x12\x42\n\x0esecurity_style\x18\x16 \x01(\x0e\x32%.google.cloud.netapp.v1.SecurityStyleB\x03\xe0\x41\x01\x12\x1d\n\x10kerberos_enabled\x18\x17 \x01(\x08\x42\x03\xe0\x41\x01\x12\x19\n\x0cldap_enabled\x18\x18 \x01(\x08\x42\x03\xe0\x41\x03\x12G\n\x10\x61\x63tive_directory\x18\x19 \x01(\tB-\xe0\x41\x03\xfa\x41\'\n%netapp.googleapis.com/ActiveDirectory\x12J\n\x12restore_parameters\x18\x1a \x01(\x0b\x32).google.cloud.netapp.v1.RestoreParametersB\x03\xe0\x41\x01\x12;\n\nkms_config\x18\x1b \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1fnetapp.googleapis.com/KmsConfig\x12\x44\n\x0f\x65ncryption_type\x18\x1c \x01(\x0e\x32&.google.cloud.netapp.v1.EncryptionTypeB\x03\xe0\x41\x03\x12\x1c\n\x0fhas_replication\x18\x1d \x01(\x08\x42\x03\xe0\x41\x03\x12@\n\rbackup_config\x18\x1e \x01(\x0b\x32$.google.cloud.netapp.v1.BackupConfigH\x00\x88\x01\x01\x12I\n\x12restricted_actions\x18\x1f \x03(\x0e\x32(.google.cloud.netapp.v1.RestrictedActionB\x03\xe0\x41\x01\x12\x42\n\x0etiering_policy\x18\" \x01(\x0b\x32%.google.cloud.netapp.v1.TieringPolicyH\x01\x88\x01\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"{\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0c\n\x08\x43REATING\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\x0c\n\x08UPDATING\x10\x04\x12\r\n\tRESTORING\x10\x05\x12\x0c\n\x08\x44ISABLED\x10\x06\x12\t\n\x05\x45RROR\x10\x07:l\xea\x41i\n\x1cnetapp.googleapis.com/Volume\x12\x38projects/{project}/locations/{location}/volumes/{volume}*\x07volumes2\x06volumeB\x10\n\x0e_backup_configB\x11\n\x0f_tiering_policy\"R\n\x0c\x45xportPolicy\x12\x42\n\x05rules\x18\x01 \x03(\x0b\x32..google.cloud.netapp.v1.SimpleExportPolicyRuleB\x03\xe0\x41\x02\"\xfc\x04\n\x16SimpleExportPolicyRule\x12\x1c\n\x0f\x61llowed_clients\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x1c\n\x0fhas_root_access\x18\x02 \x01(\tH\x01\x88\x01\x01\x12<\n\x0b\x61\x63\x63\x65ss_type\x18\x03 \x01(\x0e\x32\".google.cloud.netapp.v1.AccessTypeH\x02\x88\x01\x01\x12\x12\n\x05nfsv3\x18\x04 \x01(\x08H\x03\x88\x01\x01\x12\x12\n\x05nfsv4\x18\x05 \x01(\x08H\x04\x88\x01\x01\x12!\n\x14kerberos_5_read_only\x18\x06 \x01(\x08H\x05\x88\x01\x01\x12\"\n\x15kerberos_5_read_write\x18\x07 \x01(\x08H\x06\x88\x01\x01\x12\"\n\x15kerberos_5i_read_only\x18\x08 \x01(\x08H\x07\x88\x01\x01\x12#\n\x16kerberos_5i_read_write\x18\t \x01(\x08H\x08\x88\x01\x01\x12\"\n\x15kerberos_5p_read_only\x18\n \x01(\x08H\t\x88\x01\x01\x12#\n\x16kerberos_5p_read_write\x18\x0b \x01(\x08H\n\x88\x01\x01\x42\x12\n\x10_allowed_clientsB\x12\n\x10_has_root_accessB\x0e\n\x0c_access_typeB\x08\n\x06_nfsv3B\x08\n\x06_nfsv4B\x17\n\x15_kerberos_5_read_onlyB\x18\n\x16_kerberos_5_read_writeB\x18\n\x16_kerberos_5i_read_onlyB\x19\n\x17_kerberos_5i_read_writeB\x18\n\x16_kerberos_5p_read_onlyB\x19\n\x17_kerberos_5p_read_write\"\x9a\x03\n\x0eSnapshotPolicy\x12\x14\n\x07\x65nabled\x18\x01 \x01(\x08H\x00\x88\x01\x01\x12\x44\n\x0fhourly_schedule\x18\x02 \x01(\x0b\x32&.google.cloud.netapp.v1.HourlyScheduleH\x01\x88\x01\x01\x12\x42\n\x0e\x64\x61ily_schedule\x18\x03 \x01(\x0b\x32%.google.cloud.netapp.v1.DailyScheduleH\x02\x88\x01\x01\x12\x44\n\x0fweekly_schedule\x18\x04 \x01(\x0b\x32&.google.cloud.netapp.v1.WeeklyScheduleH\x03\x88\x01\x01\x12\x46\n\x10monthly_schedule\x18\x05 \x01(\x0b\x32\'.google.cloud.netapp.v1.MonthlyScheduleH\x04\x88\x01\x01\x42\n\n\x08_enabledB\x12\n\x10_hourly_scheduleB\x11\n\x0f_daily_scheduleB\x12\n\x10_weekly_scheduleB\x13\n\x11_monthly_schedule\"f\n\x0eHourlySchedule\x12\x1e\n\x11snapshots_to_keep\x18\x01 \x01(\x01H\x00\x88\x01\x01\x12\x13\n\x06minute\x18\x02 \x01(\x01H\x01\x88\x01\x01\x42\x14\n\x12_snapshots_to_keepB\t\n\x07_minute\"\x81\x01\n\rDailySchedule\x12\x1e\n\x11snapshots_to_keep\x18\x01 \x01(\x01H\x00\x88\x01\x01\x12\x13\n\x06minute\x18\x02 \x01(\x01H\x01\x88\x01\x01\x12\x11\n\x04hour\x18\x03 \x01(\x01H\x02\x88\x01\x01\x42\x14\n\x12_snapshots_to_keepB\t\n\x07_minuteB\x07\n\x05_hour\"\x9c\x01\n\x0eWeeklySchedule\x12\x1e\n\x11snapshots_to_keep\x18\x01 \x01(\x01H\x00\x88\x01\x01\x12\x13\n\x06minute\x18\x02 \x01(\x01H\x01\x88\x01\x01\x12\x11\n\x04hour\x18\x03 \x01(\x01H\x02\x88\x01\x01\x12\x10\n\x03\x64\x61y\x18\x04 \x01(\tH\x03\x88\x01\x01\x42\x14\n\x12_snapshots_to_keepB\t\n\x07_minuteB\x07\n\x05_hourB\x06\n\x04_day\"\xb1\x01\n\x0fMonthlySchedule\x12\x1e\n\x11snapshots_to_keep\x18\x01 \x01(\x01H\x00\x88\x01\x01\x12\x13\n\x06minute\x18\x02 \x01(\x01H\x01\x88\x01\x01\x12\x11\n\x04hour\x18\x03 \x01(\x01H\x02\x88\x01\x01\x12\x1a\n\rdays_of_month\x18\x04 \x01(\tH\x03\x88\x01\x01\x42\x14\n\x12_snapshots_to_keepB\t\n\x07_minuteB\x07\n\x05_hourB\x10\n\x0e_days_of_month\"}\n\x0bMountOption\x12\x0e\n\x06\x65xport\x18\x01 \x01(\t\x12\x13\n\x0b\x65xport_full\x18\x02 \x01(\t\x12\x33\n\x08protocol\x18\x03 \x01(\x0e\x32!.google.cloud.netapp.v1.Protocols\x12\x14\n\x0cinstructions\x18\x04 \x01(\t\"Q\n\x11RestoreParameters\x12\x19\n\x0fsource_snapshot\x18\x01 \x01(\tH\x00\x12\x17\n\rsource_backup\x18\x02 \x01(\tH\x00\x42\x08\n\x06source\"\x9a\x02\n\x0c\x42\x61\x63kupConfig\x12\x43\n\x0f\x62\x61\x63kup_policies\x18\x01 \x03(\tB*\xe0\x41\x01\xfa\x41$\n\"netapp.googleapis.com/BackupPolicy\x12?\n\x0c\x62\x61\x63kup_vault\x18\x02 \x01(\tB)\xe0\x41\x01\xfa\x41#\n!netapp.googleapis.com/BackupVault\x12*\n\x18scheduled_backup_enabled\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01H\x00\x88\x01\x01\x12$\n\x12\x62\x61\x63kup_chain_bytes\x18\x04 \x01(\x03\x42\x03\xe0\x41\x03H\x01\x88\x01\x01\x42\x1b\n\x19_scheduled_backup_enabledB\x15\n\x13_backup_chain_bytes\"\xf9\x01\n\rTieringPolicy\x12O\n\x0btier_action\x18\x01 \x01(\x0e\x32\x30.google.cloud.netapp.v1.TieringPolicy.TierActionB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12(\n\x16\x63ooling_threshold_days\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01H\x01\x88\x01\x01\"B\n\nTierAction\x12\x1b\n\x17TIER_ACTION_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\n\n\x06PAUSED\x10\x02\x42\x0e\n\x0c_tier_actionB\x19\n\x17_cooling_threshold_days*E\n\tProtocols\x12\x19\n\x15PROTOCOLS_UNSPECIFIED\x10\x00\x12\t\n\x05NFSV3\x10\x01\x12\t\n\x05NFSV4\x10\x02\x12\x07\n\x03SMB\x10\x03*W\n\nAccessType\x12\x1b\n\x17\x41\x43\x43\x45SS_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tREAD_ONLY\x10\x01\x12\x0e\n\nREAD_WRITE\x10\x02\x12\r\n\tREAD_NONE\x10\x03*\xe8\x01\n\x0bSMBSettings\x12\x1c\n\x18SMB_SETTINGS_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x45NCRYPT_DATA\x10\x01\x12\r\n\tBROWSABLE\x10\x02\x12\x11\n\rCHANGE_NOTIFY\x10\x03\x12\x11\n\rNON_BROWSABLE\x10\x04\x12\x0b\n\x07OPLOCKS\x10\x05\x12\x11\n\rSHOW_SNAPSHOT\x10\x06\x12\x1a\n\x16SHOW_PREVIOUS_VERSIONS\x10\x07\x12\x1c\n\x18\x41\x43\x43\x45SS_BASED_ENUMERATION\x10\x08\x12\x1a\n\x16\x43ONTINUOUSLY_AVAILABLE\x10\t*C\n\rSecurityStyle\x12\x1e\n\x1aSECURITY_STYLE_UNSPECIFIED\x10\x00\x12\x08\n\x04NTFS\x10\x01\x12\x08\n\x04UNIX\x10\x02*A\n\x10RestrictedAction\x12!\n\x1dRESTRICTED_ACTION_UNSPECIFIED\x10\x00\x12\n\n\x06\x44\x45LETE\x10\x01\x42\xad\x01\n\x1a\x63om.google.cloud.netapp.v1B\x0bVolumeProtoP\x01Z2cloud.google.com/go/netapp/apiv1/netapppb;netapppb\xaa\x02\x16Google.Cloud.NetApp.V1\xca\x02\x16Google\\Cloud\\NetApp\\V1\xea\x02\x19Google::Cloud::NetApp::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module NetApp
      module V1
        ListVolumesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListVolumesRequest").msgclass
        ListVolumesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListVolumesResponse").msgclass
        GetVolumeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.GetVolumeRequest").msgclass
        CreateVolumeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.CreateVolumeRequest").msgclass
        UpdateVolumeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.UpdateVolumeRequest").msgclass
        DeleteVolumeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.DeleteVolumeRequest").msgclass
        RevertVolumeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.RevertVolumeRequest").msgclass
        Volume = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Volume").msgclass
        Volume::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Volume.State").enummodule
        ExportPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ExportPolicy").msgclass
        SimpleExportPolicyRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.SimpleExportPolicyRule").msgclass
        SnapshotPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.SnapshotPolicy").msgclass
        HourlySchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.HourlySchedule").msgclass
        DailySchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.DailySchedule").msgclass
        WeeklySchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.WeeklySchedule").msgclass
        MonthlySchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.MonthlySchedule").msgclass
        MountOption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.MountOption").msgclass
        RestoreParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.RestoreParameters").msgclass
        BackupConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.BackupConfig").msgclass
        TieringPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.TieringPolicy").msgclass
        TieringPolicy::TierAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.TieringPolicy.TierAction").enummodule
        Protocols = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Protocols").enummodule
        AccessType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.AccessType").enummodule
        SMBSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.SMBSettings").enummodule
        SecurityStyle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.SecurityStyle").enummodule
        RestrictedAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.RestrictedAction").enummodule
      end
    end
  end
end
