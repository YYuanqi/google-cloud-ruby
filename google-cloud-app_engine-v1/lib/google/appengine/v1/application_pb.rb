# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/application.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\n%google/appengine/v1/application.proto\x12\x13google.appengine.v1\x1a\x1egoogle/protobuf/duration.proto\"\x89\x08\n\x0b\x41pplication\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\n\n\x02id\x18\x02 \x01(\t\x12<\n\x0e\x64ispatch_rules\x18\x03 \x03(\x0b\x32$.google.appengine.v1.UrlDispatchRule\x12\x13\n\x0b\x61uth_domain\x18\x06 \x01(\t\x12\x13\n\x0blocation_id\x18\x07 \x01(\t\x12\x13\n\x0b\x63ode_bucket\x18\x08 \x01(\t\x12<\n\x19\x64\x65\x66\x61ult_cookie_expiration\x18\t \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x46\n\x0eserving_status\x18\n \x01(\x0e\x32..google.appengine.v1.Application.ServingStatus\x12\x18\n\x10\x64\x65\x66\x61ult_hostname\x18\x0b \x01(\t\x12\x16\n\x0e\x64\x65\x66\x61ult_bucket\x18\x0c \x01(\t\x12\x17\n\x0fservice_account\x18\r \x01(\t\x12@\n\x03iap\x18\x0e \x01(\x0b\x32\x33.google.appengine.v1.Application.IdentityAwareProxy\x12\x12\n\ngcr_domain\x18\x10 \x01(\t\x12\x44\n\rdatabase_type\x18\x11 \x01(\x0e\x32-.google.appengine.v1.Application.DatabaseType\x12J\n\x10\x66\x65\x61ture_settings\x18\x12 \x01(\x0b\x32\x30.google.appengine.v1.Application.FeatureSettings\x1a\x82\x01\n\x12IdentityAwareProxy\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08\x12\x18\n\x10oauth2_client_id\x18\x02 \x01(\t\x12\x1c\n\x14oauth2_client_secret\x18\x03 \x01(\t\x12#\n\x1boauth2_client_secret_sha256\x18\x04 \x01(\t\x1aR\n\x0f\x46\x65\x61tureSettings\x12\x1b\n\x13split_health_checks\x18\x01 \x01(\x08\x12\"\n\x1ause_container_optimized_os\x18\x02 \x01(\x08\"U\n\rServingStatus\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07SERVING\x10\x01\x12\x11\n\rUSER_DISABLED\x10\x02\x12\x13\n\x0fSYSTEM_DISABLED\x10\x03\"z\n\x0c\x44\x61tabaseType\x12\x1d\n\x19\x44\x41TABASE_TYPE_UNSPECIFIED\x10\x00\x12\x13\n\x0f\x43LOUD_DATASTORE\x10\x01\x12\x13\n\x0f\x43LOUD_FIRESTORE\x10\x02\x12!\n\x1d\x43LOUD_DATASTORE_COMPATIBILITY\x10\x03\"@\n\x0fUrlDispatchRule\x12\x0e\n\x06\x64omain\x18\x01 \x01(\t\x12\x0c\n\x04path\x18\x02 \x01(\t\x12\x0f\n\x07service\x18\x03 \x01(\tB\xc1\x01\n\x17\x63om.google.appengine.v1B\x10\x41pplicationProtoP\x01Z;cloud.google.com/go/appengine/apiv1/appenginepb;appenginepb\xaa\x02\x19Google.Cloud.AppEngine.V1\xca\x02\x19Google\\Cloud\\AppEngine\\V1\xea\x02\x1cGoogle::Cloud::AppEngine::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module AppEngine
      module V1
        Application = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application").msgclass
        Application::IdentityAwareProxy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.IdentityAwareProxy").msgclass
        Application::FeatureSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.FeatureSettings").msgclass
        Application::ServingStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.ServingStatus").enummodule
        Application::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.Application.DatabaseType").enummodule
        UrlDispatchRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.UrlDispatchRule").msgclass
      end
    end
  end
end
