# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START texttospeech_v1beta1_generated_TextToSpeech_SynthesizeSpeech_sync]
require "google/cloud/text_to_speech/v1beta1"

##
# Example demonstrating basic usage of
# Google::Cloud::TextToSpeech::V1beta1::TextToSpeech::Client#synthesize_speech
#
def synthesize_speech
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::TextToSpeech::V1beta1::TextToSpeech::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::TextToSpeech::V1beta1::SynthesizeSpeechRequest.new

  # Call the synthesize_speech method.
  result = client.synthesize_speech request

  # The returned object is of type Google::Cloud::TextToSpeech::V1beta1::SynthesizeSpeechResponse.
  p result
end
# [END texttospeech_v1beta1_generated_TextToSpeech_SynthesizeSpeech_sync]
