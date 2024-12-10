# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/tpu/v1/tpu"

class ::Google::Cloud::Tpu::V1::Tpu::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_accelerator_type_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.accelerator_type_path project: "value0", location: "value1", accelerator_type: "value2"
      assert_equal "projects/value0/locations/value1/acceleratorTypes/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_node_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.node_path project: "value0", location: "value1", node: "value2"
      assert_equal "projects/value0/locations/value1/nodes/value2", path
    end
  end

  def test_tensor_flow_version_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Tpu::V1::Tpu::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.tensor_flow_version_path project: "value0", location: "value1", tensor_flow_version: "value2"
      assert_equal "projects/value0/locations/value1/tensorFlowVersions/value2", path
    end
  end
end
