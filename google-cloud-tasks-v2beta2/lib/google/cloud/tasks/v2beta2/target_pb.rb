# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/tasks/v2beta2/target.proto

require 'google/protobuf'


descriptor_data = "\n\'google/cloud/tasks/v2beta2/target.proto\x12\x1agoogle.cloud.tasks.v2beta2\"\x0c\n\nPullTarget\"+\n\x0bPullMessage\x12\x0f\n\x07payload\x18\x01 \x01(\x0c\x12\x0b\n\x03tag\x18\x02 \x01(\t\"h\n\x13\x41ppEngineHttpTarget\x12Q\n\x1b\x61pp_engine_routing_override\x18\x01 \x01(\x0b\x32,.google.cloud.tasks.v2beta2.AppEngineRouting\"\xc4\x02\n\x14\x41ppEngineHttpRequest\x12;\n\x0bhttp_method\x18\x01 \x01(\x0e\x32&.google.cloud.tasks.v2beta2.HttpMethod\x12H\n\x12\x61pp_engine_routing\x18\x02 \x01(\x0b\x32,.google.cloud.tasks.v2beta2.AppEngineRouting\x12\x14\n\x0crelative_url\x18\x03 \x01(\t\x12N\n\x07headers\x18\x04 \x03(\x0b\x32=.google.cloud.tasks.v2beta2.AppEngineHttpRequest.HeadersEntry\x12\x0f\n\x07payload\x18\x05 \x01(\x0c\x1a.\n\x0cHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"T\n\x10\x41ppEngineRouting\x12\x0f\n\x07service\x18\x01 \x01(\t\x12\x0f\n\x07version\x18\x02 \x01(\t\x12\x10\n\x08instance\x18\x03 \x01(\t\x12\x0c\n\x04host\x18\x04 \x01(\t*[\n\nHttpMethod\x12\x1b\n\x17HTTP_METHOD_UNSPECIFIED\x10\x00\x12\x08\n\x04POST\x10\x01\x12\x07\n\x03GET\x10\x02\x12\x08\n\x04HEAD\x10\x03\x12\x07\n\x03PUT\x10\x04\x12\n\n\x06\x44\x45LETE\x10\x05\x42t\n\x1e\x63om.google.cloud.tasks.v2beta2B\x0bTargetProtoP\x01ZCcloud.google.com/go/cloudtasks/apiv2beta2/cloudtaskspb;cloudtaskspbb\x06proto3"

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
    module Tasks
      module V2beta2
        PullTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.PullTarget").msgclass
        PullMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.PullMessage").msgclass
        AppEngineHttpTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.AppEngineHttpTarget").msgclass
        AppEngineHttpRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.AppEngineHttpRequest").msgclass
        AppEngineRouting = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.AppEngineRouting").msgclass
        HttpMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.HttpMethod").enummodule
      end
    end
  end
end
