# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/dataplex/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-dataplex-v1"
  gem.version       = Google::Cloud::Dataplex::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Dataplex is an intelligent data fabric that provides a way to centrally manage, monitor, and govern your data across data lakes, data warehouses and data marts, and make this data securely accessible to a variety of analytics and data science tools. Note that google-cloud-dataplex-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-dataplex instead. See the readme for more details."
  gem.summary       = "Dataplex API is used to manage the lifecycle of data lakes."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
  gem.add_dependency "google-cloud-location", "~> 1.0"
  gem.add_dependency "google-iam-v1", "~> 1.3"
end
