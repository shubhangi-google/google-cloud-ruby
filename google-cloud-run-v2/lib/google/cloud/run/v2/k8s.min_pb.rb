# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/k8s.min.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n!google/cloud/run/v2/k8s.min.proto\x12\x13google.cloud.run.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x81\x04\n\tContainer\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x12\n\x05image\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x0f\n\x07\x63ommand\x18\x03 \x03(\t\x12\x0c\n\x04\x61rgs\x18\x04 \x03(\t\x12(\n\x03\x65nv\x18\x05 \x03(\x0b\x32\x1b.google.cloud.run.v2.EnvVar\x12<\n\tresources\x18\x06 \x01(\x0b\x32).google.cloud.run.v2.ResourceRequirements\x12\x31\n\x05ports\x18\x07 \x03(\x0b\x32\".google.cloud.run.v2.ContainerPort\x12\x37\n\rvolume_mounts\x18\x08 \x03(\x0b\x32 .google.cloud.run.v2.VolumeMount\x12\x13\n\x0bworking_dir\x18\t \x01(\t\x12\x32\n\x0eliveness_probe\x18\n \x01(\x0b\x32\x1a.google.cloud.run.v2.Probe\x12\x31\n\rstartup_probe\x18\x0b \x01(\x0b\x32\x1a.google.cloud.run.v2.Probe\x12\x12\n\ndepends_on\x18\x0c \x03(\t\x12\x16\n\x0e\x62\x61se_image_uri\x18\r \x01(\t\x12\x37\n\nbuild_info\x18\x0f \x01(\x0b\x32\x1e.google.cloud.run.v2.BuildInfoB\x03\xe0\x41\x03\"\xb9\x01\n\x14ResourceRequirements\x12\x45\n\x06limits\x18\x01 \x03(\x0b\x32\x35.google.cloud.run.v2.ResourceRequirements.LimitsEntry\x12\x10\n\x08\x63pu_idle\x18\x02 \x01(\x08\x12\x19\n\x11startup_cpu_boost\x18\x03 \x01(\x08\x1a-\n\x0bLimitsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"q\n\x06\x45nvVar\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0f\n\x05value\x18\x02 \x01(\tH\x00\x12\x39\n\x0cvalue_source\x18\x03 \x01(\x0b\x32!.google.cloud.run.v2.EnvVarSourceH\x00\x42\x08\n\x06values\"N\n\x0c\x45nvVarSource\x12>\n\x0esecret_key_ref\x18\x01 \x01(\x0b\x32&.google.cloud.run.v2.SecretKeySelector\"\x92\x01\n\x11SecretKeySelector\x12;\n\x06secret\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#secretmanager.googleapis.com/Secret\x12@\n\x07version\x18\x02 \x01(\tB/\xfa\x41,\n*secretmanager.googleapis.com/SecretVersion\"5\n\rContainerPort\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x16\n\x0e\x63ontainer_port\x18\x03 \x01(\x05\"9\n\x0bVolumeMount\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nmount_path\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\xd4\x02\n\x06Volume\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x39\n\x06secret\x18\x02 \x01(\x0b\x32\'.google.cloud.run.v2.SecretVolumeSourceH\x00\x12\x43\n\x12\x63loud_sql_instance\x18\x03 \x01(\x0b\x32%.google.cloud.run.v2.CloudSqlInstanceH\x00\x12>\n\tempty_dir\x18\x04 \x01(\x0b\x32).google.cloud.run.v2.EmptyDirVolumeSourceH\x00\x12\x33\n\x03nfs\x18\x05 \x01(\x0b\x32$.google.cloud.run.v2.NFSVolumeSourceH\x00\x12\x33\n\x03gcs\x18\x06 \x01(\x0b\x32$.google.cloud.run.v2.GCSVolumeSourceH\x00\x42\r\n\x0bvolume_type\"r\n\x12SecretVolumeSource\x12\x13\n\x06secret\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x31\n\x05items\x18\x02 \x03(\x0b\x32\".google.cloud.run.v2.VersionToPath\x12\x14\n\x0c\x64\x65\x66\x61ult_mode\x18\x03 \x01(\x05\"A\n\rVersionToPath\x12\x11\n\x04path\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0f\n\x07version\x18\x02 \x01(\t\x12\x0c\n\x04mode\x18\x03 \x01(\x05\"%\n\x10\x43loudSqlInstance\x12\x11\n\tinstances\x18\x01 \x03(\t\"\x9a\x01\n\x14\x45mptyDirVolumeSource\x12@\n\x06medium\x18\x01 \x01(\x0e\x32\x30.google.cloud.run.v2.EmptyDirVolumeSource.Medium\x12\x12\n\nsize_limit\x18\x02 \x01(\t\",\n\x06Medium\x12\x16\n\x12MEDIUM_UNSPECIFIED\x10\x00\x12\n\n\x06MEMORY\x10\x01\"B\n\x0fNFSVolumeSource\x12\x0e\n\x06server\x18\x01 \x01(\t\x12\x0c\n\x04path\x18\x02 \x01(\t\x12\x11\n\tread_only\x18\x03 \x01(\x08\"K\n\x0fGCSVolumeSource\x12\x0e\n\x06\x62ucket\x18\x01 \x01(\t\x12\x11\n\tread_only\x18\x02 \x01(\x08\x12\x15\n\rmount_options\x18\x03 \x03(\t\"\xc8\x02\n\x05Probe\x12\"\n\x15initial_delay_seconds\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x1c\n\x0ftimeout_seconds\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x1b\n\x0eperiod_seconds\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\x12\x1e\n\x11\x66\x61ilure_threshold\x18\x04 \x01(\x05\x42\x03\xe0\x41\x01\x12;\n\x08http_get\x18\x05 \x01(\x0b\x32\".google.cloud.run.v2.HTTPGetActionB\x03\xe0\x41\x01H\x00\x12?\n\ntcp_socket\x18\x06 \x01(\x0b\x32$.google.cloud.run.v2.TCPSocketActionB\x03\xe0\x41\x01H\x00\x12\x34\n\x04grpc\x18\x07 \x01(\x0b\x32\x1f.google.cloud.run.v2.GRPCActionB\x03\xe0\x41\x01H\x00\x42\x0c\n\nprobe_type\"q\n\rHTTPGetAction\x12\x11\n\x04path\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12:\n\x0chttp_headers\x18\x04 \x03(\x0b\x32\x1f.google.cloud.run.v2.HTTPHeaderB\x03\xe0\x41\x01\x12\x11\n\x04port\x18\x05 \x01(\x05\x42\x03\xe0\x41\x01\"3\n\nHTTPHeader\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05value\x18\x02 \x01(\tB\x03\xe0\x41\x01\"$\n\x0fTCPSocketAction\x12\x11\n\x04port\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\"5\n\nGRPCAction\x12\x11\n\x04port\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x14\n\x07service\x18\x02 \x01(\tB\x03\xe0\x41\x01\"G\n\tBuildInfo\x12\x1c\n\x0f\x66unction_target\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1c\n\x0fsource_location\x18\x02 \x01(\tB\x03\xe0\x41\x03\x42\xe9\x03\n\x17\x63om.google.cloud.run.v2B\x0bK8sMinProtoP\x01Z)cloud.google.com/go/run/apiv2/runpb;runpb\xea\x41x\n!cloudkms.googleapis.com/CryptoKey\x12Sprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}\xea\x41J\n#secretmanager.googleapis.com/Secret\x12#projects/{project}/secrets/{secret}\xea\x41\x64\n*secretmanager.googleapis.com/SecretVersion\x12\x36projects/{project}/secrets/{secret}/versions/{version}\xea\x41\x64\n\"vpcaccess.googleapis.com/Connector\x12>projects/{project}/locations/{location}/connectors/{connector}b\x06proto3"

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
    module Run
      module V2
        Container = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Container").msgclass
        ResourceRequirements = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ResourceRequirements").msgclass
        EnvVar = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.EnvVar").msgclass
        EnvVarSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.EnvVarSource").msgclass
        SecretKeySelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SecretKeySelector").msgclass
        ContainerPort = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ContainerPort").msgclass
        VolumeMount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.VolumeMount").msgclass
        Volume = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Volume").msgclass
        SecretVolumeSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.SecretVolumeSource").msgclass
        VersionToPath = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.VersionToPath").msgclass
        CloudSqlInstance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.CloudSqlInstance").msgclass
        EmptyDirVolumeSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.EmptyDirVolumeSource").msgclass
        EmptyDirVolumeSource::Medium = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.EmptyDirVolumeSource.Medium").enummodule
        NFSVolumeSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.NFSVolumeSource").msgclass
        GCSVolumeSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GCSVolumeSource").msgclass
        Probe = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Probe").msgclass
        HTTPGetAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.HTTPGetAction").msgclass
        HTTPHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.HTTPHeader").msgclass
        TCPSocketAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.TCPSocketAction").msgclass
        GRPCAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GRPCAction").msgclass
        BuildInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.BuildInfo").msgclass
      end
    end
  end
end
