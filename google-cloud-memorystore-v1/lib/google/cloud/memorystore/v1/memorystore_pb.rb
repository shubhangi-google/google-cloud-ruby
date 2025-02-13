# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/memorystore/v1/memorystore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n-google/cloud/memorystore/v1/memorystore.proto\x12\x1bgoogle.cloud.memorystore.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb8\x15\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x46\n\x06labels\x18\x04 \x03(\x0b\x32\x31.google.cloud.memorystore.v1.Instance.LabelsEntryB\x03\xe0\x41\x01\x12?\n\x05state\x18\x05 \x01(\x0e\x32+.google.cloud.memorystore.v1.Instance.StateB\x03\xe0\x41\x03\x12H\n\nstate_info\x18\x06 \x01(\x0b\x32/.google.cloud.memorystore.v1.Instance.StateInfoB\x03\xe0\x41\x03\x12\x18\n\x03uid\x18\x07 \x01(\tB\x0b\xe0\x41\x03\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x12\x1f\n\rreplica_count\x18\x08 \x01(\x05\x42\x03\xe0\x41\x01H\x00\x88\x01\x01\x12[\n\x12\x61uthorization_mode\x18\t \x01(\x0e\x32\x37.google.cloud.memorystore.v1.Instance.AuthorizationModeB\x06\xe0\x41\x01\xe0\x41\x05\x12\x64\n\x17transit_encryption_mode\x18\n \x01(\x0e\x32;.google.cloud.memorystore.v1.Instance.TransitEncryptionModeB\x06\xe0\x41\x01\xe0\x41\x05\x12\x18\n\x0bshard_count\x18\x0b \x01(\x05\x42\x03\xe0\x41\x01\x12P\n\x13\x64iscovery_endpoints\x18\x0c \x03(\x0b\x32..google.cloud.memorystore.v1.DiscoveryEndpointB\x03\xe0\x41\x03\x12I\n\tnode_type\x18\r \x01(\x0e\x32..google.cloud.memorystore.v1.Instance.NodeTypeB\x06\xe0\x41\x01\xe0\x41\x05\x12O\n\x12persistence_config\x18\x0e \x01(\x0b\x32..google.cloud.memorystore.v1.PersistenceConfigB\x03\xe0\x41\x01\x12\x1e\n\x0e\x65ngine_version\x18\x0f \x01(\tB\x06\xe0\x41\x01\xe0\x41\x05\x12U\n\x0e\x65ngine_configs\x18\x10 \x03(\x0b\x32\x38.google.cloud.memorystore.v1.Instance.EngineConfigsEntryB\x03\xe0\x41\x01\x12\x41\n\x0bnode_config\x18\x11 \x01(\x0b\x32\'.google.cloud.memorystore.v1.NodeConfigB\x03\xe0\x41\x03\x12]\n\x18zone_distribution_config\x18\x12 \x01(\x0b\x32\x33.google.cloud.memorystore.v1.ZoneDistributionConfigB\x06\xe0\x41\x01\xe0\x41\x05\x12-\n\x1b\x64\x65letion_protection_enabled\x18\x13 \x01(\x08\x42\x03\xe0\x41\x01H\x01\x88\x01\x01\x12T\n\x14psc_auto_connections\x18\x14 \x03(\x0b\x32..google.cloud.memorystore.v1.PscAutoConnectionB\x06\xe0\x41\x02\xe0\x41\x05\x12N\n\tendpoints\x18\x19 \x03(\x0b\x32\x36.google.cloud.memorystore.v1.Instance.InstanceEndpointB\x03\xe0\x41\x01\x12=\n\x04mode\x18\x1a \x01(\x0e\x32*.google.cloud.memorystore.v1.Instance.ModeB\x03\xe0\x41\x01\x1a\xf8\x01\n\tStateInfo\x12V\n\x0bupdate_info\x18\x01 \x01(\x0b\x32:.google.cloud.memorystore.v1.Instance.StateInfo.UpdateInfoB\x03\xe0\x41\x03H\x00\x1a\x8a\x01\n\nUpdateInfo\x12$\n\x12target_shard_count\x18\x01 \x01(\x05\x42\x03\xe0\x41\x03H\x00\x88\x01\x01\x12&\n\x14target_replica_count\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03H\x01\x88\x01\x01\x42\x15\n\x13_target_shard_countB\x17\n\x15_target_replica_countB\x06\n\x04info\x1a\x64\n\x10InstanceEndpoint\x12P\n\x0b\x63onnections\x18\x01 \x03(\x0b\x32\x36.google.cloud.memorystore.v1.Instance.ConnectionDetailB\x03\xe0\x41\x01\x1a\xb5\x01\n\x10\x43onnectionDetail\x12M\n\x13psc_auto_connection\x18\x01 \x01(\x0b\x32..google.cloud.memorystore.v1.PscAutoConnectionH\x00\x12\x44\n\x0epsc_connection\x18\x02 \x01(\x0b\x32*.google.cloud.memorystore.v1.PscConnectionH\x00\x42\x0c\n\nconnection\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x34\n\x12\x45ngineConfigsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"T\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08UPDATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\"X\n\x11\x41uthorizationMode\x12\"\n\x1e\x41UTHORIZATION_MODE_UNSPECIFIED\x10\x00\x12\x11\n\rAUTH_DISABLED\x10\x01\x12\x0c\n\x08IAM_AUTH\x10\x02\"|\n\x15TransitEncryptionMode\x12\'\n#TRANSIT_ENCRYPTION_MODE_UNSPECIFIED\x10\x00\x12\x1f\n\x1bTRANSIT_ENCRYPTION_DISABLED\x10\x01\x12\x19\n\x15SERVER_AUTHENTICATION\x10\x02\"w\n\x08NodeType\x12\x19\n\x15NODE_TYPE_UNSPECIFIED\x10\x00\x12\x14\n\x10SHARED_CORE_NANO\x10\x01\x12\x12\n\x0eHIGHMEM_MEDIUM\x10\x02\x12\x12\n\x0eHIGHMEM_XLARGE\x10\x03\x12\x12\n\x0eSTANDARD_SMALL\x10\x04\"S\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\x12\n\nSTANDALONE\x10\x01\x1a\x02\x08\x01\x12\x0b\n\x07\x43LUSTER\x10\x02\x12\x14\n\x10\x43LUSTER_DISABLED\x10\x04:{\xea\x41x\n#memorystore.googleapis.com/Instance\x12<projects/{project}/locations/{location}/instances/{instance}*\tinstances2\x08instanceB\x10\n\x0e_replica_countB\x1e\n\x1c_deletion_protection_enabled\"\xfe\x03\n\x11PscAutoConnection\x12\x16\n\x04port\x18\t \x01(\x05\x42\x06\xe0\x41\x03\xe0\x41\x01H\x00\x12\x1e\n\x11psc_connection_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\nip_address\x18\x02 \x01(\tB\x0b\xe0\x41\x03\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12\x46\n\x0f\x66orwarding_rule\x18\x03 \x01(\tB-\xe0\x41\x03\xfa\x41\'\n%compute.googleapis.com/ForwardingRule\x12\x17\n\nproject_id\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\x07network\x18\x05 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12L\n\x12service_attachment\x18\x06 \x01(\tB0\xe0\x41\x03\xfa\x41*\n(compute.googleapis.com/ServiceAttachment\x12T\n\x15psc_connection_status\x18\x07 \x01(\x0e\x32\x30.google.cloud.memorystore.v1.PscConnectionStatusB\x03\xe0\x41\x03\x12I\n\x0f\x63onnection_type\x18\x08 \x01(\x0e\x32+.google.cloud.memorystore.v1.ConnectionTypeB\x03\xe0\x41\x03\x42\x07\n\x05ports\"\xd9\x03\n\rPscConnection\x12\x1e\n\x11psc_connection_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\nip_address\x18\x02 \x01(\tB\x0b\xe0\x41\x02\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12\x46\n\x0f\x66orwarding_rule\x18\x03 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%compute.googleapis.com/ForwardingRule\x12\x17\n\nproject_id\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x37\n\x07network\x18\x05 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12L\n\x12service_attachment\x18\x06 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(compute.googleapis.com/ServiceAttachment\x12T\n\x15psc_connection_status\x18\x07 \x01(\x0e\x32\x30.google.cloud.memorystore.v1.PscConnectionStatusB\x03\xe0\x41\x03\x12I\n\x0f\x63onnection_type\x18\x08 \x01(\x0e\x32+.google.cloud.memorystore.v1.ConnectionTypeB\x03\xe0\x41\x03\"u\n\x11\x44iscoveryEndpoint\x12\x14\n\x07\x61\x64\x64ress\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04port\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x12\x37\n\x07network\x18\x04 \x01(\tB&\xe0\x41\x03\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\"\xd7\x06\n\x11PersistenceConfig\x12Q\n\x04mode\x18\x01 \x01(\x0e\x32>.google.cloud.memorystore.v1.PersistenceConfig.PersistenceModeB\x03\xe0\x41\x01\x12Q\n\nrdb_config\x18\x02 \x01(\x0b\x32\x38.google.cloud.memorystore.v1.PersistenceConfig.RDBConfigB\x03\xe0\x41\x01\x12Q\n\naof_config\x18\x03 \x01(\x0b\x32\x38.google.cloud.memorystore.v1.PersistenceConfig.AOFConfigB\x03\xe0\x41\x01\x1a\xb1\x02\n\tRDBConfig\x12i\n\x13rdb_snapshot_period\x18\x01 \x01(\x0e\x32G.google.cloud.memorystore.v1.PersistenceConfig.RDBConfig.SnapshotPeriodB\x03\xe0\x41\x01\x12@\n\x17rdb_snapshot_start_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"w\n\x0eSnapshotPeriod\x12\x1f\n\x1bSNAPSHOT_PERIOD_UNSPECIFIED\x10\x00\x12\x0c\n\x08ONE_HOUR\x10\x01\x12\r\n\tSIX_HOURS\x10\x02\x12\x10\n\x0cTWELVE_HOURS\x10\x03\x12\x15\n\x11TWENTY_FOUR_HOURS\x10\x04\x1a\xbf\x01\n\tAOFConfig\x12_\n\x0c\x61ppend_fsync\x18\x01 \x01(\x0e\x32\x44.google.cloud.memorystore.v1.PersistenceConfig.AOFConfig.AppendFsyncB\x03\xe0\x41\x01\"Q\n\x0b\x41ppendFsync\x12\x1c\n\x18\x41PPEND_FSYNC_UNSPECIFIED\x10\x00\x12\t\n\x05NEVER\x10\x01\x12\r\n\tEVERY_SEC\x10\x02\x12\n\n\x06\x41LWAYS\x10\x03\"S\n\x0fPersistenceMode\x12 \n\x1cPERSISTENCE_MODE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\x07\n\x03RDB\x10\x02\x12\x07\n\x03\x41OF\x10\x03\"\"\n\nNodeConfig\x12\x14\n\x07size_gb\x18\x01 \x01(\x01\x42\x03\xe0\x41\x03\"\xe9\x01\n\x16ZoneDistributionConfig\x12\x11\n\x04zone\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12[\n\x04mode\x18\x01 \x01(\x0e\x32H.google.cloud.memorystore.v1.ZoneDistributionConfig.ZoneDistributionModeB\x03\xe0\x41\x01\"_\n\x14ZoneDistributionMode\x12&\n\"ZONE_DISTRIBUTION_MODE_UNSPECIFIED\x10\x00\x12\x0e\n\nMULTI_ZONE\x10\x01\x12\x0f\n\x0bSINGLE_ZONE\x10\x02\"\xb0\x01\n\x14ListInstancesRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#memorystore.googleapis.com/Instance\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x7f\n\x15ListInstancesResponse\x12\x38\n\tinstances\x18\x01 \x03(\x0b\x32%.google.cloud.memorystore.v1.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"O\n\x12GetInstanceRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#memorystore.googleapis.com/Instance\"\xcd\x01\n\x15\x43reateInstanceRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#memorystore.googleapis.com/Instance\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\x08instance\x18\x03 \x01(\x0b\x32%.google.cloud.memorystore.v1.InstanceB\x03\xe0\x41\x02\x12\x1f\n\nrequest_id\x18\x04 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xac\x01\n\x15UpdateInstanceRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12<\n\x08instance\x18\x02 \x01(\x0b\x32%.google.cloud.memorystore.v1.InstanceB\x03\xe0\x41\x02\x12\x1f\n\nrequest_id\x18\x03 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"s\n\x15\x44\x65leteInstanceRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#memorystore.googleapis.com/Instance\x12\x1f\n\nrequest_id\x18\x02 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"[\n\x1eGetCertificateAuthorityRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#memorystore.googleapis.com/Instance\"\x89\x04\n\x14\x43\x65rtificateAuthority\x12j\n\x11managed_server_ca\x18\x02 \x01(\x0b\x32M.google.cloud.memorystore.v1.CertificateAuthority.ManagedCertificateAuthorityH\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x1a\xab\x01\n\x1bManagedCertificateAuthority\x12i\n\x08\x63\x61_certs\x18\x01 \x03(\x0b\x32W.google.cloud.memorystore.v1.CertificateAuthority.ManagedCertificateAuthority.CertChain\x1a!\n\tCertChain\x12\x14\n\x0c\x63\x65rtificates\x18\x01 \x03(\t:\xb6\x01\xea\x41\xb2\x01\n/memorystore.googleapis.com/CertificateAuthority\x12Qprojects/{project}/locations/{location}/instances/{instance}/certificateAuthority*\x16\x63\x65rtificateAuthorities2\x14\x63\x65rtificateAuthorityB\x0b\n\tserver_ca\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03*W\n\x13PscConnectionStatus\x12%\n!PSC_CONNECTION_STATUS_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\r\n\tNOT_FOUND\x10\x02*\x89\x01\n\x0e\x43onnectionType\x12\x1f\n\x1b\x43ONNECTION_TYPE_UNSPECIFIED\x10\x00\x12\x1d\n\x19\x43ONNECTION_TYPE_DISCOVERY\x10\x01\x12\x1b\n\x17\x43ONNECTION_TYPE_PRIMARY\x10\x02\x12\x1a\n\x16\x43ONNECTION_TYPE_READER\x10\x03\x32\xb8\n\n\x0bMemorystore\x12\xb6\x01\n\rListInstances\x12\x31.google.cloud.memorystore.v1.ListInstancesRequest\x1a\x32.google.cloud.memorystore.v1.ListInstancesResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/instances\x12\xa3\x01\n\x0bGetInstance\x12/.google.cloud.memorystore.v1.GetInstanceRequest\x1a%.google.cloud.memorystore.v1.Instance\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/instances/*}\x12\xe2\x01\n\x0e\x43reateInstance\x12\x32.google.cloud.memorystore.v1.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"}\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02\x39\"-/v1/{parent=projects/*/locations/*}/instances:\x08instance\x12\xe4\x01\n\x0eUpdateInstance\x12\x32.google.cloud.memorystore.v1.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x7f\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x14instance,update_mask\x82\xd3\xe4\x93\x02\x42\x32\x36/v1/{instance.name=projects/*/locations/*/instances/*}:\x08instance\x12\xce\x01\n\x0e\x44\x65leteInstance\x12\x32.google.cloud.memorystore.v1.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"i\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/instances/*}\x12\xdc\x01\n\x17GetCertificateAuthority\x12;.google.cloud.memorystore.v1.GetCertificateAuthorityRequest\x1a\x31.google.cloud.memorystore.v1.CertificateAuthority\"Q\xda\x41\x04name\x82\xd3\xe4\x93\x02\x44\x12\x42/v1/{name=projects/*/locations/*/instances/*}/certificateAuthority\x1aN\xca\x41\x1amemorystore.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x8c\x04\n\x1f\x63om.google.cloud.memorystore.v1B\x0bV1mainProtoP\x01ZAcloud.google.com/go/memorystore/apiv1/memorystorepb;memorystorepb\xaa\x02\x1bGoogle.Cloud.Memorystore.V1\xca\x02\x1bGoogle\\Cloud\\Memorystore\\V1\xea\x02\x1eGoogle::Cloud::Memorystore::V1\xea\x41n\n%compute.googleapis.com/ForwardingRule\x12\x45projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}\xea\x41N\n\x1e\x63ompute.googleapis.com/Network\x12,projects/{project}/global/networks/{network}\xea\x41w\n(compute.googleapis.com/ServiceAttachment\x12Kprojects/{project}/regions/{region}/serviceAttachments/{service_attachment}b\x06proto3"

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
    module Memorystore
      module V1
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance").msgclass
        Instance::StateInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.StateInfo").msgclass
        Instance::StateInfo::UpdateInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.StateInfo.UpdateInfo").msgclass
        Instance::InstanceEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.InstanceEndpoint").msgclass
        Instance::ConnectionDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.ConnectionDetail").msgclass
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.State").enummodule
        Instance::AuthorizationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.AuthorizationMode").enummodule
        Instance::TransitEncryptionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.TransitEncryptionMode").enummodule
        Instance::NodeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.NodeType").enummodule
        Instance::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.Instance.Mode").enummodule
        PscAutoConnection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PscAutoConnection").msgclass
        PscConnection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PscConnection").msgclass
        DiscoveryEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.DiscoveryEndpoint").msgclass
        PersistenceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PersistenceConfig").msgclass
        PersistenceConfig::RDBConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PersistenceConfig.RDBConfig").msgclass
        PersistenceConfig::RDBConfig::SnapshotPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PersistenceConfig.RDBConfig.SnapshotPeriod").enummodule
        PersistenceConfig::AOFConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PersistenceConfig.AOFConfig").msgclass
        PersistenceConfig::AOFConfig::AppendFsync = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PersistenceConfig.AOFConfig.AppendFsync").enummodule
        PersistenceConfig::PersistenceMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PersistenceConfig.PersistenceMode").enummodule
        NodeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.NodeConfig").msgclass
        ZoneDistributionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.ZoneDistributionConfig").msgclass
        ZoneDistributionConfig::ZoneDistributionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.ZoneDistributionConfig.ZoneDistributionMode").enummodule
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.CreateInstanceRequest").msgclass
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.DeleteInstanceRequest").msgclass
        GetCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.GetCertificateAuthorityRequest").msgclass
        CertificateAuthority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.CertificateAuthority").msgclass
        CertificateAuthority::ManagedCertificateAuthority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.CertificateAuthority.ManagedCertificateAuthority").msgclass
        CertificateAuthority::ManagedCertificateAuthority::CertChain = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.CertificateAuthority.ManagedCertificateAuthority.CertChain").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.OperationMetadata").msgclass
        PscConnectionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.PscConnectionStatus").enummodule
        ConnectionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.memorystore.v1.ConnectionType").enummodule
      end
    end
  end
end
