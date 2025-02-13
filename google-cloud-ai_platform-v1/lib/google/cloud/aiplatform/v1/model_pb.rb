# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/deployed_model_ref_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/env_var_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/cloud/aiplatform/v1/model.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/aiplatform/v1/deployed_model_ref.proto\x1a\x30google/cloud/aiplatform/v1/encryption_spec.proto\x1a(google/cloud/aiplatform/v1/env_var.proto\x1a,google/cloud/aiplatform/v1/explanation.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd6\x15\n\x05Model\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x1a\n\nversion_id\x18\x1c \x01(\tB\x06\xe0\x41\x05\xe0\x41\x03\x12\x17\n\x0fversion_aliases\x18\x1d \x03(\t\x12<\n\x13version_create_time\x18\x1f \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12<\n\x13version_update_time\x18  \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x1b\n\x13version_description\x18\x1e \x01(\t\x12\x1d\n\x15\x64\x65\x66\x61ult_checkpoint_id\x18\x35 \x01(\t\x12\x45\n\x10predict_schemata\x18\x04 \x01(\x0b\x32+.google.cloud.aiplatform.v1.PredictSchemata\x12 \n\x13metadata_schema_uri\x18\x05 \x01(\tB\x03\xe0\x41\x05\x12-\n\x08metadata\x18\x06 \x01(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x05\x12U\n\x18supported_export_formats\x18\x14 \x03(\x0b\x32..google.cloud.aiplatform.v1.Model.ExportFormatB\x03\xe0\x41\x03\x12M\n\x11training_pipeline\x18\x07 \x01(\tB2\xe0\x41\x03\xfa\x41,\n*aiplatform.googleapis.com/TrainingPipeline\x12\x43\n\x0cpipeline_job\x18/ \x01(\tB-\xe0\x41\x01\xfa\x41\'\n%aiplatform.googleapis.com/PipelineJob\x12K\n\x0e\x63ontainer_spec\x18\t \x01(\x0b\x32..google.cloud.aiplatform.v1.ModelContainerSpecB\x03\xe0\x41\x04\x12\x19\n\x0c\x61rtifact_uri\x18\x1a \x01(\tB\x03\xe0\x41\x05\x12l\n$supported_deployment_resources_types\x18\n \x03(\x0e\x32\x39.google.cloud.aiplatform.v1.Model.DeploymentResourcesTypeB\x03\xe0\x41\x03\x12,\n\x1fsupported_input_storage_formats\x18\x0b \x03(\tB\x03\xe0\x41\x03\x12-\n supported_output_storage_formats\x18\x0c \x03(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\r \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0e \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12J\n\x0f\x64\x65ployed_models\x18\x0f \x03(\x0b\x32,.google.cloud.aiplatform.v1.DeployedModelRefB\x03\xe0\x41\x03\x12\x45\n\x10\x65xplanation_spec\x18\x17 \x01(\x0b\x32+.google.cloud.aiplatform.v1.ExplanationSpec\x12\x0c\n\x04\x65tag\x18\x10 \x01(\t\x12=\n\x06labels\x18\x11 \x03(\x0b\x32-.google.cloud.aiplatform.v1.Model.LabelsEntry\x12?\n\ndata_stats\x18\x15 \x01(\x0b\x32+.google.cloud.aiplatform.v1.Model.DataStats\x12\x43\n\x0f\x65ncryption_spec\x18\x18 \x01(\x0b\x32*.google.cloud.aiplatform.v1.EncryptionSpec\x12K\n\x11model_source_info\x18& \x01(\x0b\x32+.google.cloud.aiplatform.v1.ModelSourceInfoB\x03\xe0\x41\x03\x12U\n\x13original_model_info\x18\" \x01(\x0b\x32\x33.google.cloud.aiplatform.v1.Model.OriginalModelInfoB\x03\xe0\x41\x03\x12\x1e\n\x11metadata_artifact\x18, \x01(\tB\x03\xe0\x41\x03\x12Q\n\x11\x62\x61se_model_source\x18\x32 \x01(\x0b\x32\x31.google.cloud.aiplatform.v1.Model.BaseModelSourceB\x03\xe0\x41\x01\x12\x1a\n\rsatisfies_pzs\x18\x33 \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzi\x18\x34 \x01(\x08\x42\x03\xe0\x41\x03\x1a\xd5\x01\n\x0c\x45xportFormat\x12\x0f\n\x02id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x62\n\x13\x65xportable_contents\x18\x02 \x03(\x0e\x32@.google.cloud.aiplatform.v1.Model.ExportFormat.ExportableContentB\x03\xe0\x41\x03\"P\n\x11\x45xportableContent\x12\"\n\x1e\x45XPORTABLE_CONTENT_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x41RTIFACT\x10\x01\x12\t\n\x05IMAGE\x10\x02\x1a\xdc\x01\n\tDataStats\x12!\n\x19training_data_items_count\x18\x01 \x01(\x03\x12#\n\x1bvalidation_data_items_count\x18\x02 \x01(\x03\x12\x1d\n\x15test_data_items_count\x18\x03 \x01(\x03\x12\"\n\x1atraining_annotations_count\x18\x04 \x01(\x03\x12$\n\x1cvalidation_annotations_count\x18\x05 \x01(\x03\x12\x1e\n\x16test_annotations_count\x18\x06 \x01(\x03\x1aK\n\x11OriginalModelInfo\x12\x36\n\x05model\x18\x01 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Model\x1a\xaa\x01\n\x0f\x42\x61seModelSource\x12L\n\x13model_garden_source\x18\x01 \x01(\x0b\x32-.google.cloud.aiplatform.v1.ModelGardenSourceH\x00\x12?\n\x0cgenie_source\x18\x02 \x01(\x0b\x32\'.google.cloud.aiplatform.v1.GenieSourceH\x00\x42\x08\n\x06source\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x8c\x01\n\x17\x44\x65ploymentResourcesType\x12)\n%DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED\x10\x00\x12\x17\n\x13\x44\x45\x44ICATED_RESOURCES\x10\x01\x12\x17\n\x13\x41UTOMATIC_RESOURCES\x10\x02\x12\x14\n\x10SHARED_RESOURCES\x10\x03:\\\xea\x41Y\n\x1f\x61iplatform.googleapis.com/Model\x12\x36projects/{project}/locations/{location}/models/{model}\"(\n\x13LargeModelReference\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"3\n\x11ModelGardenSource\x12\x1e\n\x11public_model_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\"*\n\x0bGenieSource\x12\x1b\n\x0e\x62\x61se_model_uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\"{\n\x0fPredictSchemata\x12 \n\x13instance_schema_uri\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\"\n\x15parameters_schema_uri\x18\x02 \x01(\tB\x03\xe0\x41\x05\x12\"\n\x15prediction_schema_uri\x18\x03 \x01(\tB\x03\xe0\x41\x05\"\xd3\x04\n\x12ModelContainerSpec\x12\x19\n\timage_uri\x18\x01 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12\x14\n\x07\x63ommand\x18\x02 \x03(\tB\x03\xe0\x41\x05\x12\x11\n\x04\x61rgs\x18\x03 \x03(\tB\x03\xe0\x41\x05\x12\x34\n\x03\x65nv\x18\x04 \x03(\x0b\x32\".google.cloud.aiplatform.v1.EnvVarB\x03\xe0\x41\x05\x12\x34\n\x05ports\x18\x05 \x03(\x0b\x32 .google.cloud.aiplatform.v1.PortB\x03\xe0\x41\x05\x12\x1a\n\rpredict_route\x18\x06 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0chealth_route\x18\x07 \x01(\tB\x03\xe0\x41\x05\x12\x39\n\ngrpc_ports\x18\t \x03(\x0b\x32 .google.cloud.aiplatform.v1.PortB\x03\xe0\x41\x05\x12:\n\x12\x64\x65ployment_timeout\x18\n \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x05\x12\"\n\x15shared_memory_size_mb\x18\x0b \x01(\x03\x42\x03\xe0\x41\x05\x12=\n\rstartup_probe\x18\x0c \x01(\x0b\x32!.google.cloud.aiplatform.v1.ProbeB\x03\xe0\x41\x05\x12<\n\x0chealth_probe\x18\r \x01(\x0b\x32!.google.cloud.aiplatform.v1.ProbeB\x03\xe0\x41\x05\x12>\n\x0eliveness_probe\x18\x0e \x01(\x0b\x32!.google.cloud.aiplatform.v1.ProbeB\x03\xe0\x41\x05\"\x1e\n\x04Port\x12\x16\n\x0e\x63ontainer_port\x18\x03 \x01(\x05\"\x93\x02\n\x0fModelSourceInfo\x12P\n\x0bsource_type\x18\x01 \x01(\x0e\x32;.google.cloud.aiplatform.v1.ModelSourceInfo.ModelSourceType\x12\x0c\n\x04\x63opy\x18\x02 \x01(\x08\"\x9f\x01\n\x0fModelSourceType\x12!\n\x1dMODEL_SOURCE_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41UTOML\x10\x01\x12\n\n\x06\x43USTOM\x10\x02\x12\x08\n\x04\x42QML\x10\x03\x12\x10\n\x0cMODEL_GARDEN\x10\x04\x12\t\n\x05GENIE\x10\x05\x12\x19\n\x15\x43USTOM_TEXT_EMBEDDING\x10\x06\x12\x0f\n\x0bMARKETPLACE\x10\x07\"\xdb\x05\n\x05Probe\x12<\n\x04\x65xec\x18\x01 \x01(\x0b\x32,.google.cloud.aiplatform.v1.Probe.ExecActionH\x00\x12\x43\n\x08http_get\x18\x04 \x01(\x0b\x32/.google.cloud.aiplatform.v1.Probe.HttpGetActionH\x00\x12<\n\x04grpc\x18\x05 \x01(\x0b\x32,.google.cloud.aiplatform.v1.Probe.GrpcActionH\x00\x12G\n\ntcp_socket\x18\x06 \x01(\x0b\x32\x31.google.cloud.aiplatform.v1.Probe.TcpSocketActionH\x00\x12\x16\n\x0eperiod_seconds\x18\x02 \x01(\x05\x12\x17\n\x0ftimeout_seconds\x18\x03 \x01(\x05\x12\x19\n\x11\x66\x61ilure_threshold\x18\x07 \x01(\x05\x12\x19\n\x11success_threshold\x18\x08 \x01(\x05\x12\x1d\n\x15initial_delay_seconds\x18\t \x01(\x05\x1a\x1d\n\nExecAction\x12\x0f\n\x07\x63ommand\x18\x01 \x03(\t\x1a\x8d\x01\n\rHttpGetAction\x12\x0c\n\x04path\x18\x01 \x01(\t\x12\x0c\n\x04port\x18\x02 \x01(\x05\x12\x0c\n\x04host\x18\x03 \x01(\t\x12\x0e\n\x06scheme\x18\x04 \x01(\t\x12\x42\n\x0chttp_headers\x18\x05 \x03(\x0b\x32,.google.cloud.aiplatform.v1.Probe.HttpHeader\x1a+\n\nGrpcAction\x12\x0c\n\x04port\x18\x01 \x01(\x05\x12\x0f\n\x07service\x18\x02 \x01(\t\x1a-\n\x0fTcpSocketAction\x12\x0c\n\x04port\x18\x01 \x01(\x05\x12\x0c\n\x04host\x18\x02 \x01(\t\x1a)\n\nHttpHeader\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\tB\x0c\n\nprobe_typeB\xc8\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\nModelProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.aiplatform.v1.DeployedModelRef", "google/cloud/aiplatform/v1/deployed_model_ref.proto"],
    ["google.cloud.aiplatform.v1.ExplanationSpec", "google/cloud/aiplatform/v1/explanation.proto"],
    ["google.cloud.aiplatform.v1.EncryptionSpec", "google/cloud/aiplatform/v1/encryption_spec.proto"],
    ["google.cloud.aiplatform.v1.EnvVar", "google/cloud/aiplatform/v1/env_var.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module AIPlatform
      module V1
        Model = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model").msgclass
        Model::ExportFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.ExportFormat").msgclass
        Model::ExportFormat::ExportableContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.ExportFormat.ExportableContent").enummodule
        Model::DataStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.DataStats").msgclass
        Model::OriginalModelInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.OriginalModelInfo").msgclass
        Model::BaseModelSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.BaseModelSource").msgclass
        Model::DeploymentResourcesType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Model.DeploymentResourcesType").enummodule
        LargeModelReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.LargeModelReference").msgclass
        ModelGardenSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelGardenSource").msgclass
        GenieSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GenieSource").msgclass
        PredictSchemata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PredictSchemata").msgclass
        ModelContainerSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelContainerSpec").msgclass
        Port = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Port").msgclass
        ModelSourceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelSourceInfo").msgclass
        ModelSourceInfo::ModelSourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelSourceInfo.ModelSourceType").enummodule
        Probe = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Probe").msgclass
        Probe::ExecAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Probe.ExecAction").msgclass
        Probe::HttpGetAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Probe.HttpGetAction").msgclass
        Probe::GrpcAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Probe.GrpcAction").msgclass
        Probe::TcpSocketAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Probe.TcpSocketAction").msgclass
        Probe::HttpHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Probe.HttpHeader").msgclass
      end
    end
  end
end
