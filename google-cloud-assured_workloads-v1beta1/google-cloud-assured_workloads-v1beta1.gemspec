# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/assured_workloads/v1beta1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-assured_workloads-v1beta1"
  gem.version       = Google::Cloud::AssuredWorkloads::V1beta1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Assured Workloads for Government secures government workloads and accelerates the path to running compliant workloads on Google Cloud. Note that google-cloud-assured_workloads-v1beta1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-assured_workloads instead. See the readme for more details."
  gem.summary       = "API Client library for the Assured Workloads for Government V1beta1 API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "gapic-common", ">= 0.25.0", "< 2.a"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
