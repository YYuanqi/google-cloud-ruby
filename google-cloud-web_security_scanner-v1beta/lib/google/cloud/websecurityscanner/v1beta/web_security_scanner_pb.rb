# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/websecurityscanner/v1beta/web_security_scanner.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/websecurityscanner/v1beta/crawled_url_pb'
require 'google/cloud/websecurityscanner/v1beta/finding_pb'
require 'google/cloud/websecurityscanner/v1beta/finding_type_stats_pb'
require 'google/cloud/websecurityscanner/v1beta/scan_config_pb'
require 'google/cloud/websecurityscanner/v1beta/scan_run_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\nAgoogle/cloud/websecurityscanner/v1beta/web_security_scanner.proto\x12&google.cloud.websecurityscanner.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x38google/cloud/websecurityscanner/v1beta/crawled_url.proto\x1a\x34google/cloud/websecurityscanner/v1beta/finding.proto\x1a?google/cloud/websecurityscanner/v1beta/finding_type_stats.proto\x1a\x38google/cloud/websecurityscanner/v1beta/scan_config.proto\x1a\x35google/cloud/websecurityscanner/v1beta/scan_run.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xac\x01\n\x17\x43reateScanConfigRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12L\n\x0bscan_config\x18\x02 \x01(\x0b\x32\x32.google.cloud.websecurityscanner.v1beta.ScanConfigB\x03\xe0\x41\x02\"]\n\x17\x44\x65leteScanConfigRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,websecurityscanner.googleapis.com/ScanConfig\"Z\n\x14GetScanConfigRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,websecurityscanner.googleapis.com/ScanConfig\"\x84\x01\n\x16ListScanConfigsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x12\n\npage_token\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\"\x9d\x01\n\x17UpdateScanConfigRequest\x12L\n\x0bscan_config\x18\x02 \x01(\x0b\x32\x32.google.cloud.websecurityscanner.v1beta.ScanConfigB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"|\n\x17ListScanConfigsResponse\x12H\n\x0cscan_configs\x18\x01 \x03(\x0b\x32\x32.google.cloud.websecurityscanner.v1beta.ScanConfig\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Y\n\x13StartScanRunRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,websecurityscanner.googleapis.com/ScanConfig\"T\n\x11GetScanRunRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)websecurityscanner.googleapis.com/ScanRun\"\x82\x01\n\x13ListScanRunsRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,websecurityscanner.googleapis.com/ScanConfig\x12\x12\n\npage_token\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\"s\n\x14ListScanRunsResponse\x12\x42\n\tscan_runs\x18\x01 \x03(\x0b\x32/.google.cloud.websecurityscanner.v1beta.ScanRun\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"U\n\x12StopScanRunRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)websecurityscanner.googleapis.com/ScanRun\"\x82\x01\n\x16ListCrawledUrlsRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)websecurityscanner.googleapis.com/ScanRun\x12\x12\n\npage_token\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\"|\n\x17ListCrawledUrlsResponse\x12H\n\x0c\x63rawled_urls\x18\x01 \x03(\x0b\x32\x32.google.cloud.websecurityscanner.v1beta.CrawledUrl\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"T\n\x11GetFindingRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)websecurityscanner.googleapis.com/Finding\"\x94\x01\n\x13ListFindingsRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)websecurityscanner.googleapis.com/ScanRun\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\"r\n\x14ListFindingsResponse\x12\x41\n\x08\x66indings\x18\x01 \x03(\x0b\x32/.google.cloud.websecurityscanner.v1beta.Finding\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"`\n\x1bListFindingTypeStatsRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)websecurityscanner.googleapis.com/ScanRun\"t\n\x1cListFindingTypeStatsResponse\x12T\n\x12\x66inding_type_stats\x18\x01 \x03(\x0b\x32\x38.google.cloud.websecurityscanner.v1beta.FindingTypeStats2\x8e\x16\n\x12WebSecurityScanner\x12\xda\x01\n\x10\x43reateScanConfig\x12?.google.cloud.websecurityscanner.v1beta.CreateScanConfigRequest\x1a\x32.google.cloud.websecurityscanner.v1beta.ScanConfig\"Q\x82\xd3\xe4\x93\x02\x36\"\'/v1beta/{parent=projects/*}/scanConfigs:\x0bscan_config\xda\x41\x12parent,scan_config\x12\xa3\x01\n\x10\x44\x65leteScanConfig\x12?.google.cloud.websecurityscanner.v1beta.DeleteScanConfigRequest\x1a\x16.google.protobuf.Empty\"6\x82\xd3\xe4\x93\x02)*\'/v1beta/{name=projects/*/scanConfigs/*}\xda\x41\x04name\x12\xb9\x01\n\rGetScanConfig\x12<.google.cloud.websecurityscanner.v1beta.GetScanConfigRequest\x1a\x32.google.cloud.websecurityscanner.v1beta.ScanConfig\"6\x82\xd3\xe4\x93\x02)\x12\'/v1beta/{name=projects/*/scanConfigs/*}\xda\x41\x04name\x12\xcc\x01\n\x0fListScanConfigs\x12>.google.cloud.websecurityscanner.v1beta.ListScanConfigsRequest\x1a?.google.cloud.websecurityscanner.v1beta.ListScanConfigsResponse\"8\x82\xd3\xe4\x93\x02)\x12\'/v1beta/{parent=projects/*}/scanConfigs\xda\x41\x06parent\x12\xeb\x01\n\x10UpdateScanConfig\x12?.google.cloud.websecurityscanner.v1beta.UpdateScanConfigRequest\x1a\x32.google.cloud.websecurityscanner.v1beta.ScanConfig\"b\x82\xd3\xe4\x93\x02\x42\x32\x33/v1beta/{scan_config.name=projects/*/scanConfigs/*}:\x0bscan_config\xda\x41\x17scan_config,update_mask\x12\xbd\x01\n\x0cStartScanRun\x12;.google.cloud.websecurityscanner.v1beta.StartScanRunRequest\x1a/.google.cloud.websecurityscanner.v1beta.ScanRun\"?\x82\xd3\xe4\x93\x02\x32\"-/v1beta/{name=projects/*/scanConfigs/*}:start:\x01*\xda\x41\x04name\x12\xbb\x01\n\nGetScanRun\x12\x39.google.cloud.websecurityscanner.v1beta.GetScanRunRequest\x1a/.google.cloud.websecurityscanner.v1beta.ScanRun\"A\x82\xd3\xe4\x93\x02\x34\x12\x32/v1beta/{name=projects/*/scanConfigs/*/scanRuns/*}\xda\x41\x04name\x12\xce\x01\n\x0cListScanRuns\x12;.google.cloud.websecurityscanner.v1beta.ListScanRunsRequest\x1a<.google.cloud.websecurityscanner.v1beta.ListScanRunsResponse\"C\x82\xd3\xe4\x93\x02\x34\x12\x32/v1beta/{parent=projects/*/scanConfigs/*}/scanRuns\xda\x41\x06parent\x12\xc5\x01\n\x0bStopScanRun\x12:.google.cloud.websecurityscanner.v1beta.StopScanRunRequest\x1a/.google.cloud.websecurityscanner.v1beta.ScanRun\"I\x82\xd3\xe4\x93\x02<\"7/v1beta/{name=projects/*/scanConfigs/*/scanRuns/*}:stop:\x01*\xda\x41\x04name\x12\xe5\x01\n\x0fListCrawledUrls\x12>.google.cloud.websecurityscanner.v1beta.ListCrawledUrlsRequest\x1a?.google.cloud.websecurityscanner.v1beta.ListCrawledUrlsResponse\"Q\x82\xd3\xe4\x93\x02\x42\x12@/v1beta/{parent=projects/*/scanConfigs/*/scanRuns/*}/crawledUrls\xda\x41\x06parent\x12\xc6\x01\n\nGetFinding\x12\x39.google.cloud.websecurityscanner.v1beta.GetFindingRequest\x1a/.google.cloud.websecurityscanner.v1beta.Finding\"L\x82\xd3\xe4\x93\x02?\x12=/v1beta/{name=projects/*/scanConfigs/*/scanRuns/*/findings/*}\xda\x41\x04name\x12\xe0\x01\n\x0cListFindings\x12;.google.cloud.websecurityscanner.v1beta.ListFindingsRequest\x1a<.google.cloud.websecurityscanner.v1beta.ListFindingsResponse\"U\x82\xd3\xe4\x93\x02?\x12=/v1beta/{parent=projects/*/scanConfigs/*/scanRuns/*}/findings\xda\x41\rparent,filter\x12\xf9\x01\n\x14ListFindingTypeStats\x12\x43.google.cloud.websecurityscanner.v1beta.ListFindingTypeStatsRequest\x1a\x44.google.cloud.websecurityscanner.v1beta.ListFindingTypeStatsResponse\"V\x82\xd3\xe4\x93\x02G\x12\x45/v1beta/{parent=projects/*/scanConfigs/*/scanRuns/*}/findingTypeStats\xda\x41\x06parent\x1aU\xca\x41!websecurityscanner.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa1\x02\n*com.google.cloud.websecurityscanner.v1betaB\x17WebSecurityScannerProtoP\x01ZZcloud.google.com/go/websecurityscanner/apiv1beta/websecurityscannerpb;websecurityscannerpb\xaa\x02&Google.Cloud.WebSecurityScanner.V1Beta\xca\x02&Google\\Cloud\\WebSecurityScanner\\V1beta\xea\x02)Google::Cloud::WebSecurityScanner::V1betab\x06proto3"

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
    ["google.cloud.websecurityscanner.v1beta.ScanConfig", "google/cloud/websecurityscanner/v1beta/scan_config.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.websecurityscanner.v1beta.ScanRun", "google/cloud/websecurityscanner/v1beta/scan_run.proto"],
    ["google.cloud.websecurityscanner.v1beta.CrawledUrl", "google/cloud/websecurityscanner/v1beta/crawled_url.proto"],
    ["google.cloud.websecurityscanner.v1beta.Finding", "google/cloud/websecurityscanner/v1beta/finding.proto"],
    ["google.cloud.websecurityscanner.v1beta.FindingTypeStats", "google/cloud/websecurityscanner/v1beta/finding_type_stats.proto"],
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
    module WebSecurityScanner
      module V1beta
        CreateScanConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.CreateScanConfigRequest").msgclass
        DeleteScanConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.DeleteScanConfigRequest").msgclass
        GetScanConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.GetScanConfigRequest").msgclass
        ListScanConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListScanConfigsRequest").msgclass
        UpdateScanConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.UpdateScanConfigRequest").msgclass
        ListScanConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListScanConfigsResponse").msgclass
        StartScanRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.StartScanRunRequest").msgclass
        GetScanRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.GetScanRunRequest").msgclass
        ListScanRunsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListScanRunsRequest").msgclass
        ListScanRunsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListScanRunsResponse").msgclass
        StopScanRunRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.StopScanRunRequest").msgclass
        ListCrawledUrlsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListCrawledUrlsRequest").msgclass
        ListCrawledUrlsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListCrawledUrlsResponse").msgclass
        GetFindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.GetFindingRequest").msgclass
        ListFindingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListFindingsRequest").msgclass
        ListFindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListFindingsResponse").msgclass
        ListFindingTypeStatsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListFindingTypeStatsRequest").msgclass
        ListFindingTypeStatsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1beta.ListFindingTypeStatsResponse").msgclass
      end
    end
  end
end
