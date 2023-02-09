# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module CertificateManager
      module V1
        # Request for the `ListCertificateIssuanceConfigs` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location from which the certificate should be
        #     listed, specified in the format `projects/*/locations/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of certificate configs to return per call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last `ListCertificateIssuanceConfigsResponse`.
        #     Indicates that this is a continuation of a prior
        #     `ListCertificateIssuanceConfigs` call, and that the system should return
        #     the next page of data.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filter expression to restrict the Certificates Configs returned.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A list of Certificate Config field names used to specify the order of the
        #     returned results. The default sorting order is ascending. To specify
        #     descending order for a field, add a suffix " desc".
        class ListCertificateIssuanceConfigsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for the `ListCertificateIssuanceConfigs` method.
        # @!attribute [rw] certificate_issuance_configs
        #   @return [::Array<::Google::Cloud::CertificateManager::V1::CertificateIssuanceConfig>]
        #     A list of certificate configs for the parent resource.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there might be more results than those appearing in this response, then
        #     `next_page_token` is included. To get the next set of results, call this
        #     method again using the value of `next_page_token` as `page_token`.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListCertificateIssuanceConfigsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `GetCertificateIssuanceConfig` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the certificate issuance config to describe. Must be in
        #     the format `projects/*/locations/*/certificateIssuanceConfigs/*`.
        class GetCertificateIssuanceConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `CreateCertificateIssuanceConfig` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the certificate issuance config. Must be
        #     in the format `projects/*/locations/*`.
        # @!attribute [rw] certificate_issuance_config_id
        #   @return [::String]
        #     Required. A user-provided name of the certificate config.
        # @!attribute [rw] certificate_issuance_config
        #   @return [::Google::Cloud::CertificateManager::V1::CertificateIssuanceConfig]
        #     Required. A definition of the certificate issuance config to create.
        class CreateCertificateIssuanceConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `DeleteCertificateIssuanceConfig` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the certificate issuance config to delete. Must be in
        #     the format `projects/*/locations/*/certificateIssuanceConfigs/*`.
        class DeleteCertificateIssuanceConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CertificateIssuanceConfig specifies how to issue and manage a certificate.
        # @!attribute [rw] name
        #   @return [::String]
        #     A user-defined name of the certificate issuance config.
        #     CertificateIssuanceConfig names must be unique globally and match pattern
        #     `projects/*/locations/*/certificateIssuanceConfigs/*`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation timestamp of a CertificateIssuanceConfig.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last update timestamp of a CertificateIssuanceConfig.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Set of labels associated with a CertificateIssuanceConfig.
        # @!attribute [rw] description
        #   @return [::String]
        #     One or more paragraphs of text description of a CertificateIssuanceConfig.
        # @!attribute [rw] certificate_authority_config
        #   @return [::Google::Cloud::CertificateManager::V1::CertificateIssuanceConfig::CertificateAuthorityConfig]
        #     Required. The CA that issues the workload certificate. It includes the CA
        #     address, type, authentication to CA service, etc.
        # @!attribute [rw] lifetime
        #   @return [::Google::Protobuf::Duration]
        #     Required. Workload certificate lifetime requested.
        # @!attribute [rw] rotation_window_percentage
        #   @return [::Integer]
        #     Required. Specifies the percentage of elapsed time of the certificate
        #     lifetime to wait before renewing the certificate. Must be a number between
        #     1-99, inclusive.
        # @!attribute [rw] key_algorithm
        #   @return [::Google::Cloud::CertificateManager::V1::CertificateIssuanceConfig::KeyAlgorithm]
        #     Required. The key algorithm to use when generating the private key.
        class CertificateIssuanceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The CA that issues the workload certificate. It includes CA address, type,
          # authentication to CA service, etc.
          # @!attribute [rw] certificate_authority_service_config
          #   @return [::Google::Cloud::CertificateManager::V1::CertificateIssuanceConfig::CertificateAuthorityConfig::CertificateAuthorityServiceConfig]
          #     Defines a CertificateAuthorityServiceConfig.
          class CertificateAuthorityConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Contains information required to contact CA service.
            # @!attribute [rw] ca_pool
            #   @return [::String]
            #     Required. A CA pool resource used to issue a certificate.
            #     The CA pool string has a relative resource path following the form
            #     "projects/\\{project}/locations/\\{location}/caPools/\\{ca_pool}".
            class CertificateAuthorityServiceConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The type of keypair to generate.
          module KeyAlgorithm

            # Unspecified key algorithm.
            KEY_ALGORITHM_UNSPECIFIED = 0

            # Specifies RSA with a 2048-bit modulus.
            RSA_2048 = 1

            # Specifies ECDSA with curve P256.
            ECDSA_P256 = 4
          end
        end
      end
    end
  end
end

