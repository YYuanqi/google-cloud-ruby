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
    module Iot
      module V1
        # The device resource.
        # @!attribute [rw] id
        #   @return [::String]
        #     The user-defined device identifier. The device ID must be unique
        #     within a device registry.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource path name. For example,
        #     `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or
        #     `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`.
        #     When `name` is populated as a response from the service, it always ends
        #     in the device numeric ID.
        # @!attribute [rw] num_id
        #   @return [::Integer]
        #     [Output only] A server-defined unique numeric ID for the device. This is a
        #     more compact way to identify devices, and it is globally unique.
        # @!attribute [rw] credentials
        #   @return [::Array<::Google::Cloud::Iot::V1::DeviceCredential>]
        #     The credentials used to authenticate this device. To allow credential
        #     rotation without interruption, multiple device credentials can be bound to
        #     this device. No more than 3 credentials can be bound to a single device at
        #     a time. When new credentials are added to a device, they are verified
        #     against the registry credentials. For details, see the description of the
        #     `DeviceRegistry.credentials` field.
        # @!attribute [rw] last_heartbeat_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The last time an MQTT `PINGREQ` was received. This field
        #     applies only to devices connecting through MQTT. MQTT clients usually only
        #     send `PINGREQ` messages if the connection is idle, and no other messages
        #     have been sent. Timestamps are periodically collected and written to
        #     storage; they may be stale by a few minutes.
        # @!attribute [rw] last_event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The last time a telemetry event was received. Timestamps are
        #     periodically collected and written to storage; they may be stale by a few
        #     minutes.
        # @!attribute [rw] last_state_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The last time a state event was received. Timestamps are
        #     periodically collected and written to storage; they may be stale by a few
        #     minutes.
        # @!attribute [rw] last_config_ack_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The last time a cloud-to-device config version acknowledgment
        #     was received from the device. This field is only for configurations
        #     sent through MQTT.
        # @!attribute [rw] last_config_send_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The last time a cloud-to-device config version was sent to
        #     the device.
        # @!attribute [rw] blocked
        #   @return [::Boolean]
        #     If a device is blocked, connections or requests from this device will fail.
        #     Can be used to temporarily prevent the device from connecting if, for
        #     example, the sensor is generating bad data and needs maintenance.
        # @!attribute [rw] last_error_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The time the most recent error occurred, such as a failure to
        #     publish to Cloud Pub/Sub. This field is the timestamp of
        #     'last_error_status'.
        # @!attribute [rw] last_error_status
        #   @return [::Google::Rpc::Status]
        #     [Output only] The error message of the most recent error, such as a failure
        #     to publish to Cloud Pub/Sub. 'last_error_time' is the timestamp of this
        #     field. If no errors have occurred, this field has an empty message
        #     and the status code 0 == OK. Otherwise, this field is expected to have a
        #     status code other than OK.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::Iot::V1::DeviceConfig]
        #     The most recent device configuration, which is eventually sent from
        #     Cloud IoT Core to the device. If not present on creation, the
        #     configuration will be initialized with an empty payload and version value
        #     of `1`. To update this field after creation, use the
        #     `DeviceManager.ModifyCloudToDeviceConfig` method.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Iot::V1::DeviceState]
        #     [Output only] The state most recently received from the device. If no state
        #     has been reported, this field is not present.
        # @!attribute [rw] log_level
        #   @return [::Google::Cloud::Iot::V1::LogLevel]
        #     **Beta Feature**
        #
        #     The logging verbosity for device activity. If unspecified,
        #     DeviceRegistry.log_level will be used.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The metadata key-value pairs assigned to the device. This metadata is not
        #     interpreted or indexed by Cloud IoT Core. It can be used to add contextual
        #     information for the device.
        #
        #     Keys must conform to the regular expression [a-zA-Z][a-zA-Z0-9-_.+~%]+ and
        #     be less than 128 bytes in length.
        #
        #     Values are free-form strings. Each value must be less than or equal to 32
        #     KB in size.
        #
        #     The total size of all keys and values must be less than 256 KB, and the
        #     maximum number of key-value pairs is 500.
        # @!attribute [rw] gateway_config
        #   @return [::Google::Cloud::Iot::V1::GatewayConfig]
        #     Gateway-related configuration and state.
        class Device
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Gateway-related configuration and state.
        # @!attribute [rw] gateway_type
        #   @return [::Google::Cloud::Iot::V1::GatewayType]
        #     Indicates whether the device is a gateway.
        # @!attribute [rw] gateway_auth_method
        #   @return [::Google::Cloud::Iot::V1::GatewayAuthMethod]
        #     Indicates how to authorize and/or authenticate devices to access the
        #     gateway.
        # @!attribute [rw] last_accessed_gateway_id
        #   @return [::String]
        #     [Output only] The ID of the gateway the device accessed most recently.
        # @!attribute [rw] last_accessed_gateway_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The most recent time at which the device accessed the gateway
        #     specified in `last_accessed_gateway`.
        class GatewayConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A container for a group of devices.
        # @!attribute [rw] id
        #   @return [::String]
        #     The identifier of this device registry. For example, `myRegistry`.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource path name. For example,
        #     `projects/example-project/locations/us-central1/registries/my-registry`.
        # @!attribute [rw] event_notification_configs
        #   @return [::Array<::Google::Cloud::Iot::V1::EventNotificationConfig>]
        #     The configuration for notification of telemetry events received from the
        #     device. All telemetry events that were successfully published by the
        #     device and acknowledged by Cloud IoT Core are guaranteed to be
        #     delivered to Cloud Pub/Sub. If multiple configurations match a message,
        #     only the first matching configuration is used. If you try to publish a
        #     device telemetry event using MQTT without specifying a Cloud Pub/Sub topic
        #     for the device's registry, the connection closes automatically. If you try
        #     to do so using an HTTP connection, an error is returned. Up to 10
        #     configurations may be provided.
        # @!attribute [rw] state_notification_config
        #   @return [::Google::Cloud::Iot::V1::StateNotificationConfig]
        #     The configuration for notification of new states received from the device.
        #     State updates are guaranteed to be stored in the state history, but
        #     notifications to Cloud Pub/Sub are not guaranteed. For example, if
        #     permissions are misconfigured or the specified topic doesn't exist, no
        #     notification will be published but the state will still be stored in Cloud
        #     IoT Core.
        # @!attribute [rw] mqtt_config
        #   @return [::Google::Cloud::Iot::V1::MqttConfig]
        #     The MQTT configuration for this device registry.
        # @!attribute [rw] http_config
        #   @return [::Google::Cloud::Iot::V1::HttpConfig]
        #     The DeviceService (HTTP) configuration for this device registry.
        # @!attribute [rw] log_level
        #   @return [::Google::Cloud::Iot::V1::LogLevel]
        #     **Beta Feature**
        #
        #     The default logging verbosity for activity from devices in this registry.
        #     The verbosity level can be overridden by Device.log_level.
        # @!attribute [rw] credentials
        #   @return [::Array<::Google::Cloud::Iot::V1::RegistryCredential>]
        #     The credentials used to verify the device credentials. No more than 10
        #     credentials can be bound to a single registry at a time. The verification
        #     process occurs at the time of device creation or update. If this field is
        #     empty, no verification is performed. Otherwise, the credentials of a newly
        #     created device or added credentials of an updated device should be signed
        #     with one of these registry credentials.
        #
        #     Note, however, that existing devices will never be affected by
        #     modifications to this list of credentials: after a device has been
        #     successfully created in a registry, it should be able to connect even if
        #     its registry credentials are revoked, deleted, or modified.
        class DeviceRegistry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration of MQTT for a device registry.
        # @!attribute [rw] mqtt_enabled_state
        #   @return [::Google::Cloud::Iot::V1::MqttState]
        #     If enabled, allows connections using the MQTT protocol. Otherwise, MQTT
        #     connections to this registry will fail.
        class MqttConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration of the HTTP bridge for a device registry.
        # @!attribute [rw] http_enabled_state
        #   @return [::Google::Cloud::Iot::V1::HttpState]
        #     If enabled, allows devices to use DeviceService via the HTTP protocol.
        #     Otherwise, any requests to DeviceService will fail for this registry.
        class HttpConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration for forwarding telemetry events.
        # @!attribute [rw] subfolder_matches
        #   @return [::String]
        #     If the subfolder name matches this string exactly, this configuration will
        #     be used. The string must not include the leading '/' character. If empty,
        #     all strings are matched. This field is used only for telemetry events;
        #     subfolders are not supported for state changes.
        # @!attribute [rw] pubsub_topic_name
        #   @return [::String]
        #     A Cloud Pub/Sub topic name. For example,
        #     `projects/myProject/topics/deviceEvents`.
        class EventNotificationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration for notification of new states received from the device.
        # @!attribute [rw] pubsub_topic_name
        #   @return [::String]
        #     A Cloud Pub/Sub topic name. For example,
        #     `projects/myProject/topics/deviceEvents`.
        class StateNotificationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A server-stored registry credential used to validate device credentials.
        # @!attribute [rw] public_key_certificate
        #   @return [::Google::Cloud::Iot::V1::PublicKeyCertificate]
        #     A public key certificate used to verify the device credentials.
        class RegistryCredential
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of an X.509 certificate. For informational purposes only.
        # @!attribute [rw] issuer
        #   @return [::String]
        #     The entity that signed the certificate.
        # @!attribute [rw] subject
        #   @return [::String]
        #     The entity the certificate and public key belong to.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the certificate becomes valid.
        # @!attribute [rw] expiry_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the certificate becomes invalid.
        # @!attribute [rw] signature_algorithm
        #   @return [::String]
        #     The algorithm used to sign the certificate.
        # @!attribute [rw] public_key_type
        #   @return [::String]
        #     The type of public key in the certificate.
        class X509CertificateDetails
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A public key certificate format and data.
        # @!attribute [rw] format
        #   @return [::Google::Cloud::Iot::V1::PublicKeyCertificateFormat]
        #     The certificate format.
        # @!attribute [rw] certificate
        #   @return [::String]
        #     The certificate data.
        # @!attribute [rw] x509_details
        #   @return [::Google::Cloud::Iot::V1::X509CertificateDetails]
        #     [Output only] The certificate details. Used only for X.509 certificates.
        class PublicKeyCertificate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A server-stored device credential used for authentication.
        # @!attribute [rw] public_key
        #   @return [::Google::Cloud::Iot::V1::PublicKeyCredential]
        #     A public key used to verify the signature of JSON Web Tokens (JWTs).
        #     When adding a new device credential, either via device creation or via
        #     modifications, this public key credential may be required to be signed by
        #     one of the registry level certificates. More specifically, if the
        #     registry contains at least one certificate, any new device credential
        #     must be signed by one of the registry certificates. As a result,
        #     when the registry contains certificates, only X.509 certificates are
        #     accepted as device credentials. However, if the registry does
        #     not contain a certificate, self-signed certificates and public keys will
        #     be accepted. New device credentials must be different from every
        #     registry-level certificate.
        # @!attribute [rw] expiration_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Optional] The time at which this credential becomes invalid. This
        #     credential will be ignored for new client authentication requests after
        #     this timestamp; however, it will not be automatically deleted.
        class DeviceCredential
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A public key format and data.
        # @!attribute [rw] format
        #   @return [::Google::Cloud::Iot::V1::PublicKeyFormat]
        #     The format of the key.
        # @!attribute [rw] key
        #   @return [::String]
        #     The key data.
        class PublicKeyCredential
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The device configuration. Eventually delivered to devices.
        # @!attribute [rw] version
        #   @return [::Integer]
        #     [Output only] The version of this update. The version number is assigned by
        #     the server, and is always greater than 0 after device creation. The
        #     version must be 0 on the `CreateDevice` request if a `config` is
        #     specified; the response of `CreateDevice` will always have a value of 1.
        # @!attribute [rw] cloud_update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The time at which this configuration version was updated in
        #     Cloud IoT Core. This timestamp is set by the server.
        # @!attribute [rw] device_ack_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The time at which Cloud IoT Core received the
        #     acknowledgment from the device, indicating that the device has received
        #     this configuration version. If this field is not present, the device has
        #     not yet acknowledged that it received this version. Note that when
        #     the config was sent to the device, many config versions may have been
        #     available in Cloud IoT Core while the device was disconnected, and on
        #     connection, only the latest version is sent to the device. Some
        #     versions may never be sent to the device, and therefore are never
        #     acknowledged. This timestamp is set by Cloud IoT Core.
        # @!attribute [rw] binary_data
        #   @return [::String]
        #     The device configuration data.
        class DeviceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The device state, as reported by the device.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     [Output only] The time at which this state version was updated in Cloud
        #     IoT Core.
        # @!attribute [rw] binary_data
        #   @return [::String]
        #     The device state data.
        class DeviceState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Indicates whether an MQTT connection is enabled or disabled. See the field
        # description for details.
        module MqttState
          # No MQTT state specified. If not specified, MQTT will be enabled by default.
          MQTT_STATE_UNSPECIFIED = 0

          # Enables a MQTT connection.
          MQTT_ENABLED = 1

          # Disables a MQTT connection.
          MQTT_DISABLED = 2
        end

        # Indicates whether DeviceService (HTTP) is enabled or disabled for the
        # registry. See the field description for details.
        module HttpState
          # No HTTP state specified. If not specified, DeviceService will be
          # enabled by default.
          HTTP_STATE_UNSPECIFIED = 0

          # Enables DeviceService (HTTP) service for the registry.
          HTTP_ENABLED = 1

          # Disables DeviceService (HTTP) service for the registry.
          HTTP_DISABLED = 2
        end

        # **Beta Feature**
        #
        # The logging verbosity for device activity. Specifies which events should be
        # written to logs. For example, if the LogLevel is ERROR, only events that
        # terminate in errors will be logged. LogLevel is inclusive; enabling INFO
        # logging will also enable ERROR logging.
        module LogLevel
          # No logging specified. If not specified, logging will be disabled.
          LOG_LEVEL_UNSPECIFIED = 0

          # Disables logging.
          NONE = 10

          # Error events will be logged.
          ERROR = 20

          # Informational events will be logged, such as connections and
          # disconnections.
          INFO = 30

          # All events will be logged.
          DEBUG = 40
        end

        # Gateway type.
        module GatewayType
          # If unspecified, the device is considered a non-gateway device.
          GATEWAY_TYPE_UNSPECIFIED = 0

          # The device is a gateway.
          GATEWAY = 1

          # The device is not a gateway.
          NON_GATEWAY = 2
        end

        # The gateway authorization/authentication method. This setting determines how
        # Cloud IoT Core authorizes/authenticate devices to access the gateway.
        module GatewayAuthMethod
          # No authentication/authorization method specified. No devices are allowed to
          # access the gateway.
          GATEWAY_AUTH_METHOD_UNSPECIFIED = 0

          # The device is authenticated through the gateway association only. Device
          # credentials are ignored even if provided.
          ASSOCIATION_ONLY = 1

          # The device is authenticated through its own credentials. Gateway
          # association is not checked.
          DEVICE_AUTH_TOKEN_ONLY = 2

          # The device is authenticated through both device credentials and gateway
          # association. The device must be bound to the gateway and must provide its
          # own credentials.
          ASSOCIATION_AND_DEVICE_AUTH_TOKEN = 3
        end

        # The supported formats for the public key.
        module PublicKeyCertificateFormat
          # The format has not been specified. This is an invalid default value and
          # must not be used.
          UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT = 0

          # An X.509v3 certificate ([RFC5280](https://www.ietf.org/rfc/rfc5280.txt)),
          # encoded in base64, and wrapped by `-----BEGIN CERTIFICATE-----` and
          # `-----END CERTIFICATE-----`.
          X509_CERTIFICATE_PEM = 1
        end

        # The supported formats for the public key.
        module PublicKeyFormat
          # The format has not been specified. This is an invalid default value and
          # must not be used.
          UNSPECIFIED_PUBLIC_KEY_FORMAT = 0

          # An RSA public key encoded in base64, and wrapped by
          # `-----BEGIN PUBLIC KEY-----` and `-----END PUBLIC KEY-----`. This can be
          # used to verify `RS256` signatures in JWT tokens ([RFC7518](
          # https://www.ietf.org/rfc/rfc7518.txt)).
          RSA_PEM = 3

          # As RSA_PEM, but wrapped in an X.509v3 certificate ([RFC5280](
          # https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64, and wrapped by
          # `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`.
          RSA_X509_PEM = 1

          # Public key for the ECDSA algorithm using P-256 and SHA-256, encoded in
          # base64, and wrapped by `-----BEGIN PUBLIC KEY-----` and `-----END
          # PUBLIC KEY-----`. This can be used to verify JWT tokens with the `ES256`
          # algorithm ([RFC7518](https://www.ietf.org/rfc/rfc7518.txt)). This curve is
          # defined in [OpenSSL](https://www.openssl.org/) as the `prime256v1` curve.
          ES256_PEM = 2

          # As ES256_PEM, but wrapped in an X.509v3 certificate ([RFC5280](
          # https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64, and wrapped by
          # `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`.
          ES256_X509_PEM = 4
        end
      end
    end
  end
end
