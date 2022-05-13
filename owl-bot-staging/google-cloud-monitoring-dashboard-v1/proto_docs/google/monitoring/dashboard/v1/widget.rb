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
    module Monitoring
      module Dashboard
        module V1
          # Widget contains a single dashboard component and configuration of how to
          # present the component in the dashboard.
          # @!attribute [rw] title
          #   @return [::String]
          #     Optional. The title of the widget.
          # @!attribute [rw] xy_chart
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart]
          #     A chart of time series data.
          # @!attribute [rw] scorecard
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::Scorecard]
          #     A scorecard summarizing time series data.
          # @!attribute [rw] text
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::Text]
          #     A raw string or markdown displaying textual content.
          # @!attribute [rw] blank
          #   @return [::Google::Protobuf::Empty]
          #     A blank space.
          # @!attribute [rw] alert_chart
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::AlertChart]
          #     A chart of alert policy data.
          # @!attribute [rw] time_series_table
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::TimeSeriesTable]
          #     A widget that displays time series data in a tabular format.
          # @!attribute [rw] collapsible_group
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::CollapsibleGroup]
          #     A widget that groups the other widgets. All widgets that are within
          #     the area spanned by the grouping widget are considered member widgets.
          # @!attribute [rw] logs_panel
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::LogsPanel]
          #     A widget that shows a stream of logs.
          class Widget
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
