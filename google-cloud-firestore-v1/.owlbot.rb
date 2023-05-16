# Copyright 2023 Google LLC
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

# Fixes invalid request headers.
# See internal issue b/277176485.
OwlBot.modifier path: "lib/google/cloud/firestore/v1/firestore/client.rb" do |content|
  content.gsub!(/^\s*header_params\["(database|parent|name|document.name)"\] = request\.(database|parent|name|document.name)/) do |match|
    key = Regexp.last_match 1
    method = Regexp.last_match 2
    leading_whitespace = match.match(/^\s*/)[0]
    "#{leading_whitespace}header_params[\"#{key}\"] = request.#{method}\n#{leading_whitespace}header_path = request.#{method}"
  end
  content.gsub(/metadata\[:"x-goog-request-params"\] \|\|= request_params_header/,
               "begin
                metadata[:\"x-goog-request-params\"] ||= header_path.split(\"/\")[0..3].each_slice(2).to_h.map { |k, v| \"#\{k[0..-2]\}_id=#\{v\}\" }.join(\"&\")
              rescue StandardError
                metadata[:\"x-goog-request-params\"] ||= request_params_header
              end")
end

OwlBot.move_files
