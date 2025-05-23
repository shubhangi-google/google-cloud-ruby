# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/alloydb/v1/csql_resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n,google/cloud/alloydb/v1/csql_resources.proto\x12\x17google.cloud.alloydb.v1\x1a\x1fgoogle/api/field_behavior.proto\"`\n\x17\x43loudSQLBackupRunSource\x12\x0f\n\x07project\x18\x01 \x01(\t\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x1a\n\rbackup_run_id\x18\x03 \x01(\x03\x42\x03\xe0\x41\x02\x42\xbb\x01\n\x1b\x63om.google.cloud.alloydb.v1B\x12\x43sqlResourcesProtoP\x01Z5cloud.google.com/go/alloydb/apiv1/alloydbpb;alloydbpb\xaa\x02\x17Google.Cloud.AlloyDb.V1\xca\x02\x17Google\\Cloud\\AlloyDb\\V1\xea\x02\x1aGoogle::Cloud::AlloyDB::V1b\x06proto3"

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
    module AlloyDB
      module V1
        CloudSQLBackupRunSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CloudSQLBackupRunSource").msgclass
      end
    end
  end
end
