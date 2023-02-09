# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module WebSecurityScanner
      module V1
        # A ScanConfig resource contains the configurations to launch a scan.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the ScanConfig. The name follows the format of
        #     'projects/\\{projectId}/scanConfigs/\\{scanConfigId}'. The ScanConfig IDs are
        #     generated by the system.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The user provided display name of the ScanConfig.
        # @!attribute [rw] max_qps
        #   @return [::Integer]
        #     The maximum QPS during scanning. A valid value ranges from 5 to 20
        #     inclusively. If the field is unspecified or its value is set 0, server will
        #     default to 15. Other values outside of [5, 20] range will be rejected with
        #     INVALID_ARGUMENT error.
        # @!attribute [rw] starting_urls
        #   @return [::Array<::String>]
        #     Required. The starting URLs from which the scanner finds site pages.
        # @!attribute [rw] authentication
        #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::Authentication]
        #     The authentication configuration. If specified, service will use the
        #     authentication configuration during scanning.
        # @!attribute [rw] user_agent
        #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::UserAgent]
        #     The user agent used during scanning.
        # @!attribute [rw] blacklist_patterns
        #   @return [::Array<::String>]
        #     The excluded URL patterns as described in
        #     https://cloud.google.com/security-command-center/docs/how-to-use-web-security-scanner#excluding_urls
        # @!attribute [rw] schedule
        #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::Schedule]
        #     The schedule of the ScanConfig.
        # @!attribute [rw] export_to_security_command_center
        #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::ExportToSecurityCommandCenter]
        #     Controls export of scan configurations and results to Security
        #     Command Center.
        # @!attribute [rw] risk_level
        #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::RiskLevel]
        #     The risk level selected for the scan
        # @!attribute [rw] managed_scan
        #   @return [::Boolean]
        #     Whether the scan config is managed by Web Security Scanner, output
        #     only.
        # @!attribute [rw] static_ip_scan
        #   @return [::Boolean]
        #     Whether the scan configuration has enabled static IP address scan feature.
        #     If enabled, the scanner will access applications from static IP addresses.
        # @!attribute [rw] ignore_http_status_errors
        #   @return [::Boolean]
        #     Whether to keep scanning even if most requests return HTTP error codes.
        class ScanConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Scan authentication configuration.
          # @!attribute [rw] google_account
          #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::Authentication::GoogleAccount]
          #     Authentication using a Google account.
          # @!attribute [rw] custom_account
          #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::Authentication::CustomAccount]
          #     Authentication using a custom account.
          # @!attribute [rw] iap_credential
          #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::Authentication::IapCredential]
          #     Authentication using Identity-Aware-Proxy (IAP).
          class Authentication
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Describes authentication configuration that uses a Google account.
            # @!attribute [rw] username
            #   @return [::String]
            #     Required. The user name of the Google account.
            # @!attribute [rw] password
            #   @return [::String]
            #     Required. Input only. The password of the Google account. The credential is stored encrypted
            #     and not returned in any response nor included in audit logs.
            class GoogleAccount
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Describes authentication configuration that uses a custom account.
            # @!attribute [rw] username
            #   @return [::String]
            #     Required. The user name of the custom account.
            # @!attribute [rw] password
            #   @return [::String]
            #     Required. Input only. The password of the custom account. The credential is stored encrypted
            #     and not returned in any response nor included in audit logs.
            # @!attribute [rw] login_url
            #   @return [::String]
            #     Required. The login form URL of the website.
            class CustomAccount
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Describes authentication configuration for Identity-Aware-Proxy (IAP).
            # @!attribute [rw] iap_test_service_account_info
            #   @return [::Google::Cloud::WebSecurityScanner::V1::ScanConfig::Authentication::IapCredential::IapTestServiceAccountInfo]
            #     Authentication configuration when Web-Security-Scanner service
            #     account is added in Identity-Aware-Proxy (IAP) access policies.
            class IapCredential
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Describes authentication configuration when Web-Security-Scanner
              # service account is added in Identity-Aware-Proxy (IAP) access policies.
              # @!attribute [rw] target_audience_client_id
              #   @return [::String]
              #     Required. Describes OAuth2 client id of resources protected by
              #     Identity-Aware-Proxy (IAP).
              class IapTestServiceAccountInfo
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end

          # Scan schedule configuration.
          # @!attribute [rw] schedule_time
          #   @return [::Google::Protobuf::Timestamp]
          #     A timestamp indicates when the next run will be scheduled. The value is
          #     refreshed by the server after each run. If unspecified, it will default
          #     to current server time, which means the scan will be scheduled to start
          #     immediately.
          # @!attribute [rw] interval_duration_days
          #   @return [::Integer]
          #     Required. The duration of time between executions in days.
          class Schedule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Type of user agents used for scanning.
          module UserAgent

            # The user agent is unknown. Service will default to CHROME_LINUX.
            USER_AGENT_UNSPECIFIED = 0

            # Chrome on Linux. This is the service default if unspecified.
            CHROME_LINUX = 1

            # Chrome on Android.
            CHROME_ANDROID = 2

            # Safari on IPhone.
            SAFARI_IPHONE = 3
          end

          # Scan risk levels supported by Web Security Scanner. LOW impact
          # scanning will minimize requests with the potential to modify data. To
          # achieve the maximum scan coverage, NORMAL risk level is recommended.
          module RiskLevel

            # Use default, which is NORMAL.
            RISK_LEVEL_UNSPECIFIED = 0

            # Normal scanning (Recommended)
            NORMAL = 1

            # Lower impact scanning
            LOW = 2
          end

          # Controls export of scan configurations and results to Security
          # Command Center.
          module ExportToSecurityCommandCenter

            # Use default, which is ENABLED.
            EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED = 0

            # Export results of this scan to Security Command Center.
            ENABLED = 1

            # Do not export results of this scan to Security Command Center.
            DISABLED = 2
          end
        end
      end
    end
  end
end

