# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/indicator.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/indicator.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.Indicator" do
      repeated :ip_addresses, :string, 1
      repeated :domains, :string, 2
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        Indicator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Indicator").msgclass
      end
    end
  end
end
