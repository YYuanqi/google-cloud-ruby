# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/orchestration/airflow/service/v1/image_versions.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/type/date_pb'


descriptor_data = "\nBgoogle/cloud/orchestration/airflow/service/v1/image_versions.proto\x12-google.cloud.orchestration.airflow.service.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x16google/type/date.proto\"p\n\x18ListImageVersionsRequest\x12\x0e\n\x06parent\x18\x01 \x01(\t\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x1d\n\x15include_past_releases\x18\x04 \x01(\x08\"\x89\x01\n\x19ListImageVersionsResponse\x12S\n\x0eimage_versions\x18\x01 \x03(\x0b\x32;.google.cloud.orchestration.airflow.service.v1.ImageVersion\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xbd\x01\n\x0cImageVersion\x12\x18\n\x10image_version_id\x18\x01 \x01(\t\x12\x12\n\nis_default\x18\x02 \x01(\x08\x12!\n\x19supported_python_versions\x18\x03 \x03(\t\x12\'\n\x0crelease_date\x18\x04 \x01(\x0b\x32\x11.google.type.Date\x12\x19\n\x11\x63reation_disabled\x18\x05 \x01(\x08\x12\x18\n\x10upgrade_disabled\x18\x06 \x01(\x08\x32\xc9\x02\n\rImageVersions\x12\xea\x01\n\x11ListImageVersions\x12G.google.cloud.orchestration.airflow.service.v1.ListImageVersionsRequest\x1aH.google.cloud.orchestration.airflow.service.v1.ListImageVersionsResponse\"B\x82\xd3\xe4\x93\x02\x33\x12\x31/v1/{parent=projects/*/locations/*}/imageVersions\xda\x41\x06parent\x1aK\xca\x41\x17\x63omposer.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x82\x01\n1com.google.cloud.orchestration.airflow.service.v1P\x01ZKcloud.google.com/go/orchestration/airflow/service/apiv1/servicepb;servicepbb\x06proto3"

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
    ["google.type.Date", "google/type/date.proto"],
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
    module Orchestration
      module Airflow
        module Service
          module V1
            ListImageVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.ListImageVersionsRequest").msgclass
            ListImageVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.ListImageVersionsResponse").msgclass
            ImageVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.orchestration.airflow.service.v1.ImageVersion").msgclass
          end
        end
      end
    end
  end
end
