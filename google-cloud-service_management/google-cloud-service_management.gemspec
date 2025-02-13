# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/service_management/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-service_management"
  gem.version       = Google::Cloud::ServiceManagement::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Google Service Management allows service producers to publish their services on Google Cloud Platform so that they can be discovered and used by service consumers."
  gem.summary       = "API Client library for the Service Management API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-service_management-v1", ">= 0.10", "< 2.a"
end
