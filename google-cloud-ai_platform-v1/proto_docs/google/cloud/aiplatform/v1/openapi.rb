# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AIPlatform
      module V1
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema
        # object](https://spec.openapis.org/oas/v3.0.3#schema-object). More fields may
        # be added in the future as needed.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::AIPlatform::V1::Type]
        #     Optional. The type of the data.
        # @!attribute [rw] format
        #   @return [::String]
        #     Optional. The format of the data.
        #     Supported formats:
        #      for NUMBER type: "float", "double"
        #      for INTEGER type: "int32", "int64"
        #      for STRING type: "email", "byte", etc
        # @!attribute [rw] title
        #   @return [::String]
        #     Optional. The title of the Schema.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. The description of the data.
        # @!attribute [rw] nullable
        #   @return [::Boolean]
        #     Optional. Indicates if the value may be null.
        # @!attribute [rw] default
        #   @return [::Google::Protobuf::Value]
        #     Optional. Default value of the data.
        # @!attribute [rw] items
        #   @return [::Google::Cloud::AIPlatform::V1::Schema]
        #     Optional. SCHEMA FIELDS FOR TYPE ARRAY
        #     Schema of the elements of Type.ARRAY.
        # @!attribute [rw] min_items
        #   @return [::Integer]
        #     Optional. Minimum number of the elements for Type.ARRAY.
        # @!attribute [rw] max_items
        #   @return [::Integer]
        #     Optional. Maximum number of the elements for Type.ARRAY.
        # @!attribute [rw] enum
        #   @return [::Array<::String>]
        #     Optional. Possible values of the element of primitive type with enum
        #     format. Examples:
        #     1. We can define direction as :
        #     ```{type:STRING, format:enum, enum:["EAST", "NORTH", "SOUTH", "WEST"]}```
        #     2. We can define apartment number as :
        #     ```{type:INTEGER, format:enum, enum:["101", "201", "301"]}```
        # @!attribute [rw] properties
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::Schema}]
        #     Optional. SCHEMA FIELDS FOR TYPE OBJECT
        #     Properties of Type.OBJECT.
        # @!attribute [rw] property_ordering
        #   @return [::Array<::String>]
        #     Optional. The order of the properties.
        #     Not a standard field in open api spec. Only used to support the order of
        #     the properties.
        # @!attribute [rw] required
        #   @return [::Array<::String>]
        #     Optional. Required properties of Type.OBJECT.
        # @!attribute [rw] min_properties
        #   @return [::Integer]
        #     Optional. Minimum number of the properties for Type.OBJECT.
        # @!attribute [rw] max_properties
        #   @return [::Integer]
        #     Optional. Maximum number of the properties for Type.OBJECT.
        # @!attribute [rw] minimum
        #   @return [::Float]
        #     Optional. SCHEMA FIELDS FOR TYPE INTEGER and NUMBER
        #     Minimum value of the Type.INTEGER and Type.NUMBER
        # @!attribute [rw] maximum
        #   @return [::Float]
        #     Optional. Maximum value of the Type.INTEGER and Type.NUMBER
        # @!attribute [rw] min_length
        #   @return [::Integer]
        #     Optional. SCHEMA FIELDS FOR TYPE STRING
        #     Minimum length of the Type.STRING
        # @!attribute [rw] max_length
        #   @return [::Integer]
        #     Optional. Maximum length of the Type.STRING
        # @!attribute [rw] pattern
        #   @return [::String]
        #     Optional. Pattern of the Type.STRING to restrict a string to a regular
        #     expression.
        # @!attribute [rw] example
        #   @return [::Google::Protobuf::Value]
        #     Optional. Example of the object. Will only populated when the object is the
        #     root.
        # @!attribute [rw] any_of
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Schema>]
        #     Optional. The value should be validated against any (one or more) of the
        #     subschemas in the list.
        class Schema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::AIPlatform::V1::Schema]
          class PropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Type contains the list of OpenAPI data types as defined by
        # https://swagger.io/docs/specification/data-models/data-types/
        module Type
          # Not specified, should not be used.
          TYPE_UNSPECIFIED = 0

          # OpenAPI string type
          STRING = 1

          # OpenAPI number type
          NUMBER = 2

          # OpenAPI integer type
          INTEGER = 3

          # OpenAPI boolean type
          BOOLEAN = 4

          # OpenAPI array type
          ARRAY = 5

          # OpenAPI object type
          OBJECT = 6
        end
      end
    end
  end
end
