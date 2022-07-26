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
    module RecommendationEngine
      module V1beta1
        # CatalogItem captures all metadata information of items to be recommended.
        # @!attribute [rw] id
        #   @return [::String]
        #     Required. Catalog item identifier. UTF-8 encoded string with a length limit
        #     of 128 bytes.
        #
        #     This id must be unique among all catalog items within the same catalog. It
        #     should also be used when logging user events in order for the user events
        #     to be joined with the Catalog.
        # @!attribute [rw] category_hierarchies
        #   @return [::Array<::Google::Cloud::RecommendationEngine::V1beta1::CatalogItem::CategoryHierarchy>]
        #     Required. Catalog item categories. This field is repeated for supporting
        #     one catalog item belonging to several parallel category hierarchies.
        #
        #     For example, if a shoes product belongs to both
        #     ["Shoes & Accessories" -> "Shoes"] and
        #     ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be
        #     represented as:
        #
        #          "categoryHierarchies": [
        #            { "categories": ["Shoes & Accessories", "Shoes"]},
        #            { "categories": ["Sports & Fitness", "Athletic Clothing", "Shoes"] }
        #          ]
        # @!attribute [rw] title
        #   @return [::String]
        #     Required. Catalog item title. UTF-8 encoded string with a length limit of 1
        #     KiB.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Catalog item description. UTF-8 encoded string with a length
        #     limit of 5 KiB.
        # @!attribute [rw] item_attributes
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::FeatureMap]
        #     Optional. Highly encouraged. Extra catalog item attributes to be
        #     included in the recommendation model. For example, for retail products,
        #     this could include the store name, vendor, style, color, etc. These are
        #     very strong signals for recommendation model, thus we highly recommend
        #     providing the item attributes here.
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Optional. Language of the title/description/item_attributes. Use language
        #     tags defined by BCP 47. https://www.rfc-editor.org/rfc/bcp/bcp47.txt. Our
        #     supported language codes include 'en', 'es', 'fr', 'de', 'ar', 'fa', 'zh',
        #     'ja', 'ko', 'sv', 'ro', 'nl'. For other languages, contact
        #     your Google account manager.
        # @!attribute [rw] tags
        #   @return [::Array<::String>]
        #     Optional. Filtering tags associated with the catalog item. Each tag should
        #     be a UTF-8 encoded string with a length limit of 1 KiB.
        #
        #     This tag can be used for filtering recommendation results by passing the
        #     tag as part of the predict request filter.
        # @!attribute [rw] item_group_id
        #   @return [::String]
        #     Optional. Variant group identifier for prediction results. UTF-8 encoded
        #     string with a length limit of 128 bytes.
        #
        #     This field must be enabled before it can be used. [Learn
        #     more](/recommendations-ai/docs/catalog#item-group-id).
        # @!attribute [rw] product_metadata
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::ProductCatalogItem]
        #     Optional. Metadata specific to retail products.
        class CatalogItem
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Category represents catalog item category hierarchy.
          # @!attribute [rw] categories
          #   @return [::Array<::String>]
          #     Required. Catalog item categories. Each category should be a UTF-8
          #     encoded string with a length limit of 2 KiB.
          #
          #     Note that the order in the list denotes the specificity (from least to
          #     most specific).
          class CategoryHierarchy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # ProductCatalogItem captures item metadata specific to retail products.
        # @!attribute [rw] exact_price
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::ProductCatalogItem::ExactPrice]
        #     Optional. The exact product price.
        # @!attribute [rw] price_range
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::ProductCatalogItem::PriceRange]
        #     Optional. The product price range.
        # @!attribute [rw] costs
        #   @return [::Google::Protobuf::Map{::String => ::Float}]
        #     Optional. A map to pass the costs associated with the product.
        #
        #     For example:
        #     \\{"manufacturing": 45.5} The profit of selling this item is computed like
        #     so:
        #
        #     * If 'exactPrice' is provided, profit = displayPrice - sum(costs)
        #     * If 'priceRange' is provided, profit = minPrice - sum(costs)
        # @!attribute [rw] currency_code
        #   @return [::String]
        #     Optional. Only required if the price is set. Currency code for price/costs. Use
        #     three-character ISO-4217 code.
        # @!attribute [rw] stock_state
        #   @return [::Google::Cloud::RecommendationEngine::V1beta1::ProductCatalogItem::StockState]
        #     Optional. Online stock state of the catalog item. Default is `IN_STOCK`.
        # @!attribute [rw] available_quantity
        #   @return [::Integer]
        #     Optional. The available quantity of the item.
        # @!attribute [rw] canonical_product_uri
        #   @return [::String]
        #     Optional. Canonical URL directly linking to the item detail page with a
        #     length limit of 5 KiB..
        # @!attribute [rw] images
        #   @return [::Array<::Google::Cloud::RecommendationEngine::V1beta1::Image>]
        #     Optional. Product images for the catalog item.
        class ProductCatalogItem
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Exact product price.
          # @!attribute [rw] display_price
          #   @return [::Float]
          #     Optional. Display price of the product.
          # @!attribute [rw] original_price
          #   @return [::Float]
          #     Optional. Price of the product without any discount. If zero, by default
          #     set to be the 'displayPrice'.
          class ExactPrice
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Product price range when there are a range of prices for different
          # variations of the same product.
          # @!attribute [rw] min
          #   @return [::Float]
          #     Required. The minimum product price.
          # @!attribute [rw] max
          #   @return [::Float]
          #     Required. The maximum product price.
          class PriceRange
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Float]
          class CostsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Item stock state. If this field is unspecified, the item is
          # assumed to be in stock.
          module StockState
            # Default item stock status. Should never be used.
            STOCK_STATE_UNSPECIFIED = 0

            # Item in stock.
            IN_STOCK = 0

            # Item out of stock.
            OUT_OF_STOCK = 1

            # Item that is in pre-order state.
            PREORDER = 2

            # Item that is back-ordered (i.e. temporarily out of stock).
            BACKORDER = 3
          end
        end

        # Catalog item thumbnail/detail image.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. URL of the image with a length limit of 5 KiB.
        # @!attribute [rw] height
        #   @return [::Integer]
        #     Optional. Height of the image in number of pixels.
        # @!attribute [rw] width
        #   @return [::Integer]
        #     Optional. Width of the image in number of pixels.
        class Image
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
