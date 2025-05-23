# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/security/private_ca/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-security-private_ca-v1"
  gem.version       = Google::Cloud::Security::PrivateCA::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Certificate Authority Service is a highly available, scalable Google Cloud service that enables you to simplify, automate, and customize the deployment, management, and security of private certificate authorities (CA). Note that google-cloud-security-private_ca-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-security-private_ca instead. See the readme for more details."
  gem.summary       = "The Certificate Authority Service API is a highly-available, scalable service that enables you to simplify and automate the management of private certificate authorities (CAs) while staying in control of your private keys."
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
