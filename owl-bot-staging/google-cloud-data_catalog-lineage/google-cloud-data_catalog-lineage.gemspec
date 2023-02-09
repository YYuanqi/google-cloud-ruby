# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/data_catalog/lineage/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-data_catalog-lineage"
  gem.version       = Google::Cloud::DataCatalog::Lineage::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "DataCatalog is a centralized and unified data catalog service for all your Cloud resources, where users and systems can discover data, explore and curate its semantics, understand how to act on it, and help govern its usage. Lineage is used to track data flows between assets over time. You can create Lineage Events to record lineage between multiple sources and a single target, for example, when table data is based on data from multiple tables."
  gem.summary       = "API Client library for the Data Lineage API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.6"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-data_catalog-lineage-v1", ">= 0.0", "< 2.a"

  gem.add_development_dependency "google-style", "~> 1.26.1"
  gem.add_development_dependency "minitest", "~> 5.16"
  gem.add_development_dependency "minitest-focus", "~> 1.1"
  gem.add_development_dependency "minitest-rg", "~> 5.2"
  gem.add_development_dependency "rake", ">= 13.0"
  gem.add_development_dependency "redcarpet", "~> 3.0"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
end
