# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/channel/v1/repricing.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/date_pb'
require 'google/type/decimal_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/channel/v1/repricing.proto", :syntax => :proto3) do
    add_message "google.cloud.channel.v1.CustomerRepricingConfig" do
      optional :name, :string, 1
      optional :repricing_config, :message, 2, "google.cloud.channel.v1.RepricingConfig"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.channel.v1.ChannelPartnerRepricingConfig" do
      optional :name, :string, 1
      optional :repricing_config, :message, 2, "google.cloud.channel.v1.RepricingConfig"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.channel.v1.RepricingConfig" do
      optional :effective_invoice_month, :message, 1, "google.type.Date"
      optional :adjustment, :message, 2, "google.cloud.channel.v1.RepricingAdjustment"
      optional :rebilling_basis, :enum, 3, "google.cloud.channel.v1.RebillingBasis"
      oneof :granularity do
        optional :entitlement_granularity, :message, 4, "google.cloud.channel.v1.RepricingConfig.EntitlementGranularity"
        optional :channel_partner_granularity, :message, 5, "google.cloud.channel.v1.RepricingConfig.ChannelPartnerGranularity"
      end
    end
    add_message "google.cloud.channel.v1.RepricingConfig.EntitlementGranularity" do
      optional :entitlement, :string, 1
    end
    add_message "google.cloud.channel.v1.RepricingConfig.ChannelPartnerGranularity" do
    end
    add_message "google.cloud.channel.v1.RepricingAdjustment" do
      oneof :adjustment do
        optional :percentage_adjustment, :message, 2, "google.cloud.channel.v1.PercentageAdjustment"
      end
    end
    add_message "google.cloud.channel.v1.PercentageAdjustment" do
      optional :percentage, :message, 2, "google.type.Decimal"
    end
    add_enum "google.cloud.channel.v1.RebillingBasis" do
      value :REBILLING_BASIS_UNSPECIFIED, 0
      value :COST_AT_LIST, 1
      value :DIRECT_CUSTOMER_COST, 2
    end
  end
end

module Google
  module Cloud
    module Channel
      module V1
        CustomerRepricingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.CustomerRepricingConfig").msgclass
        ChannelPartnerRepricingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.ChannelPartnerRepricingConfig").msgclass
        RepricingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingConfig").msgclass
        RepricingConfig::EntitlementGranularity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingConfig.EntitlementGranularity").msgclass
        RepricingConfig::ChannelPartnerGranularity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingConfig.ChannelPartnerGranularity").msgclass
        RepricingAdjustment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RepricingAdjustment").msgclass
        PercentageAdjustment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.PercentageAdjustment").msgclass
        RebillingBasis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.RebillingBasis").enummodule
      end
    end
  end
end
