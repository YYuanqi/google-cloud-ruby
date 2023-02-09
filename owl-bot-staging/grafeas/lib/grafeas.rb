# frozen_string_literal: true

# Copyright 2023 Google LLC
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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "grafeas/version"

require "googleauth"

module Grafeas
  ##
  # Create a new client object for Grafeas.
  #
  # By default, this returns an instance of
  # [Grafeas::V1::Grafeas::Client](https://googleapis.dev/ruby/grafeas-v1/latest/Grafeas/V1/Grafeas/Client.html)
  # for a gRPC client for version V1 of the API.
  # However, you can specify a different API version by passing it in the
  # `version` parameter. If the Grafeas service is
  # supported by that API version, and the corresponding gem is available, the
  # appropriate versioned client will be returned.
  #
  # ## About Grafeas
  #
  # [Grafeas](https://grafeas.io) API.
  #
  # Retrieves analysis results of Cloud components such as Docker container
  # images.
  #
  # Analysis results are stored as a series of occurrences. An `Occurrence`
  # contains information about a specific analysis instance on a resource. An
  # occurrence refers to a `Note`. A note contains details describing the
  # analysis and is generally stored in a separate project, called a `Provider`.
  # Multiple occurrences can refer to the same note.
  #
  # For example, an SSL vulnerability could affect multiple images. In this case,
  # there would be one note for the vulnerability and an occurrence for each
  # image with the vulnerability referring to that note.
  #
  # @param version [::String, ::Symbol] The API version to connect to. Optional.
  #   Defaults to `:v1`.
  # @return [::Object] A client object for the specified version.
  #
  def self.grafeas version: :v1, &block
    require "grafeas/#{version.to_s.downcase}"

    package_name = Grafeas
                    .constants
                    .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                    .first
    service_module = Grafeas.const_get(package_name).const_get(:Grafeas)
    service_module.const_get(:Client).new(&block)
  end
end

helper_path = ::File.join __dir__, "grafeas", "helpers.rb"
require "grafeas/helpers" if ::File.file? helper_path

