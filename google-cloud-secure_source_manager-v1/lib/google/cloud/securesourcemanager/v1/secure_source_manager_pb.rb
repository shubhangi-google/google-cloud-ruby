# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securesourcemanager/v1/secure_source_manager.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n?google/cloud/securesourcemanager/v1/secure_source_manager.proto\x12#google.cloud.securesourcemanager.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd5\n\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12N\n\x06labels\x18\x04 \x03(\x0b\x32\x39.google.cloud.securesourcemanager.v1.Instance.LabelsEntryB\x03\xe0\x41\x01\x12X\n\x0eprivate_config\x18\r \x01(\x0b\x32;.google.cloud.securesourcemanager.v1.Instance.PrivateConfigB\x03\xe0\x41\x01\x12G\n\x05state\x18\x05 \x01(\x0e\x32\x33.google.cloud.securesourcemanager.v1.Instance.StateB\x03\xe0\x41\x03\x12P\n\nstate_note\x18\n \x01(\x0e\x32\x37.google.cloud.securesourcemanager.v1.Instance.StateNoteB\x03\xe0\x41\x03\x12:\n\x07kms_key\x18\x0b \x01(\tB)\xe0\x41\x05\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12R\n\x0bhost_config\x18\t \x01(\x0b\x32\x38.google.cloud.securesourcemanager.v1.Instance.HostConfigB\x03\xe0\x41\x03\x1a^\n\nHostConfig\x12\x11\n\x04html\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03\x61pi\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x15\n\x08git_http\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07git_ssh\x18\x04 \x01(\tB\x03\xe0\x41\x03\x1a\xb0\x02\n\rPrivateConfig\x12\x1a\n\nis_private\x18\x01 \x01(\x08\x42\x06\xe0\x41\x05\xe0\x41\x02\x12;\n\x07\x63\x61_pool\x18\x02 \x01(\tB*\xe0\x41\x05\xe0\x41\x02\xfa\x41!\n\x1fprivateca.googleapis.com/CaPool\x12Q\n\x17http_service_attachment\x18\x03 \x01(\tB0\xe0\x41\x03\xfa\x41*\n(compute.googleapis.com/ServiceAttachment\x12P\n\x16ssh_service_attachment\x18\x04 \x01(\tB0\xe0\x41\x03\xfa\x41*\n(compute.googleapis.com/ServiceAttachment\x12!\n\x14psc_allowed_projects\x18\x06 \x03(\tB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"_\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\n\n\x06PAUSED\x10\x04\x12\x0b\n\x07UNKNOWN\x10\x06\"_\n\tStateNote\x12\x1a\n\x16STATE_NOTE_UNSPECIFIED\x10\x00\x12\x1b\n\x17PAUSED_CMEK_UNAVAILABLE\x10\x01\x12\x19\n\x11INSTANCE_RESUMING\x10\x02\x1a\x02\x08\x01:q\xea\x41n\n+securesourcemanager.googleapis.com/Instance\x12<projects/{project}/locations/{location}/instances/{instance}R\x01\x01\"\xd0\x05\n\nRepository\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x08instance\x18\x03 \x01(\tB3\xe0\x41\x01\xfa\x41-\n+securesourcemanager.googleapis.com/Instance\x12\x10\n\x03uid\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12G\n\x04uris\x18\t \x01(\x0b\x32\x34.google.cloud.securesourcemanager.v1.Repository.URIsB\x03\xe0\x41\x03\x12Z\n\x0einitial_config\x18\n \x01(\x0b\x32=.google.cloud.securesourcemanager.v1.Repository.InitialConfigB\x03\xe0\x41\x04\x1a\x43\n\x04URIs\x12\x11\n\x04html\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x16\n\tgit_https\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03\x61pi\x18\x03 \x01(\tB\x03\xe0\x41\x03\x1a\\\n\rInitialConfig\x12\x16\n\x0e\x64\x65\x66\x61ult_branch\x18\x01 \x01(\t\x12\x12\n\ngitignores\x18\x02 \x03(\t\x12\x0f\n\x07license\x18\x03 \x01(\t\x12\x0e\n\x06readme\x18\x04 \x01(\t:u\xea\x41r\n-securesourcemanager.googleapis.com/Repository\x12\x41projects/{project}/locations/{location}/repositories/{repository}\"\xdf\x06\n\nBranchRule\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12Z\n\x0b\x61nnotations\x18\x05 \x03(\x0b\x32@.google.cloud.securesourcemanager.v1.BranchRule.AnnotationsEntryB\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x1c\n\x0finclude_pattern\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08\x64isabled\x18\x08 \x01(\x08\x42\x03\xe0\x41\x01\x12!\n\x14require_pull_request\x18\t \x01(\x08\x42\x03\xe0\x41\x01\x12\"\n\x15minimum_reviews_count\x18\n \x01(\x05\x42\x03\xe0\x41\x01\x12$\n\x17minimum_approvals_count\x18\x0b \x01(\x05\x42\x03\xe0\x41\x01\x12&\n\x19require_comments_resolved\x18\x0c \x01(\x08\x42\x03\xe0\x41\x01\x12 \n\x13\x61llow_stale_reviews\x18\x0f \x01(\x08\x42\x03\xe0\x41\x01\x12#\n\x16require_linear_history\x18\r \x01(\x08\x42\x03\xe0\x41\x01\x12Z\n\x16required_status_checks\x18\x0e \x03(\x0b\x32\x35.google.cloud.securesourcemanager.v1.BranchRule.CheckB\x03\xe0\x41\x01\x1a\x1d\n\x05\x43heck\x12\x14\n\x07\x63ontext\x18\x01 \x01(\tB\x03\xe0\x41\x02\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x90\x01\xea\x41\x8c\x01\n-securesourcemanager.googleapis.com/BranchRule\x12[projects/{project}/locations/{location}/repositories/{repository}/branchRules/{branch_rule}\"\xa4\x01\n\x14ListInstancesRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\x12+securesourcemanager.googleapis.com/Instance\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x87\x01\n\x15ListInstancesResponse\x12@\n\tinstances\x18\x01 \x03(\x0b\x32-.google.cloud.securesourcemanager.v1.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"W\n\x12GetInstanceRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+securesourcemanager.googleapis.com/Instance\"\xd5\x01\n\x15\x43reateInstanceRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\x12+securesourcemanager.googleapis.com/Instance\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x44\n\x08instance\x18\x03 \x01(\x0b\x32-.google.cloud.securesourcemanager.v1.InstanceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"s\n\x15\x44\x65leteInstanceRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+securesourcemanager.googleapis.com/Instance\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\"\xe8\x01\n\x17ListRepositoriesRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-securesourcemanager.googleapis.com/Repository\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x08instance\x18\x05 \x01(\tB3\xe0\x41\x01\xfa\x41-\n+securesourcemanager.googleapis.com/Instance\"z\n\x18ListRepositoriesResponse\x12\x45\n\x0crepositories\x18\x01 \x03(\x0b\x32/.google.cloud.securesourcemanager.v1.Repository\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"[\n\x14GetRepositoryRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-securesourcemanager.googleapis.com/Repository\"\xc6\x01\n\x17\x43reateRepositoryRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-securesourcemanager.googleapis.com/Repository\x12H\n\nrepository\x18\x02 \x01(\x0b\x32/.google.cloud.securesourcemanager.v1.RepositoryB\x03\xe0\x41\x02\x12\x1a\n\rrepository_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"z\n\x17\x44\x65leteRepositoryRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-securesourcemanager.googleapis.com/Repository\x12\x1a\n\rallow_missing\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\"[\n\x14GetBranchRuleRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-securesourcemanager.googleapis.com/BranchRule\"\xc8\x01\n\x17\x43reateBranchRuleRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-securesourcemanager.googleapis.com/BranchRule\x12I\n\x0b\x62ranch_rule\x18\x02 \x01(\x0b\x32/.google.cloud.securesourcemanager.v1.BranchRuleB\x03\xe0\x41\x02\x12\x1b\n\x0e\x62ranch_rule_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\x90\x01\n\x16ListBranchRulesRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-securesourcemanager.googleapis.com/BranchRule\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"z\n\x17\x44\x65leteBranchRuleRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-securesourcemanager.googleapis.com/BranchRule\x12\x1a\n\rallow_missing\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\"\xb6\x01\n\x17UpdateBranchRuleRequest\x12I\n\x0b\x62ranch_rule\x18\x01 \x01(\x0b\x32/.google.cloud.securesourcemanager.v1.BranchRuleB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x12\x34\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"y\n\x17ListBranchRulesResponse\x12\x45\n\x0c\x62ranch_rules\x18\x01 \x03(\x0b\x32/.google.cloud.securesourcemanager.v1.BranchRule\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xfa\x1b\n\x13SecureSourceManager\x12\xc6\x01\n\rListInstances\x12\x39.google.cloud.securesourcemanager.v1.ListInstancesRequest\x1a:.google.cloud.securesourcemanager.v1.ListInstancesResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/instances\x12\xb3\x01\n\x0bGetInstance\x12\x37.google.cloud.securesourcemanager.v1.GetInstanceRequest\x1a-.google.cloud.securesourcemanager.v1.Instance\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/instances/*}\x12\xea\x01\n\x0e\x43reateInstance\x12:.google.cloud.securesourcemanager.v1.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"}\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02\x39\"-/v1/{parent=projects/*/locations/*}/instances:\x08instance\x12\xd6\x01\n\x0e\x44\x65leteInstance\x12:.google.cloud.securesourcemanager.v1.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"i\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/instances/*}\x12\xd2\x01\n\x10ListRepositories\x12<.google.cloud.securesourcemanager.v1.ListRepositoriesRequest\x1a=.google.cloud.securesourcemanager.v1.ListRepositoriesResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/repositories\x12\xbc\x01\n\rGetRepository\x12\x39.google.cloud.securesourcemanager.v1.GetRepositoryRequest\x1a/.google.cloud.securesourcemanager.v1.Repository\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/repositories/*}\x12\xfa\x01\n\x10\x43reateRepository\x12<.google.cloud.securesourcemanager.v1.CreateRepositoryRequest\x1a\x1d.google.longrunning.Operation\"\x88\x01\xca\x41\x1f\n\nRepository\x12\x11OperationMetadata\xda\x41\x1fparent,repository,repository_id\x82\xd3\xe4\x93\x02>\"0/v1/{parent=projects/*/locations/*}/repositories:\nrepository\x12\xdd\x01\n\x10\x44\x65leteRepository\x12<.google.cloud.securesourcemanager.v1.DeleteRepositoryRequest\x1a\x1d.google.longrunning.Operation\"l\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/repositories/*}\x12\xa3\x01\n\x10GetIamPolicyRepo\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"T\xda\x41\x08resource\x82\xd3\xe4\x93\x02\x43\x12\x41/v1/{resource=projects/*/locations/*/repositories/*}:getIamPolicy\x12\xa6\x01\n\x10SetIamPolicyRepo\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"W\xda\x41\x08resource\x82\xd3\xe4\x93\x02\x46\"A/v1/{resource=projects/*/locations/*/repositories/*}:setIamPolicy:\x01*\x12\xcc\x01\n\x16TestIamPermissionsRepo\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"]\xda\x41\x08resource\x82\xd3\xe4\x93\x02L\"G/v1/{resource=projects/*/locations/*/repositories/*}:testIamPermissions:\x01*\x12\x8b\x02\n\x10\x43reateBranchRule\x12<.google.cloud.securesourcemanager.v1.CreateBranchRuleRequest\x1a\x1d.google.longrunning.Operation\"\x99\x01\xca\x41\x1f\n\nBranchRule\x12\x11OperationMetadata\xda\x41!parent,branch_rule,branch_rule_id\x82\xd3\xe4\x93\x02M\">/v1/{parent=projects/*/locations/*/repositories/*}/branchRules:\x0b\x62ranch_rule\x12\xdd\x01\n\x0fListBranchRules\x12;.google.cloud.securesourcemanager.v1.ListBranchRulesRequest\x1a<.google.cloud.securesourcemanager.v1.ListBranchRulesResponse\"O\xda\x41\x06parent\x82\xd3\xe4\x93\x02@\x12>/v1/{parent=projects/*/locations/*/repositories/*}/branchRules\x12\xca\x01\n\rGetBranchRule\x12\x39.google.cloud.securesourcemanager.v1.GetBranchRuleRequest\x1a/.google.cloud.securesourcemanager.v1.BranchRule\"M\xda\x41\x04name\x82\xd3\xe4\x93\x02@\x12>/v1/{name=projects/*/locations/*/repositories/*/branchRules/*}\x12\x8d\x02\n\x10UpdateBranchRule\x12<.google.cloud.securesourcemanager.v1.UpdateBranchRuleRequest\x1a\x1d.google.longrunning.Operation\"\x9b\x01\xca\x41\x1f\n\nBranchRule\x12\x11OperationMetadata\xda\x41\x17\x62ranch_rule,update_mask\x82\xd3\xe4\x93\x02Y2J/v1/{branch_rule.name=projects/*/locations/*/repositories/*/branchRules/*}:\x0b\x62ranch_rule\x12\xeb\x01\n\x10\x44\x65leteBranchRule\x12<.google.cloud.securesourcemanager.v1.DeleteBranchRuleRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02@*>/v1/{name=projects/*/locations/*/repositories/*/branchRules/*}\x1aV\xca\x41\"securesourcemanager.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xe9\x04\n\'com.google.cloud.securesourcemanager.v1B\x18SecureSourceManagerProtoP\x01ZYcloud.google.com/go/securesourcemanager/apiv1/securesourcemanagerpb;securesourcemanagerpb\xaa\x02#Google.Cloud.SecureSourceManager.V1\xca\x02#Google\\Cloud\\SecureSourceManager\\V1\xea\x02&Google::Cloud::SecureSourceManager::V1\xea\x41x\n!cloudkms.googleapis.com/CryptoKey\x12Sprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}\xea\x41\\\n\x1fprivateca.googleapis.com/CaPool\x12\x39projects/{project}/locations/{location}/caPools/{ca_pool}\xea\x41w\n(compute.googleapis.com/ServiceAttachment\x12Kprojects/{project}/regions/{region}/serviceAttachments/{service_attachment}b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module SecureSourceManager
      module V1
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Instance").msgclass
        Instance::HostConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Instance.HostConfig").msgclass
        Instance::PrivateConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Instance.PrivateConfig").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Instance.State").enummodule
        Instance::StateNote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Instance.StateNote").enummodule
        Repository = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Repository").msgclass
        Repository::URIs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Repository.URIs").msgclass
        Repository::InitialConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.Repository.InitialConfig").msgclass
        BranchRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.BranchRule").msgclass
        BranchRule::Check = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.BranchRule.Check").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.CreateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.DeleteInstanceRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.OperationMetadata").msgclass
        ListRepositoriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.ListRepositoriesRequest").msgclass
        ListRepositoriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.ListRepositoriesResponse").msgclass
        GetRepositoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.GetRepositoryRequest").msgclass
        CreateRepositoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.CreateRepositoryRequest").msgclass
        DeleteRepositoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.DeleteRepositoryRequest").msgclass
        GetBranchRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.GetBranchRuleRequest").msgclass
        CreateBranchRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.CreateBranchRuleRequest").msgclass
        ListBranchRulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.ListBranchRulesRequest").msgclass
        DeleteBranchRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.DeleteBranchRuleRequest").msgclass
        UpdateBranchRuleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.UpdateBranchRuleRequest").msgclass
        ListBranchRulesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securesourcemanager.v1.ListBranchRulesResponse").msgclass
      end
    end
  end
end
