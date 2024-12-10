# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/service_usage/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-service_usage-v1"
  gem.version       = Google::Cloud::ServiceUsage::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Service Usage is an infrastructure service of Google Cloud that lets you list and manage other APIs and services in your Cloud projects. You can list and manage Google Cloud services and their APIs, as well as services created using Cloud Endpoints. Note that google-cloud-service_usage-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-service_usage instead. See the readme for more details."
  gem.summary       = "Enables services that service consumers want to use on Google Cloud Platform, lists the available or enabled services, or disables services that service consumers no longer use."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.7"

  gem.add_dependency "gapic-common", ">= 0.24.0", "< 2.a"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
