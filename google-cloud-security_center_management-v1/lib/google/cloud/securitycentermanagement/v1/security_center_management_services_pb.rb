# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/securitycentermanagement/v1/security_center_management.proto for package 'Google.Cloud.SecurityCenterManagement.V1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/securitycentermanagement/v1/security_center_management_pb'

module Google
  module Cloud
    module SecurityCenterManagement
      module V1
        module SecurityCenterManagement
          # Service describing handlers for resources
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.securitycentermanagement.v1.SecurityCenterManagement'

            # Returns a list of all EffectiveSecurityHealthAnalyticsCustomModules for the
            # given parent. This includes resident modules defined at the scope of the
            # parent, and inherited modules, inherited from CRM ancestors (no
            # descendants).
            rpc :ListEffectiveSecurityHealthAnalyticsCustomModules, ::Google::Cloud::SecurityCenterManagement::V1::ListEffectiveSecurityHealthAnalyticsCustomModulesRequest, ::Google::Cloud::SecurityCenterManagement::V1::ListEffectiveSecurityHealthAnalyticsCustomModulesResponse
            # Gets details of a single EffectiveSecurityHealthAnalyticsCustomModule.
            rpc :GetEffectiveSecurityHealthAnalyticsCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::GetEffectiveSecurityHealthAnalyticsCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::EffectiveSecurityHealthAnalyticsCustomModule
            # Returns a list of all SecurityHealthAnalyticsCustomModules for the given
            # parent. This includes resident modules defined at the scope of the parent,
            # and inherited modules, inherited from CRM ancestors (no descendants).
            rpc :ListSecurityHealthAnalyticsCustomModules, ::Google::Cloud::SecurityCenterManagement::V1::ListSecurityHealthAnalyticsCustomModulesRequest, ::Google::Cloud::SecurityCenterManagement::V1::ListSecurityHealthAnalyticsCustomModulesResponse
            # Returns a list of all resident SecurityHealthAnalyticsCustomModules under
            # the given CRM parent and all of the parent's CRM descendants.
            rpc :ListDescendantSecurityHealthAnalyticsCustomModules, ::Google::Cloud::SecurityCenterManagement::V1::ListDescendantSecurityHealthAnalyticsCustomModulesRequest, ::Google::Cloud::SecurityCenterManagement::V1::ListDescendantSecurityHealthAnalyticsCustomModulesResponse
            # Retrieves a SecurityHealthAnalyticsCustomModule.
            rpc :GetSecurityHealthAnalyticsCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::GetSecurityHealthAnalyticsCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::SecurityHealthAnalyticsCustomModule
            # Creates a resident SecurityHealthAnalyticsCustomModule at the scope of the
            # given CRM parent, and also creates inherited
            # SecurityHealthAnalyticsCustomModules for all CRM descendants of the given
            # parent. These modules are enabled by default.
            rpc :CreateSecurityHealthAnalyticsCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::CreateSecurityHealthAnalyticsCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::SecurityHealthAnalyticsCustomModule
            # Updates the SecurityHealthAnalyticsCustomModule under the given name based
            # on the given update mask. Updating the enablement state is supported on
            # both resident and inherited modules (though resident modules cannot have an
            # enablement state of "inherited"). Updating the display name and custom
            # config of a module is supported on resident modules only.
            rpc :UpdateSecurityHealthAnalyticsCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::UpdateSecurityHealthAnalyticsCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::SecurityHealthAnalyticsCustomModule
            # Deletes the specified SecurityHealthAnalyticsCustomModule and all of its
            # descendants in the CRM hierarchy. This method is only supported for
            # resident custom modules.
            rpc :DeleteSecurityHealthAnalyticsCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::DeleteSecurityHealthAnalyticsCustomModuleRequest, ::Google::Protobuf::Empty
            # Simulates a given SecurityHealthAnalyticsCustomModule and Resource.
            rpc :SimulateSecurityHealthAnalyticsCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::SimulateSecurityHealthAnalyticsCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::SimulateSecurityHealthAnalyticsCustomModuleResponse
            # Lists all effective Event Threat Detection custom modules for the
            # given parent. This includes resident modules defined at the scope of the
            # parent along with modules inherited from its ancestors.
            rpc :ListEffectiveEventThreatDetectionCustomModules, ::Google::Cloud::SecurityCenterManagement::V1::ListEffectiveEventThreatDetectionCustomModulesRequest, ::Google::Cloud::SecurityCenterManagement::V1::ListEffectiveEventThreatDetectionCustomModulesResponse
            # Gets an effective ETD custom module. Retrieves the effective module at the
            # given level. The difference between an EffectiveCustomModule and a
            # CustomModule is that the fields for an EffectiveCustomModule are computed
            # from ancestors if needed. For example, the enablement_state for a
            # CustomModule can be either ENABLED, DISABLED, or INHERITED. Where as the
            # enablement_state for an EffectiveCustomModule is always computed to ENABLED
            # or DISABLED (the effective enablement_state).
            rpc :GetEffectiveEventThreatDetectionCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::GetEffectiveEventThreatDetectionCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::EffectiveEventThreatDetectionCustomModule
            # Lists all Event Threat Detection custom modules for the given
            # Resource Manager parent. This includes resident modules defined at the
            # scope of the parent along with modules inherited from ancestors.
            rpc :ListEventThreatDetectionCustomModules, ::Google::Cloud::SecurityCenterManagement::V1::ListEventThreatDetectionCustomModulesRequest, ::Google::Cloud::SecurityCenterManagement::V1::ListEventThreatDetectionCustomModulesResponse
            # Lists all resident Event Threat Detection custom modules under the
            # given Resource Manager parent and its descendants.
            rpc :ListDescendantEventThreatDetectionCustomModules, ::Google::Cloud::SecurityCenterManagement::V1::ListDescendantEventThreatDetectionCustomModulesRequest, ::Google::Cloud::SecurityCenterManagement::V1::ListDescendantEventThreatDetectionCustomModulesResponse
            # Gets an Event Threat Detection custom module.
            rpc :GetEventThreatDetectionCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::GetEventThreatDetectionCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::EventThreatDetectionCustomModule
            # Creates a resident Event Threat Detection custom module at the scope of the
            # given Resource Manager parent, and also creates inherited custom modules
            # for all descendants of the given parent. These modules are enabled by
            # default.
            rpc :CreateEventThreatDetectionCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::CreateEventThreatDetectionCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::EventThreatDetectionCustomModule
            # Updates the Event Threat Detection custom module with the given name based
            # on the given update mask. Updating the enablement state is supported for
            # both resident and inherited modules (though resident modules cannot have an
            # enablement state of "inherited"). Updating the display name or
            # configuration of a module is supported for resident modules only. The type
            # of a module cannot be changed.
            rpc :UpdateEventThreatDetectionCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::UpdateEventThreatDetectionCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::EventThreatDetectionCustomModule
            # Deletes the specified Event Threat Detection custom module and all of its
            # descendants in the Resource Manager hierarchy. This method is only
            # supported for resident custom modules.
            rpc :DeleteEventThreatDetectionCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::DeleteEventThreatDetectionCustomModuleRequest, ::Google::Protobuf::Empty
            # Validates the given Event Threat Detection custom module.
            rpc :ValidateEventThreatDetectionCustomModule, ::Google::Cloud::SecurityCenterManagement::V1::ValidateEventThreatDetectionCustomModuleRequest, ::Google::Cloud::SecurityCenterManagement::V1::ValidateEventThreatDetectionCustomModuleResponse
            # Gets service settings for the specified Security Command Center service.
            rpc :GetSecurityCenterService, ::Google::Cloud::SecurityCenterManagement::V1::GetSecurityCenterServiceRequest, ::Google::Cloud::SecurityCenterManagement::V1::SecurityCenterService
            # Returns a list of all Security Command Center services for the given
            # parent.
            rpc :ListSecurityCenterServices, ::Google::Cloud::SecurityCenterManagement::V1::ListSecurityCenterServicesRequest, ::Google::Cloud::SecurityCenterManagement::V1::ListSecurityCenterServicesResponse
            # Updates a Security Command Center service using the given update mask.
            rpc :UpdateSecurityCenterService, ::Google::Cloud::SecurityCenterManagement::V1::UpdateSecurityCenterServiceRequest, ::Google::Cloud::SecurityCenterManagement::V1::SecurityCenterService
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
