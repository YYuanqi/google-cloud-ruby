# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recommendationengine/v1beta1/catalog_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/recommendationengine/v1beta1/catalog_pb'
require 'google/cloud/recommendationengine/v1beta1/import_pb'
require 'google/cloud/recommendationengine/v1beta1/recommendationengine_resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/recommendationengine/v1beta1/catalog_service.proto", :syntax => :proto3) do
    add_message "google.cloud.recommendationengine.v1beta1.CreateCatalogItemRequest" do
      optional :parent, :string, 1
      optional :catalog_item, :message, 2, "google.cloud.recommendationengine.v1beta1.CatalogItem"
    end
    add_message "google.cloud.recommendationengine.v1beta1.GetCatalogItemRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.recommendationengine.v1beta1.ListCatalogItemsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.recommendationengine.v1beta1.ListCatalogItemsResponse" do
      repeated :catalog_items, :message, 1, "google.cloud.recommendationengine.v1beta1.CatalogItem"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.recommendationengine.v1beta1.UpdateCatalogItemRequest" do
      optional :name, :string, 1
      optional :catalog_item, :message, 2, "google.cloud.recommendationengine.v1beta1.CatalogItem"
      optional :update_mask, :message, 3, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.recommendationengine.v1beta1.DeleteCatalogItemRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        CreateCatalogItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.CreateCatalogItemRequest").msgclass
        GetCatalogItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.GetCatalogItemRequest").msgclass
        ListCatalogItemsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ListCatalogItemsRequest").msgclass
        ListCatalogItemsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.ListCatalogItemsResponse").msgclass
        UpdateCatalogItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.UpdateCatalogItemRequest").msgclass
        DeleteCatalogItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.DeleteCatalogItemRequest").msgclass
      end
    end
  end
end
