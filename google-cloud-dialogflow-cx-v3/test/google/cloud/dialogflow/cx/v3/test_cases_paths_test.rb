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

require "google/cloud/dialogflow/cx/v3/test_cases"

class ::Google::Cloud::Dialogflow::CX::V3::TestCases::ClientPathsTest < Minitest::Test
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

  def test_agent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.agent_path project: "value0", location: "value1", agent: "value2"
      assert_equal "projects/value0/locations/value1/agents/value2", path
    end
  end

  def test_entity_type_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entity_type_path project: "value0", location: "value1", agent: "value2", entity_type: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/entityTypes/value3", path
    end
  end

  def test_environment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.environment_path project: "value0", location: "value1", agent: "value2", environment: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/environments/value3", path
    end
  end

  def test_flow_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.flow_path project: "value0", location: "value1", agent: "value2", flow: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3", path
    end
  end

  def test_intent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.intent_path project: "value0", location: "value1", agent: "value2", intent: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/intents/value3", path
    end
  end

  def test_page_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.page_path project: "value0", location: "value1", agent: "value2", flow: "value3", page: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3/pages/value4", path
    end
  end

  def test_test_case_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.test_case_path project: "value0", location: "value1", agent: "value2", test_case: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/testCases/value3", path
    end
  end

  def test_test_case_result_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.test_case_result_path project: "value0", location: "value1", agent: "value2", test_case: "value3", result: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/testCases/value3/results/value4", path
    end
  end

  def test_transition_route_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.transition_route_group_path project: "value0", location: "value1", agent: "value2", flow: "value3", transition_route_group: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3/transitionRouteGroups/value4", path

      path = client.transition_route_group_path project: "value0", location: "value1", agent: "value2", transition_route_group: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/transitionRouteGroups/value3", path
    end
  end

  def test_webhook_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::TestCases::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.webhook_path project: "value0", location: "value1", agent: "value2", webhook: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/webhooks/value3", path
    end
  end
end
