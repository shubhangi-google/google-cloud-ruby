# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/build.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n\x1fgoogle/cloud/run/v2/build.proto\x12\x13google.cloud.run.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\"\xba\x06\n\x12SubmitBuildRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\x0estorage_source\x18\x02 \x01(\x0b\x32\".google.cloud.run.v2.StorageSourceB\x03\xe0\x41\x02H\x00\x12\x16\n\timage_uri\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12R\n\x0f\x62uildpack_build\x18\x04 \x01(\x0b\x32\x37.google.cloud.run.v2.SubmitBuildRequest.BuildpacksBuildH\x01\x12K\n\x0c\x64ocker_build\x18\x05 \x01(\x0b\x32\x33.google.cloud.run.v2.SubmitBuildRequest.DockerBuildH\x01\x12\x1c\n\x0fservice_account\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x41\n\x0bworker_pool\x18\x07 \x01(\tB,\xe0\x41\x01\xfa\x41&\n$cloudbuild.googleapis.com/WorkerPool\x12\x11\n\x04tags\x18\x08 \x03(\tB\x03\xe0\x41\x01\x1a\r\n\x0b\x44ockerBuild\x1a\xf7\x02\n\x0f\x42uildpacksBuild\x12\x13\n\x07runtime\x18\x01 \x01(\tB\x02\x18\x01\x12\x1c\n\x0f\x66unction_target\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1c\n\x0f\x63\x61\x63he_image_uri\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x17\n\nbase_image\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12u\n\x15\x65nvironment_variables\x18\x05 \x03(\x0b\x32Q.google.cloud.run.v2.SubmitBuildRequest.BuildpacksBuild.EnvironmentVariablesEntryB\x03\xe0\x41\x01\x12%\n\x18\x65nable_automatic_updates\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\x12\x1f\n\x12project_descriptor\x18\x07 \x01(\tB\x03\xe0\x41\x01\x1a;\n\x19\x45nvironmentVariablesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\x08\n\x06sourceB\x0c\n\nbuild_type\"\x81\x01\n\x13SubmitBuildResponse\x12\x36\n\x0f\x62uild_operation\x18\x01 \x01(\x0b\x32\x1d.google.longrunning.Operation\x12\x16\n\x0e\x62\x61se_image_uri\x18\x02 \x01(\t\x12\x1a\n\x12\x62\x61se_image_warning\x18\x03 \x01(\t\"R\n\rStorageSource\x12\x13\n\x06\x62ucket\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x06object\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\ngeneration\x18\x03 \x01(\x03\x42\x03\xe0\x41\x01\x32\xf1\x01\n\x06\x42uilds\x12\x9e\x01\n\x0bSubmitBuild\x12\'.google.cloud.run.v2.SubmitBuildRequest\x1a(.google.cloud.run.v2.SubmitBuildResponse\"<\x82\xd3\xe4\x93\x02\x36\"1/v2/{parent=projects/*/locations/*}/builds:submit:\x01*\x1a\x46\xca\x41\x12run.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xbe\x01\n\x17\x63om.google.cloud.run.v2B\nBuildProtoP\x01Z)cloud.google.com/go/run/apiv2/runpb;runpb\xea\x41i\n$cloudbuild.googleapis.com/WorkerPool\x12\x41projects/{project}/locations/{location}/workerPools/{worker_pool}b\x06proto3"

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
    ["google.longrunning.Operation", "google/longrunning/operations.proto"],
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
    module Run
      module V2
        SubmitBuildRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SubmitBuildRequest").msgclass
        SubmitBuildRequest::DockerBuild = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SubmitBuildRequest.DockerBuild").msgclass
        SubmitBuildRequest::BuildpacksBuild = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SubmitBuildRequest.BuildpacksBuild").msgclass
        SubmitBuildResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SubmitBuildResponse").msgclass
        StorageSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.StorageSource").msgclass
      end
    end
  end
end
