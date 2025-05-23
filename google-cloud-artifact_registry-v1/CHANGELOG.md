# Changelog

### 1.5.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.4.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.4.0 (2025-04-21)

#### Features

* add the GoModule and KfpArtifact resources ([#29440](https://github.com/googleapis/google-cloud-ruby/issues/29440)) 
#### Documentation

* remove the restriction of the maximum numbers of versions that can be deleted in one BatchDeleteVersions call 

### 1.3.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.2.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.1.0 (2024-11-01)

#### Features

* Add Artifact Registry attachment API ([#27509](https://github.com/googleapis/google-cloud-ruby/issues/27509)) 
* Add Artifact Registry custom remote support 
* Add Artifact Registry generic repository support 
* Add Artifact Registry rule APIs 
* Add Artifact Registry server side resource filtering and sorting 
* Add Artifact Registry UpdateFile and DeleteFile APIs 
#### Documentation

* Include max page size for all Artifact Registry APIs 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27007](https://github.com/googleapis/google-cloud-ruby/issues/27007)) 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.13.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24863](https://github.com/googleapis/google-cloud-ruby/issues/24863)) 

### 0.12.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.12.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.12.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23773](https://github.com/googleapis/google-cloud-ruby/issues/23773)) 

### 0.11.0 (2023-10-27)

#### Features

* add docker_config, virtual_repository_config, remote_repository_config, mode, cleanup_policies, size_bytes, satisfies_pzs, cleanup_policy_dry_run to Repository 
* support batch_delete_versions service 

### 0.10.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22916](https://github.com/googleapis/google-cloud-ruby/issues/22916)) 

### 0.9.1 (2023-08-04)

#### Documentation

* Improve documentation format ([#22684](https://github.com/googleapis/google-cloud-ruby/issues/22684)) 

### 0.9.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21671](https://github.com/googleapis/google-cloud-ruby/issues/21671)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.8.0 (2023-03-08)

#### Features

* Support REST transport ([#20624](https://github.com/googleapis/google-cloud-ruby/issues/20624)) 

### 0.7.0 (2023-02-13)

#### Features

* Support for DockerImage#update_time 
* Support for File#fetch_time 
* Support for RPCs for getting and updating VPCSC configs 
* Support for RPCs for retrieving Maven artifacts ([#20121](https://github.com/googleapis/google-cloud-ruby/issues/20121)) 
* Support for RPCs for retrieving NPM packages 
* Support for RPCs for retrieving Python packages 
* Support for the order_by parameter to list_docker_images 

### 0.6.0 (2023-01-05)

#### Features

* Added support for location ([#19920](https://github.com/googleapis/google-cloud-ruby/issues/19920)) 

### 0.5.0 (2022-07-01)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.4.0 (2022-04-20)

#### Features

* Support for update masks when setting IAM policies

### 0.3.0 / 2022-03-29

#### Features

* Promote features from v1beta2 to v1
  * Support getting an individual docker image
  * Support importing Apt and Yum artifacts
  * Support creating, updating, and deleting repositories
  * Support listing, getting, and deleting packages
  * Support listing, getting, and deleting versions
  * Support listing and getting files
  * Support CRUD operations on tags
  * Support getting and updating project settings
  * Support IAM operations
  * Support Maven repository configuration

### 0.2.2 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.2.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.2.0 / 2021-10-18

#### Features

* Provide a repository path helper

### 0.1.0 / 2021-09-23

#### Features

* Initial generation of google-cloud-artifact_registry-v1
