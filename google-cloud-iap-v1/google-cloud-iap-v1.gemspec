# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/iap/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-iap-v1"
  gem.version       = Google::Cloud::Iap::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "IAP lets you establish a central authorization layer for applications accessed by HTTPS, so you can use an application-level access control model instead of relying on network-level firewalls. Note that google-cloud-iap-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-iap instead. See the readme for more details."
  gem.summary       = "Controls access to cloud applications running on Google Cloud Platform."
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
  gem.add_dependency "grpc-google-iam-v1", "~> 1.11"
end
