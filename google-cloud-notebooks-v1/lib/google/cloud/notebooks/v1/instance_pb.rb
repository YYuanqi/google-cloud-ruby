# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1/instance.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v1/environment_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n(google/cloud/notebooks/v1/instance.proto\x12\x19google.cloud.notebooks.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a+google/cloud/notebooks/v1/environment.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf9\x01\n\x13ReservationAffinity\x12Z\n\x18\x63onsume_reservation_type\x18\x01 \x01(\x0e\x32\x33.google.cloud.notebooks.v1.ReservationAffinity.TypeB\x03\xe0\x41\x01\x12\x10\n\x03key\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06values\x18\x03 \x03(\tB\x03\xe0\x41\x01\"_\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x12\n\x0eNO_RESERVATION\x10\x01\x12\x13\n\x0f\x41NY_RESERVATION\x10\x02\x12\x18\n\x14SPECIFIC_RESERVATION\x10\x03\"\xad\x1c\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x36\n\x08vm_image\x18\x02 \x01(\x0b\x32\".google.cloud.notebooks.v1.VmImageH\x00\x12\x44\n\x0f\x63ontainer_image\x18\x03 \x01(\x0b\x32).google.cloud.notebooks.v1.ContainerImageH\x00\x12\x1b\n\x13post_startup_script\x18\x04 \x01(\t\x12\x16\n\tproxy_uri\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1c\n\x0finstance_owners\x18\x06 \x03(\tB\x03\xe0\x41\x04\x12\x17\n\x0fservice_account\x18\x07 \x01(\t\x12#\n\x16service_account_scopes\x18\x1f \x03(\tB\x03\xe0\x41\x01\x12\x19\n\x0cmachine_type\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12Q\n\x12\x61\x63\x63\x65lerator_config\x18\t \x01(\x0b\x32\x35.google.cloud.notebooks.v1.Instance.AcceleratorConfig\x12=\n\x05state\x18\n \x01(\x0e\x32).google.cloud.notebooks.v1.Instance.StateB\x03\xe0\x41\x03\x12\x1a\n\x12install_gpu_driver\x18\x0b \x01(\x08\x12\x1e\n\x16\x63ustom_gpu_driver_path\x18\x0c \x01(\t\x12I\n\x0e\x62oot_disk_type\x18\r \x01(\x0e\x32,.google.cloud.notebooks.v1.Instance.DiskTypeB\x03\xe0\x41\x04\x12\x1e\n\x11\x62oot_disk_size_gb\x18\x0e \x01(\x03\x42\x03\xe0\x41\x04\x12I\n\x0e\x64\x61ta_disk_type\x18\x19 \x01(\x0e\x32,.google.cloud.notebooks.v1.Instance.DiskTypeB\x03\xe0\x41\x04\x12\x1e\n\x11\x64\x61ta_disk_size_gb\x18\x1a \x01(\x03\x42\x03\xe0\x41\x04\x12 \n\x13no_remove_data_disk\x18\x1b \x01(\x08\x42\x03\xe0\x41\x04\x12P\n\x0f\x64isk_encryption\x18\x0f \x01(\x0e\x32\x32.google.cloud.notebooks.v1.Instance.DiskEncryptionB\x03\xe0\x41\x04\x12\x14\n\x07kms_key\x18\x10 \x01(\tB\x03\xe0\x41\x04\x12<\n\x05\x64isks\x18\x1c \x03(\x0b\x32(.google.cloud.notebooks.v1.Instance.DiskB\x03\xe0\x41\x03\x12\x61\n\x18shielded_instance_config\x18\x1e \x01(\x0b\x32:.google.cloud.notebooks.v1.Instance.ShieldedInstanceConfigB\x03\xe0\x41\x01\x12\x14\n\x0cno_public_ip\x18\x11 \x01(\x08\x12\x17\n\x0fno_proxy_access\x18\x12 \x01(\x08\x12\x0f\n\x07network\x18\x13 \x01(\t\x12\x0e\n\x06subnet\x18\x14 \x01(\t\x12?\n\x06labels\x18\x15 \x03(\x0b\x32/.google.cloud.notebooks.v1.Instance.LabelsEntry\x12\x43\n\x08metadata\x18\x16 \x03(\x0b\x32\x31.google.cloud.notebooks.v1.Instance.MetadataEntry\x12\x11\n\x04tags\x18  \x03(\tB\x03\xe0\x41\x01\x12P\n\x0fupgrade_history\x18\x1d \x03(\x0b\x32\x37.google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry\x12\x42\n\x08nic_type\x18! \x01(\x0e\x32+.google.cloud.notebooks.v1.Instance.NicTypeB\x03\xe0\x41\x01\x12Q\n\x14reservation_affinity\x18\" \x01(\x0b\x32..google.cloud.notebooks.v1.ReservationAffinityB\x03\xe0\x41\x01\x12\x14\n\x07\x63reator\x18$ \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0e\x63\x61n_ip_forward\x18\' \x01(\x08\x42\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x17 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x18 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1aj\n\x11\x41\x63\x63\x65leratorConfig\x12\x41\n\x04type\x18\x01 \x01(\x0e\x32\x33.google.cloud.notebooks.v1.Instance.AcceleratorType\x12\x12\n\ncore_count\x18\x02 \x01(\x03\x1a\xb6\x02\n\x04\x44isk\x12\x13\n\x0b\x61uto_delete\x18\x01 \x01(\x08\x12\x0c\n\x04\x62oot\x18\x02 \x01(\x08\x12\x13\n\x0b\x64\x65vice_name\x18\x03 \x01(\t\x12\x14\n\x0c\x64isk_size_gb\x18\x04 \x01(\x03\x12R\n\x11guest_os_features\x18\x05 \x03(\x0b\x32\x37.google.cloud.notebooks.v1.Instance.Disk.GuestOsFeature\x12\r\n\x05index\x18\x06 \x01(\x03\x12\x11\n\tinterface\x18\x07 \x01(\t\x12\x0c\n\x04kind\x18\x08 \x01(\t\x12\x10\n\x08licenses\x18\t \x03(\t\x12\x0c\n\x04mode\x18\n \x01(\t\x12\x0e\n\x06source\x18\x0b \x01(\t\x12\x0c\n\x04type\x18\x0c \x01(\t\x1a\x1e\n\x0eGuestOsFeature\x12\x0c\n\x04type\x18\x01 \x01(\t\x1an\n\x16ShieldedInstanceConfig\x12\x1a\n\x12\x65nable_secure_boot\x18\x01 \x01(\x08\x12\x13\n\x0b\x65nable_vtpm\x18\x02 \x01(\x08\x12#\n\x1b\x65nable_integrity_monitoring\x18\x03 \x01(\x08\x1a\xfc\x03\n\x13UpgradeHistoryEntry\x12\x10\n\x08snapshot\x18\x01 \x01(\t\x12\x10\n\x08vm_image\x18\x02 \x01(\t\x12\x17\n\x0f\x63ontainer_image\x18\x03 \x01(\t\x12\x11\n\tframework\x18\x04 \x01(\t\x12\x0f\n\x07version\x18\x05 \x01(\t\x12L\n\x05state\x18\x06 \x01(\x0e\x32=.google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.State\x12/\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x18\n\x0ctarget_image\x18\x08 \x01(\tB\x02\x18\x01\x12N\n\x06\x61\x63tion\x18\t \x01(\x0e\x32>.google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.Action\x12\x16\n\x0etarget_version\x18\n \x01(\t\"F\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07STARTED\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\";\n\x06\x41\x63tion\x12\x16\n\x12\x41\x43TION_UNSPECIFIED\x10\x00\x12\x0b\n\x07UPGRADE\x10\x01\x12\x0c\n\x08ROLLBACK\x10\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x9d\x02\n\x0f\x41\x63\x63\x65leratorType\x12 \n\x1c\x41\x43\x43\x45LERATOR_TYPE_UNSPECIFIED\x10\x00\x12\x14\n\x10NVIDIA_TESLA_K80\x10\x01\x12\x15\n\x11NVIDIA_TESLA_P100\x10\x02\x12\x15\n\x11NVIDIA_TESLA_V100\x10\x03\x12\x13\n\x0fNVIDIA_TESLA_P4\x10\x04\x12\x13\n\x0fNVIDIA_TESLA_T4\x10\x05\x12\x15\n\x11NVIDIA_TESLA_A100\x10\x0b\x12\x17\n\x13NVIDIA_TESLA_T4_VWS\x10\x08\x12\x19\n\x15NVIDIA_TESLA_P100_VWS\x10\t\x12\x17\n\x13NVIDIA_TESLA_P4_VWS\x10\n\x12\n\n\x06TPU_V2\x10\x06\x12\n\n\x06TPU_V3\x10\x07\"\xc3\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08STARTING\x10\x01\x12\x10\n\x0cPROVISIONING\x10\x02\x12\n\n\x06\x41\x43TIVE\x10\x03\x12\x0c\n\x08STOPPING\x10\x04\x12\x0b\n\x07STOPPED\x10\x05\x12\x0b\n\x07\x44\x45LETED\x10\x06\x12\r\n\tUPGRADING\x10\x07\x12\x10\n\x0cINITIALIZING\x10\x08\x12\x0f\n\x0bREGISTERING\x10\t\x12\x0e\n\nSUSPENDING\x10\n\x12\r\n\tSUSPENDED\x10\x0b\"c\n\x08\x44iskType\x12\x19\n\x15\x44ISK_TYPE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bPD_STANDARD\x10\x01\x12\n\n\x06PD_SSD\x10\x02\x12\x0f\n\x0bPD_BALANCED\x10\x03\x12\x0e\n\nPD_EXTREME\x10\x04\"E\n\x0e\x44iskEncryption\x12\x1f\n\x1b\x44ISK_ENCRYPTION_UNSPECIFIED\x10\x00\x12\x08\n\x04GMEK\x10\x01\x12\x08\n\x04\x43MEK\x10\x02\">\n\x07NicType\x12\x18\n\x14UNSPECIFIED_NIC_TYPE\x10\x00\x12\x0e\n\nVIRTIO_NET\x10\x01\x12\t\n\x05GVNIC\x10\x02:O\xea\x41L\n!notebooks.googleapis.com/Instance\x12\'projects/{project}/instances/{instance}B\r\n\x0b\x65nvironmentB\xc4\x01\n\x1d\x63om.google.cloud.notebooks.v1B\rInstanceProtoP\x01Z;cloud.google.com/go/notebooks/apiv1/notebookspb;notebookspb\xaa\x02\x19Google.Cloud.Notebooks.V1\xca\x02\x19Google\\Cloud\\Notebooks\\V1\xea\x02\x1cGoogle::Cloud::Notebooks::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.notebooks.v1.VmImage", "google/cloud/notebooks/v1/environment.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module Notebooks
      module V1
        ReservationAffinity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ReservationAffinity").msgclass
        ReservationAffinity::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.ReservationAffinity.Type").enummodule
        Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance").msgclass
        Instance::AcceleratorConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.AcceleratorConfig").msgclass
        Instance::Disk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.Disk").msgclass
        Instance::Disk::GuestOsFeature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.Disk.GuestOsFeature").msgclass
        Instance::ShieldedInstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.ShieldedInstanceConfig").msgclass
        Instance::UpgradeHistoryEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry").msgclass
        Instance::UpgradeHistoryEntry::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.State").enummodule
        Instance::UpgradeHistoryEntry::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.UpgradeHistoryEntry.Action").enummodule
        Instance::AcceleratorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.AcceleratorType").enummodule
        Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.State").enummodule
        Instance::DiskType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.DiskType").enummodule
        Instance::DiskEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.DiskEncryption").enummodule
        Instance::NicType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Instance.NicType").enummodule
      end
    end
  end
end
