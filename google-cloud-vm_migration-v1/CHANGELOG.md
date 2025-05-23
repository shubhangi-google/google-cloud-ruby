# Changelog

### 2.2.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 2.1.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 2.1.0 (2025-04-21)

#### Features

* expand QuotaFailure with quota error details ([#29459](https://github.com/googleapis/google-cloud-ruby/issues/29459)) 

### 2.0.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28826](https://github.com/googleapis/google-cloud-ruby/issues/28826))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28826](https://github.com/googleapis/google-cloud-ruby/issues/28826)) 

### 1.3.0 (2025-01-29)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.2.0 (2025-01-08)

#### Features

* Support reason and localized message strings on FieldViolation ([#28123](https://github.com/googleapis/google-cloud-ruby/issues/28123)) 

### 1.1.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.0.2 (2024-12-05)

#### Documentation

* Documentation improvements related to long-running operations ([#27633](https://github.com/googleapis/google-cloud-ruby/issues/27633)) 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.9.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24879](https://github.com/googleapis/google-cloud-ruby/issues/24879)) 

### 0.8.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.8.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.8.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23788](https://github.com/googleapis/google-cloud-ruby/issues/23788)) 

### 0.7.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22925](https://github.com/googleapis/google-cloud-ruby/issues/22925)) 

### 0.6.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.6.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21680](https://github.com/googleapis/google-cloud-ruby/issues/21680)) 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20630](https://github.com/googleapis/google-cloud-ruby/issues/20630)) 

### 0.4.0 (2023-01-11)

#### Features

* Added support for AWS as a source ([#19978](https://github.com/googleapis/google-cloud-ruby/issues/19978)) 
* Added support for get_replication_cycle and list_replication_cycles RPCs 
* Added support for retrieving the steps of a clone or cutover job 
* Added support for the IAM mixin client 
* Added support for the locations mixin client 

### 0.3.0 (2022-07-20)

#### Features

* Return additional_licenses and hostname in ComputeEngineTargetDefaults and ComputeEngineTargetDetails resources 
* Return appliance_infrastructure_version, appliance_software_version, available_versions, and upgrade_status in DatacenterConnector resources 
* Return recent_clone_jobs and recent_cutover_jobs in MigratingVm resources 
* Return the end_time in CloneJob and CutoverJob resources 
* Support for the upgrade_appliance call ([#18847](https://github.com/googleapis/google-cloud-ruby/issues/18847)) 
* Support the view argument for get_migrating_vm and list_migrating_vms 

### 0.2.0 (2022-07-08)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.1.1 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.0 / 2021-12-07

#### Features

* Initial generation of google-cloud-vm_migration-v1
