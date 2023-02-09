# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/schema.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/datacatalog/v1/schema.proto", :syntax => :proto3) do
    add_message "google.cloud.datacatalog.v1.Schema" do
      repeated :columns, :message, 2, "google.cloud.datacatalog.v1.ColumnSchema"
    end
    add_message "google.cloud.datacatalog.v1.ColumnSchema" do
      optional :column, :string, 6
      optional :type, :string, 1
      optional :description, :string, 2
      optional :mode, :string, 3
      repeated :subcolumns, :message, 7, "google.cloud.datacatalog.v1.ColumnSchema"
    end
  end
end

module Google
  module Cloud
    module DataCatalog
      module V1
        Schema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.Schema").msgclass
        ColumnSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ColumnSchema").msgclass
      end
    end
  end
end
