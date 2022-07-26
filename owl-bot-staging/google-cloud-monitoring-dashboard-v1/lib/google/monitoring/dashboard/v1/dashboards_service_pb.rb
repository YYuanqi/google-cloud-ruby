# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/dashboards_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/dashboard/v1/dashboard_pb'
require 'google/protobuf/empty_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/dashboards_service.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.CreateDashboardRequest" do
      optional :parent, :string, 1
      optional :dashboard, :message, 2, "google.monitoring.dashboard.v1.Dashboard"
      optional :validate_only, :bool, 3
    end
    add_message "google.monitoring.dashboard.v1.ListDashboardsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.monitoring.dashboard.v1.ListDashboardsResponse" do
      repeated :dashboards, :message, 1, "google.monitoring.dashboard.v1.Dashboard"
      optional :next_page_token, :string, 2
    end
    add_message "google.monitoring.dashboard.v1.GetDashboardRequest" do
      optional :name, :string, 1
    end
    add_message "google.monitoring.dashboard.v1.DeleteDashboardRequest" do
      optional :name, :string, 1
    end
    add_message "google.monitoring.dashboard.v1.UpdateDashboardRequest" do
      optional :dashboard, :message, 1, "google.monitoring.dashboard.v1.Dashboard"
      optional :validate_only, :bool, 3
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          CreateDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.CreateDashboardRequest").msgclass
          ListDashboardsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ListDashboardsRequest").msgclass
          ListDashboardsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ListDashboardsResponse").msgclass
          GetDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.GetDashboardRequest").msgclass
          DeleteDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.DeleteDashboardRequest").msgclass
          UpdateDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.UpdateDashboardRequest").msgclass
        end
      end
    end
  end
end
