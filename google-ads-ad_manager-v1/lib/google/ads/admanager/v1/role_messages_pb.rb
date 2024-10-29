# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/role_messages.proto

require 'google/protobuf'

require 'google/ads/admanager/v1/role_enums_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n+google/ads/admanager/v1/role_messages.proto\x12\x17google.ads.admanager.v1\x1a(google/ads/admanager/v1/role_enums.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x9b\x02\n\x04Role\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x14\n\x07role_id\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x65scription\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08\x62uilt_in\x18\x05 \x01(\x08\x42\x03\xe0\x41\x03\x12G\n\x06status\x18\x06 \x01(\x0e\x32\x32.google.ads.admanager.v1.RoleStatusEnum.RoleStatusB\x03\xe0\x41\x03:U\xea\x41R\n\x1d\x61\x64manager.googleapis.com/Role\x12$networks/{network_code}/roles/{role}*\x05roles2\x04roleB\xc5\x01\n\x1b\x63om.google.ads.admanager.v1B\x11RoleMessagesProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1\xea\x02\x1aGoogle::Ads::AdManager::V1b\x06proto3"

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
  module Ads
    module AdManager
      module V1
        Role = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.Role").msgclass
      end
    end
  end
end
