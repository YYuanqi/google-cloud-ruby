# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""This script is used to synthesize generated parts of this library."""

import synthtool as s
import synthtool.gcp as gcp
import synthtool.languages.ruby as ruby
import logging

logging.basicConfig(level=logging.DEBUG)

gapic = gcp.GAPICMicrogenerator()
library = gapic.ruby_library(
    "iamcredentials", "v1",
    proto_path="google/iam/credentials/v1",
    generator_args={
        "ruby-cloud-gem-name": "google-iam-credentials",
        "ruby-cloud-title": "IAM Service Account Credentials",
        "ruby-cloud-description": "The Service Account Credentials API creates short-lived credentials for Identity and Access Management (IAM) service accounts. You can also use this API to sign JSON Web Tokens (JWTs), as well as blobs of binary data that contain other types of tokens.",
        "ruby-cloud-env-prefix": "IAM_CREDENTIALS",
        "ruby-cloud-wrapper-of": "v1:0.3",
        "ruby-cloud-product-url": "https://cloud.google.com/iam",
        "ruby-cloud-api-id": "iamcredentials.googleapis.com",
        "ruby-cloud-api-shortname": "iamcredentials",
    }
)

s.copy(library, merge=ruby.global_merge)
