# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/analytics_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/export_config_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n.google/cloud/retail/v2/analytics_service.proto\x12\x16google.cloud.retail.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a*google/cloud/retail/v2/export_config.proto\x1a#google/longrunning/operations.proto2\x83\x03\n\x10\x41nalyticsService\x12\xa3\x02\n\x16\x45xportAnalyticsMetrics\x12\x35.google.cloud.retail.v2.ExportAnalyticsMetricsRequest\x1a\x1d.google.longrunning.Operation\"\xb2\x01\xca\x41^\n5google.cloud.retail.v2.ExportAnalyticsMetricsResponse\x12%google.cloud.retail.v2.ExportMetadata\x82\xd3\xe4\x93\x02K\"F/v2/{catalog=projects/*/locations/*/catalogs/*}:exportAnalyticsMetrics:\x01*\x1aI\xca\x41\x15retail.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc0\x01\n\x1a\x63om.google.cloud.retail.v2B\x15\x41nalyticsServiceProtoP\x01Z2cloud.google.com/go/retail/apiv2/retailpb;retailpb\xa2\x02\x06RETAIL\xaa\x02\x16Google.Cloud.Retail.V2\xca\x02\x16Google\\Cloud\\Retail\\V2\xea\x02\x19Google::Cloud::Retail::V2b\x06proto3"

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
    module Retail
      module V2
      end
    end
  end
end
