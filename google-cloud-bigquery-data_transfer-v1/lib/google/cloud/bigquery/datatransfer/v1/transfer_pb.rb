# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/datatransfer/v1/transfer.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n4google/cloud/bigquery/datatransfer/v1/transfer.proto\x12%google.cloud.bigquery.datatransfer.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x17google/rpc/status.proto\"0\n\x10\x45mailPreferences\x12\x1c\n\x14\x65nable_failure_email\x18\x01 \x01(\x08\"\x90\x01\n\x0fScheduleOptions\x12\x1f\n\x17\x64isable_auto_scheduling\x18\x03 \x01(\x08\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xa7\x02\n\x11ScheduleOptionsV2\x12W\n\x13time_based_schedule\x18\x01 \x01(\x0b\x32\x38.google.cloud.bigquery.datatransfer.v1.TimeBasedScheduleH\x00\x12P\n\x0fmanual_schedule\x18\x02 \x01(\x0b\x32\x35.google.cloud.bigquery.datatransfer.v1.ManualScheduleH\x00\x12[\n\x15\x65vent_driven_schedule\x18\x03 \x01(\x0b\x32:.google.cloud.bigquery.datatransfer.v1.EventDrivenScheduleH\x00\x42\n\n\x08schedule\"\x83\x01\n\x11TimeBasedSchedule\x12\x10\n\x08schedule\x18\x01 \x01(\t\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x10\n\x0eManualSchedule\"2\n\x13\x45ventDrivenSchedule\x12\x1b\n\x13pubsub_subscription\x18\x01 \x01(\t\"(\n\x08UserInfo\x12\x12\n\x05\x65mail\x18\x01 \x01(\tH\x00\x88\x01\x01\x42\x08\n\x06_email\"\x9b\t\n\x0eTransferConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12 \n\x16\x64\x65stination_dataset_id\x18\x02 \x01(\tH\x00\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12\x16\n\x0e\x64\x61ta_source_id\x18\x05 \x01(\t\x12\'\n\x06params\x18\t \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x10\n\x08schedule\x18\x07 \x01(\t\x12P\n\x10schedule_options\x18\x18 \x01(\x0b\x32\x36.google.cloud.bigquery.datatransfer.v1.ScheduleOptions\x12U\n\x13schedule_options_v2\x18\x1f \x01(\x0b\x32\x38.google.cloud.bigquery.datatransfer.v1.ScheduleOptionsV2\x12 \n\x18\x64\x61ta_refresh_window_days\x18\x0c \x01(\x05\x12\x10\n\x08\x64isabled\x18\r \x01(\x08\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x36\n\rnext_run_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12H\n\x05state\x18\n \x01(\x0e\x32\x34.google.cloud.bigquery.datatransfer.v1.TransferStateB\x03\xe0\x41\x03\x12\x0f\n\x07user_id\x18\x0b \x01(\x03\x12\x1b\n\x0e\x64\x61taset_region\x18\x0e \x01(\tB\x03\xe0\x41\x03\x12!\n\x19notification_pubsub_topic\x18\x0f \x01(\t\x12R\n\x11\x65mail_preferences\x18\x12 \x01(\x0b\x32\x37.google.cloud.bigquery.datatransfer.v1.EmailPreferences\x12M\n\nowner_info\x18\x1b \x01(\x0b\x32/.google.cloud.bigquery.datatransfer.v1.UserInfoB\x03\xe0\x41\x03H\x01\x88\x01\x01\x12`\n\x18\x65ncryption_configuration\x18\x1c \x01(\x0b\x32>.google.cloud.bigquery.datatransfer.v1.EncryptionConfiguration\x12&\n\x05\x65rror\x18  \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03:\xb9\x01\xea\x41\xb5\x01\n2bigquerydatatransfer.googleapis.com/TransferConfig\x12\x34projects/{project}/transferConfigs/{transfer_config}\x12Iprojects/{project}/locations/{location}/transferConfigs/{transfer_config}B\r\n\x0b\x64\x65stinationB\r\n\x0b_owner_info\"M\n\x17\x45ncryptionConfiguration\x12\x32\n\x0ckms_key_name\x18\x01 \x01(\x0b\x32\x1c.google.protobuf.StringValue\"\xff\x06\n\x0bTransferRun\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x31\n\rschedule_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08run_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12(\n\x0c\x65rror_status\x18\x15 \x01(\x0b\x32\x12.google.rpc.Status\x12\x33\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12,\n\x06params\x18\t \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x03\x12%\n\x16\x64\x65stination_dataset_id\x18\x02 \x01(\tB\x03\xe0\x41\x03H\x00\x12\x1b\n\x0e\x64\x61ta_source_id\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x43\n\x05state\x18\x08 \x01(\x0e\x32\x34.google.cloud.bigquery.datatransfer.v1.TransferState\x12\x0f\n\x07user_id\x18\x0b \x01(\x03\x12\x15\n\x08schedule\x18\x0c \x01(\tB\x03\xe0\x41\x03\x12&\n\x19notification_pubsub_topic\x18\x17 \x01(\tB\x03\xe0\x41\x03\x12W\n\x11\x65mail_preferences\x18\x19 \x01(\x0b\x32\x37.google.cloud.bigquery.datatransfer.v1.EmailPreferencesB\x03\xe0\x41\x03:\xc4\x01\xea\x41\xc0\x01\n\'bigquerydatatransfer.googleapis.com/Run\x12?projects/{project}/transferConfigs/{transfer_config}/runs/{run}\x12Tprojects/{project}/locations/{location}/transferConfigs/{transfer_config}/runs/{run}B\r\n\x0b\x64\x65stination\"\x8a\x02\n\x0fTransferMessage\x12\x30\n\x0cmessage_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12X\n\x08severity\x18\x02 \x01(\x0e\x32\x46.google.cloud.bigquery.datatransfer.v1.TransferMessage.MessageSeverity\x12\x14\n\x0cmessage_text\x18\x03 \x01(\t\"U\n\x0fMessageSeverity\x12 \n\x1cMESSAGE_SEVERITY_UNSPECIFIED\x10\x00\x12\x08\n\x04INFO\x10\x01\x12\x0b\n\x07WARNING\x10\x02\x12\t\n\x05\x45RROR\x10\x03*K\n\x0cTransferType\x12\x1d\n\x19TRANSFER_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41TCH\x10\x01\x12\r\n\tSTREAMING\x10\x02\x1a\x02\x18\x01*s\n\rTransferState\x12\x1e\n\x1aTRANSFER_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x02\x12\x0b\n\x07RUNNING\x10\x03\x12\r\n\tSUCCEEDED\x10\x04\x12\n\n\x06\x46\x41ILED\x10\x05\x12\r\n\tCANCELLED\x10\x06\x42\x8f\x02\n)com.google.cloud.bigquery.datatransfer.v1B\rTransferProtoP\x01ZMcloud.google.com/go/bigquery/datatransfer/apiv1/datatransferpb;datatransferpb\xa2\x02\x05GCBDT\xaa\x02%Google.Cloud.BigQuery.DataTransfer.V1\xca\x02%Google\\Cloud\\BigQuery\\DataTransfer\\V1\xea\x02)Google::Cloud::Bigquery::DataTransfer::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.StringValue", "google/protobuf/wrappers.proto"],
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
    module Bigquery
      module DataTransfer
        module V1
          EmailPreferences = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.EmailPreferences").msgclass
          ScheduleOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ScheduleOptions").msgclass
          ScheduleOptionsV2 = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ScheduleOptionsV2").msgclass
          TimeBasedSchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TimeBasedSchedule").msgclass
          ManualSchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ManualSchedule").msgclass
          EventDrivenSchedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.EventDrivenSchedule").msgclass
          UserInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.UserInfo").msgclass
          TransferConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferConfig").msgclass
          EncryptionConfiguration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.EncryptionConfiguration").msgclass
          TransferRun = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferRun").msgclass
          TransferMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferMessage").msgclass
          TransferMessage::MessageSeverity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferMessage.MessageSeverity").enummodule
          TransferType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferType").enummodule
          TransferState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferState").enummodule
        end
      end
    end
  end
end
