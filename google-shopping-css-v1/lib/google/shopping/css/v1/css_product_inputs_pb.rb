# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/css/v1/css_product_inputs.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/shopping/css/v1/css_product_common_pb'
require 'google/shopping/type/types_pb'


descriptor_data = "\n/google/shopping/css/v1/css_product_inputs.proto\x12\x16google.shopping.css.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a/google/shopping/css/v1/css_product_common.proto\x1a google/shopping/type/types.proto\"\x9e\x03\n\x0f\x43ssProductInput\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x17\n\nfinal_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x1c\n\x0fraw_provided_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x1d\n\x10\x63ontent_language\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nfeed_label\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12\x32\n\x0e\x66reshness_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x36\n\nattributes\x18\x07 \x01(\x0b\x32\".google.shopping.css.v1.Attributes\x12@\n\x11\x63ustom_attributes\x18\x08 \x03(\x0b\x32%.google.shopping.type.CustomAttribute:`\xea\x41]\n\"css.googleapis.com/CssProductInput\x12\x37\x61\x63\x63ounts/{account}/cssProductInputs/{css_product_input}\"\xb9\x01\n\x1cInsertCssProductInputRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\x12\"css.googleapis.com/CssProductInput\x12G\n\x11\x63ss_product_input\x18\x02 \x01(\x0b\x32\'.google.shopping.css.v1.CssProductInputB\x03\xe0\x41\x02\x12\x14\n\x07\x66\x65\x65\x64_id\x18\x03 \x01(\x03\x42\x03\xe0\x41\x02\"\x94\x01\n\x1c\x44\x65leteCssProductInputRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"css.googleapis.com/CssProductInput\x12!\n\x14supplemental_feed_id\x18\x02 \x01(\x03H\x00\x88\x01\x01\x42\x17\n\x15_supplemental_feed_id2\xc0\x03\n\x17\x43ssProductInputsService\x12\xc2\x01\n\x15InsertCssProductInput\x12\x34.google.shopping.css.v1.InsertCssProductInputRequest\x1a\'.google.shopping.css.v1.CssProductInput\"J\x82\xd3\xe4\x93\x02\x44\"//v1/{parent=accounts/*}/cssProductInputs:insert:\x11\x63ss_product_input\x12\x9e\x01\n\x15\x44\x65leteCssProductInput\x12\x34.google.shopping.css.v1.DeleteCssProductInputRequest\x1a\x16.google.protobuf.Empty\"7\xda\x41\x04name\x82\xd3\xe4\x93\x02**(/v1/{name=accounts/*/cssProductInputs/*}\x1a?\xca\x41\x12\x63ss.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\xb7\x01\n\x1a\x63om.google.shopping.css.v1B\x15\x43ssProductInputsProtoP\x01Z2cloud.google.com/go/shopping/css/apiv1/csspb;csspb\xaa\x02\x16Google.Shopping.Css.V1\xca\x02\x16Google\\Shopping\\Css\\V1\xea\x02\x19Google::Shopping::Css::V1b\x06proto3"

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
    ["google.shopping.css.v1.Attributes", "google/shopping/css/v1/css_product_common.proto"],
    ["google.shopping.type.CustomAttribute", "google/shopping/type/types.proto"],
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
  module Shopping
    module Css
      module V1
        CssProductInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.css.v1.CssProductInput").msgclass
        InsertCssProductInputRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.css.v1.InsertCssProductInputRequest").msgclass
        DeleteCssProductInputRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.css.v1.DeleteCssProductInputRequest").msgclass
      end
    end
  end
end
