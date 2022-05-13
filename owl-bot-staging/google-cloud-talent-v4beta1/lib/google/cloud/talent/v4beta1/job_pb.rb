# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/postal_address_pb'
require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4beta1/job.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4beta1.Job" do
      optional :name, :string, 1
      optional :company, :string, 2
      optional :requisition_id, :string, 3
      optional :title, :string, 4
      optional :description, :string, 5
      repeated :addresses, :string, 6
      optional :application_info, :message, 7, "google.cloud.talent.v4beta1.Job.ApplicationInfo"
      repeated :job_benefits, :enum, 8, "google.cloud.talent.v4beta1.JobBenefit"
      optional :compensation_info, :message, 9, "google.cloud.talent.v4beta1.CompensationInfo"
      map :custom_attributes, :string, :message, 10, "google.cloud.talent.v4beta1.CustomAttribute"
      repeated :degree_types, :enum, 11, "google.cloud.talent.v4beta1.DegreeType"
      optional :department, :string, 12
      repeated :employment_types, :enum, 13, "google.cloud.talent.v4beta1.EmploymentType"
      optional :incentives, :string, 14
      optional :language_code, :string, 15
      optional :job_level, :enum, 16, "google.cloud.talent.v4beta1.JobLevel"
      optional :promotion_value, :int32, 17
      optional :qualifications, :string, 18
      optional :responsibilities, :string, 19
      optional :posting_region, :enum, 20, "google.cloud.talent.v4beta1.PostingRegion"
      optional :visibility, :enum, 21, "google.cloud.talent.v4beta1.Visibility"
      optional :job_start_time, :message, 22, "google.protobuf.Timestamp"
      optional :job_end_time, :message, 23, "google.protobuf.Timestamp"
      optional :posting_publish_time, :message, 24, "google.protobuf.Timestamp"
      optional :posting_expire_time, :message, 25, "google.protobuf.Timestamp"
      optional :posting_create_time, :message, 26, "google.protobuf.Timestamp"
      optional :posting_update_time, :message, 27, "google.protobuf.Timestamp"
      optional :company_display_name, :string, 28
      optional :derived_info, :message, 29, "google.cloud.talent.v4beta1.Job.DerivedInfo"
      optional :processing_options, :message, 30, "google.cloud.talent.v4beta1.Job.ProcessingOptions"
    end
    add_message "google.cloud.talent.v4beta1.Job.ApplicationInfo" do
      repeated :emails, :string, 1
      optional :instruction, :string, 2
      repeated :uris, :string, 3
    end
    add_message "google.cloud.talent.v4beta1.Job.DerivedInfo" do
      repeated :locations, :message, 1, "google.cloud.talent.v4beta1.Location"
      repeated :job_categories, :enum, 3, "google.cloud.talent.v4beta1.JobCategory"
    end
    add_message "google.cloud.talent.v4beta1.Job.ProcessingOptions" do
      optional :disable_street_address_resolution, :bool, 1
      optional :html_sanitization, :enum, 2, "google.cloud.talent.v4beta1.HtmlSanitization"
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        Job = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Job").msgclass
        Job::ApplicationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Job.ApplicationInfo").msgclass
        Job::DerivedInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Job.DerivedInfo").msgclass
        Job::ProcessingOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Job.ProcessingOptions").msgclass
      end
    end
  end
end
