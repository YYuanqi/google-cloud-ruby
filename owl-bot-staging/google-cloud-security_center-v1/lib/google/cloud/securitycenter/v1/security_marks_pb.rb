# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/security_marks.proto

require 'google/protobuf'

require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/security_marks.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.SecurityMarks" do
      optional :name, :string, 1
      map :marks, :string, :string, 2
      optional :canonical_name, :string, 3
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        SecurityMarks = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.SecurityMarks").msgclass
      end
    end
  end
end
