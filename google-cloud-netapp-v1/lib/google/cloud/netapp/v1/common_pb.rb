# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/netapp/v1/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n#google/cloud/netapp/v1/common.proto\x12\x16google.cloud.netapp.v1\x1a\x1fgoogle/api/field_behavior.proto\"\xb1\x01\n\x10LocationMetadata\x12K\n\x18supported_service_levels\x18\x01 \x03(\x0e\x32$.google.cloud.netapp.v1.ServiceLevelB\x03\xe0\x41\x03\x12P\n\x1asupported_flex_performance\x18\x02 \x03(\x0e\x32\'.google.cloud.netapp.v1.FlexPerformanceB\x03\xe0\x41\x03*_\n\x0cServiceLevel\x12\x1d\n\x19SERVICE_LEVEL_UNSPECIFIED\x10\x00\x12\x0b\n\x07PREMIUM\x10\x01\x12\x0b\n\x07\x45XTREME\x10\x02\x12\x0c\n\x08STANDARD\x10\x03\x12\x08\n\x04\x46LEX\x10\x04*n\n\x0f\x46lexPerformance\x12 \n\x1c\x46LEX_PERFORMANCE_UNSPECIFIED\x10\x00\x12\x1c\n\x18\x46LEX_PERFORMANCE_DEFAULT\x10\x01\x12\x1b\n\x17\x46LEX_PERFORMANCE_CUSTOM\x10\x02*U\n\x0e\x45ncryptionType\x12\x1f\n\x1b\x45NCRYPTION_TYPE_UNSPECIFIED\x10\x00\x12\x13\n\x0fSERVICE_MANAGED\x10\x01\x12\r\n\tCLOUD_KMS\x10\x02*T\n\x14\x44irectoryServiceType\x12&\n\"DIRECTORY_SERVICE_TYPE_UNSPECIFIED\x10\x00\x12\x14\n\x10\x41\x43TIVE_DIRECTORY\x10\x01\x42\xad\x01\n\x1a\x63om.google.cloud.netapp.v1B\x0b\x43ommonProtoP\x01Z2cloud.google.com/go/netapp/apiv1/netapppb;netapppb\xaa\x02\x16Google.Cloud.NetApp.V1\xca\x02\x16Google\\Cloud\\NetApp\\V1\xea\x02\x19Google::Cloud::NetApp::V1b\x06proto3"

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
    module NetApp
      module V1
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.LocationMetadata").msgclass
        ServiceLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ServiceLevel").enummodule
        FlexPerformance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.FlexPerformance").enummodule
        EncryptionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.EncryptionType").enummodule
        DirectoryServiceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.DirectoryServiceType").enummodule
      end
    end
  end
end
