# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/webhook.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/response_message_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n+google/cloud/dialogflow/cx/v3/webhook.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x34google/cloud/dialogflow/cx/v3/response_message.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xce\x0e\n\x07Webhook\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12W\n\x13generic_web_service\x18\x04 \x01(\x0b\x32\x38.google.cloud.dialogflow.cx.v3.Webhook.GenericWebServiceH\x00\x12Z\n\x11service_directory\x18\x07 \x01(\x0b\x32=.google.cloud.dialogflow.cx.v3.Webhook.ServiceDirectoryConfigH\x00\x12*\n\x07timeout\x18\x06 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x10\n\x08\x64isabled\x18\x05 \x01(\x08\x1a\xf4\t\n\x11GenericWebService\x12\x10\n\x03uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x08username\x18\x02 \x01(\tB\x02\x18\x01\x12\x14\n\x08password\x18\x03 \x01(\tB\x02\x18\x01\x12\x65\n\x0frequest_headers\x18\x04 \x03(\x0b\x32L.google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.RequestHeadersEntry\x12\x1d\n\x10\x61llowed_ca_certs\x18\x05 \x03(\x0c\x42\x03\xe0\x41\x01\x12_\n\x0coauth_config\x18\x0b \x01(\x0b\x32\x44.google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.OAuthConfigB\x03\xe0\x41\x01\x12j\n\x12service_agent_auth\x18\x0c \x01(\x0e\x32I.google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.ServiceAgentAuthB\x03\xe0\x41\x01\x12_\n\x0cwebhook_type\x18\x06 \x01(\x0e\x32\x44.google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.WebhookTypeB\x03\xe0\x41\x01\x12]\n\x0bhttp_method\x18\x07 \x01(\x0e\x32\x43.google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.HttpMethodB\x03\xe0\x41\x01\x12\x19\n\x0crequest_body\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12n\n\x11parameter_mapping\x18\t \x03(\x0b\x32N.google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.ParameterMappingEntryB\x03\xe0\x41\x01\x1as\n\x0bOAuthConfig\x12\x16\n\tclient_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1a\n\rclient_secret\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0etoken_endpoint\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x06scopes\x18\x04 \x03(\tB\x03\xe0\x41\x01\x1a\x35\n\x13RequestHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x37\n\x15ParameterMappingEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"`\n\x10ServiceAgentAuth\x12\"\n\x1eSERVICE_AGENT_AUTH_UNSPECIFIED\x10\x00\x12\x08\n\x04NONE\x10\x01\x12\x0c\n\x08ID_TOKEN\x10\x02\x12\x10\n\x0c\x41\x43\x43\x45SS_TOKEN\x10\x03\"G\n\x0bWebhookType\x12\x1c\n\x18WEBHOOK_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08STANDARD\x10\x01\x12\x0c\n\x08\x46LEXIBLE\x10\x02\"s\n\nHttpMethod\x12\x1b\n\x17HTTP_METHOD_UNSPECIFIED\x10\x00\x12\x08\n\x04POST\x10\x01\x12\x07\n\x03GET\x10\x02\x12\x08\n\x04HEAD\x10\x03\x12\x07\n\x03PUT\x10\x04\x12\n\n\x06\x44\x45LETE\x10\x05\x12\t\n\x05PATCH\x10\x06\x12\x0b\n\x07OPTIONS\x10\x07\x1a\xb1\x01\n\x16ServiceDirectoryConfig\x12@\n\x07service\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'servicedirectory.googleapis.com/Service\x12U\n\x13generic_web_service\x18\x02 \x01(\x0b\x32\x38.google.cloud.dialogflow.cx.v3.Webhook.GenericWebService:q\xea\x41n\n!dialogflow.googleapis.com/Webhook\x12Iprojects/{project}/locations/{location}/agents/{agent}/webhooks/{webhook}B\t\n\x07webhook\"w\n\x13ListWebhooksRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!dialogflow.googleapis.com/Webhook\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"i\n\x14ListWebhooksResponse\x12\x38\n\x08webhooks\x18\x01 \x03(\x0b\x32&.google.cloud.dialogflow.cx.v3.Webhook\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"L\n\x11GetWebhookRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dialogflow.googleapis.com/Webhook\"\x8f\x01\n\x14\x43reateWebhookRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!dialogflow.googleapis.com/Webhook\x12<\n\x07webhook\x18\x02 \x01(\x0b\x32&.google.cloud.dialogflow.cx.v3.WebhookB\x03\xe0\x41\x02\"\x85\x01\n\x14UpdateWebhookRequest\x12<\n\x07webhook\x18\x01 \x01(\x0b\x32&.google.cloud.dialogflow.cx.v3.WebhookB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"^\n\x14\x44\x65leteWebhookRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dialogflow.googleapis.com/Webhook\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\"\xc5\n\n\x0eWebhookRequest\x12!\n\x19\x64\x65tect_intent_response_id\x18\x01 \x01(\t\x12\x0e\n\x04text\x18\n \x01(\tH\x00\x12?\n\x0etrigger_intent\x18\x0b \x01(\tB%\xfa\x41\"\n dialogflow.googleapis.com/IntentH\x00\x12\x14\n\ntranscript\x18\x0c \x01(\tH\x00\x12\x17\n\rtrigger_event\x18\x0e \x01(\tH\x00\x12\x15\n\x0b\x64tmf_digits\x18\x11 \x01(\tH\x00\x12\x15\n\rlanguage_code\x18\x0f \x01(\t\x12W\n\x10\x66ulfillment_info\x18\x06 \x01(\x0b\x32=.google.cloud.dialogflow.cx.v3.WebhookRequest.FulfillmentInfo\x12M\n\x0bintent_info\x18\x03 \x01(\x0b\x32\x38.google.cloud.dialogflow.cx.v3.WebhookRequest.IntentInfo\x12:\n\tpage_info\x18\x04 \x01(\x0b\x32\'.google.cloud.dialogflow.cx.v3.PageInfo\x12@\n\x0csession_info\x18\x05 \x01(\x0b\x32*.google.cloud.dialogflow.cx.v3.SessionInfo\x12@\n\x08messages\x18\x07 \x03(\x0b\x32..google.cloud.dialogflow.cx.v3.ResponseMessage\x12(\n\x07payload\x18\x08 \x01(\x0b\x32\x17.google.protobuf.Struct\x12h\n\x19sentiment_analysis_result\x18\t \x01(\x0b\x32\x45.google.cloud.dialogflow.cx.v3.WebhookRequest.SentimentAnalysisResult\x12\x42\n\rlanguage_info\x18\x12 \x01(\x0b\x32+.google.cloud.dialogflow.cx.v3.LanguageInfo\x1a\x1e\n\x0f\x46ulfillmentInfo\x12\x0b\n\x03tag\x18\x01 \x01(\t\x1a\xbb\x03\n\nIntentInfo\x12\x42\n\x13last_matched_intent\x18\x01 \x01(\tB%\xfa\x41\"\n dialogflow.googleapis.com/Intent\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12\\\n\nparameters\x18\x02 \x03(\x0b\x32H.google.cloud.dialogflow.cx.v3.WebhookRequest.IntentInfo.ParametersEntry\x12\x12\n\nconfidence\x18\x04 \x01(\x02\x1a^\n\x14IntentParameterValue\x12\x16\n\x0eoriginal_value\x18\x01 \x01(\t\x12.\n\x0eresolved_value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value\x1a\x80\x01\n\x0fParametersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\\\n\x05value\x18\x02 \x01(\x0b\x32M.google.cloud.dialogflow.cx.v3.WebhookRequest.IntentInfo.IntentParameterValue:\x02\x38\x01\x1a;\n\x17SentimentAnalysisResult\x12\r\n\x05score\x18\x01 \x01(\x02\x12\x11\n\tmagnitude\x18\x02 \x01(\x02\x42\x07\n\x05query\"\xaf\x05\n\x0fWebhookResponse\x12`\n\x14\x66ulfillment_response\x18\x01 \x01(\x0b\x32\x42.google.cloud.dialogflow.cx.v3.WebhookResponse.FulfillmentResponse\x12:\n\tpage_info\x18\x02 \x01(\x0b\x32\'.google.cloud.dialogflow.cx.v3.PageInfo\x12@\n\x0csession_info\x18\x03 \x01(\x0b\x32*.google.cloud.dialogflow.cx.v3.SessionInfo\x12(\n\x07payload\x18\x04 \x01(\x0b\x32\x17.google.protobuf.Struct\x12:\n\x0btarget_page\x18\x05 \x01(\tB#\xfa\x41 \n\x1e\x64ialogflow.googleapis.com/PageH\x00\x12:\n\x0btarget_flow\x18\x06 \x01(\tB#\xfa\x41 \n\x1e\x64ialogflow.googleapis.com/FlowH\x00\x1a\x8b\x02\n\x13\x46ulfillmentResponse\x12@\n\x08messages\x18\x01 \x03(\x0b\x32..google.cloud.dialogflow.cx.v3.ResponseMessage\x12h\n\x0emerge_behavior\x18\x02 \x01(\x0e\x32P.google.cloud.dialogflow.cx.v3.WebhookResponse.FulfillmentResponse.MergeBehavior\"H\n\rMergeBehavior\x12\x1e\n\x1aMERGE_BEHAVIOR_UNSPECIFIED\x10\x00\x12\n\n\x06\x41PPEND\x10\x01\x12\x0b\n\x07REPLACE\x10\x02\x42\x0c\n\ntransition\"\xb3\x04\n\x08PageInfo\x12\x39\n\x0c\x63urrent_page\x18\x01 \x01(\tB#\xfa\x41 \n\x1e\x64ialogflow.googleapis.com/Page\x12\x14\n\x0c\x64isplay_name\x18\x04 \x01(\t\x12\x43\n\tform_info\x18\x03 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.PageInfo.FormInfo\x1a\x90\x03\n\x08\x46ormInfo\x12V\n\x0eparameter_info\x18\x02 \x03(\x0b\x32>.google.cloud.dialogflow.cx.v3.PageInfo.FormInfo.ParameterInfo\x1a\xab\x02\n\rParameterInfo\x12\x14\n\x0c\x64isplay_name\x18\x01 \x01(\t\x12\x10\n\x08required\x18\x02 \x01(\x08\x12\\\n\x05state\x18\x03 \x01(\x0e\x32M.google.cloud.dialogflow.cx.v3.PageInfo.FormInfo.ParameterInfo.ParameterState\x12%\n\x05value\x18\x04 \x01(\x0b\x32\x16.google.protobuf.Value\x12\x16\n\x0ejust_collected\x18\x05 \x01(\x08\"U\n\x0eParameterState\x12\x1f\n\x1bPARAMETER_STATE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45MPTY\x10\x01\x12\x0b\n\x07INVALID\x10\x02\x12\n\n\x06\x46ILLED\x10\x03\"\xe1\x01\n\x0bSessionInfo\x12\x37\n\x07session\x18\x01 \x01(\tB&\xfa\x41#\n!dialogflow.googleapis.com/Session\x12N\n\nparameters\x18\x02 \x03(\x0b\x32:.google.cloud.dialogflow.cx.v3.SessionInfo.ParametersEntry\x1aI\n\x0fParametersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\"e\n\x0cLanguageInfo\x12\x1b\n\x13input_language_code\x18\x01 \x01(\t\x12\x1e\n\x16resolved_language_code\x18\x02 \x01(\t\x12\x18\n\x10\x63onfidence_score\x18\x03 \x01(\x02\x32\xb7\x08\n\x08Webhooks\x12\xbf\x01\n\x0cListWebhooks\x12\x32.google.cloud.dialogflow.cx.v3.ListWebhooksRequest\x1a\x33.google.cloud.dialogflow.cx.v3.ListWebhooksResponse\"F\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x37\x12\x35/v3/{parent=projects/*/locations/*/agents/*}/webhooks\x12\xac\x01\n\nGetWebhook\x12\x30.google.cloud.dialogflow.cx.v3.GetWebhookRequest\x1a&.google.cloud.dialogflow.cx.v3.Webhook\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37\x12\x35/v3/{name=projects/*/locations/*/agents/*/webhooks/*}\x12\xc5\x01\n\rCreateWebhook\x12\x33.google.cloud.dialogflow.cx.v3.CreateWebhookRequest\x1a&.google.cloud.dialogflow.cx.v3.Webhook\"W\xda\x41\x0eparent,webhook\x82\xd3\xe4\x93\x02@\"5/v3/{parent=projects/*/locations/*/agents/*}/webhooks:\x07webhook\x12\xd2\x01\n\rUpdateWebhook\x12\x33.google.cloud.dialogflow.cx.v3.UpdateWebhookRequest\x1a&.google.cloud.dialogflow.cx.v3.Webhook\"d\xda\x41\x13webhook,update_mask\x82\xd3\xe4\x93\x02H2=/v3/{webhook.name=projects/*/locations/*/agents/*/webhooks/*}:\x07webhook\x12\xa2\x01\n\rDeleteWebhook\x12\x33.google.cloud.dialogflow.cx.v3.DeleteWebhookRequest\x1a\x16.google.protobuf.Empty\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37*5/v3/{name=projects/*/locations/*/agents/*/webhooks/*}\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xae\x02\n!com.google.cloud.dialogflow.cx.v3B\x0cWebhookProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3\xea\x41|\n\'servicedirectory.googleapis.com/Service\x12Qprojects/{project}/locations/{location}/namespaces/{namespace}/services/{service}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.dialogflow.cx.v3.ResponseMessage", "google/cloud/dialogflow/cx/v3/response_message.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
    module Dialogflow
      module CX
        module V3
          Webhook = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Webhook").msgclass
          Webhook::GenericWebService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Webhook.GenericWebService").msgclass
          Webhook::GenericWebService::OAuthConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.OAuthConfig").msgclass
          Webhook::GenericWebService::ServiceAgentAuth = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.ServiceAgentAuth").enummodule
          Webhook::GenericWebService::WebhookType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.WebhookType").enummodule
          Webhook::GenericWebService::HttpMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Webhook.GenericWebService.HttpMethod").enummodule
          Webhook::ServiceDirectoryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Webhook.ServiceDirectoryConfig").msgclass
          ListWebhooksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListWebhooksRequest").msgclass
          ListWebhooksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListWebhooksResponse").msgclass
          GetWebhookRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetWebhookRequest").msgclass
          CreateWebhookRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateWebhookRequest").msgclass
          UpdateWebhookRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateWebhookRequest").msgclass
          DeleteWebhookRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteWebhookRequest").msgclass
          WebhookRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookRequest").msgclass
          WebhookRequest::FulfillmentInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookRequest.FulfillmentInfo").msgclass
          WebhookRequest::IntentInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookRequest.IntentInfo").msgclass
          WebhookRequest::IntentInfo::IntentParameterValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookRequest.IntentInfo.IntentParameterValue").msgclass
          WebhookRequest::SentimentAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookRequest.SentimentAnalysisResult").msgclass
          WebhookResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookResponse").msgclass
          WebhookResponse::FulfillmentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookResponse.FulfillmentResponse").msgclass
          WebhookResponse::FulfillmentResponse::MergeBehavior = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.WebhookResponse.FulfillmentResponse.MergeBehavior").enummodule
          PageInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.PageInfo").msgclass
          PageInfo::FormInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.PageInfo.FormInfo").msgclass
          PageInfo::FormInfo::ParameterInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.PageInfo.FormInfo.ParameterInfo").msgclass
          PageInfo::FormInfo::ParameterInfo::ParameterState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.PageInfo.FormInfo.ParameterInfo.ParameterState").enummodule
          SessionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SessionInfo").msgclass
          LanguageInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.LanguageInfo").msgclass
        end
      end
    end
  end
end
