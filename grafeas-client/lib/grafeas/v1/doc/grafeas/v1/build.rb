# Copyright 2019 Google LLC
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


module Grafeas
  module V1
    # Note holding the version of the provider's builder and the signature of the
    # provenance message in the build details occurrence.
    # @!attribute [rw] builder_version
    #   @return [String]
    #     Required. Immutable. Version of the builder which produced this build.
    class BuildNote; end

    # Details of a build occurrence.
    # @!attribute [rw] provenance
    #   @return [Grafeas::V1::BuildProvenance]
    #     Required. The actual provenance for the build.
    # @!attribute [rw] provenance_bytes
    #   @return [String]
    #     Serialized JSON representation of the provenance, used in generating the
    #     build signature in the corresponding build note. After verifying the
    #     signature, `provenance_bytes` can be unmarshalled and compared to the
    #     provenance to confirm that it is unchanged. A base64-encoded string
    #     representation of the provenance bytes is used for the signature in order
    #     to interoperate with openssl which expects this format for signature
    #     verification.
    #
    #     The serialized form is captured both to avoid ambiguity in how the
    #     provenance is marshalled to json as well to prevent incompatibilities with
    #     future changes.
    class BuildOccurrence; end
  end
end