# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Batch
      module V1
        # Compute resource requirements.
        #
        # ComputeResource defines the amount of resources required for each task.
        # Make sure your tasks have enough resources to successfully run.
        # If you also define the types of resources for a job to use with the
        # [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate)
        # field, make sure both fields are compatible with each other.
        # @!attribute [rw] cpu_milli
        #   @return [::Integer]
        #     The milliCPU count.
        #
        #     `cpuMilli` defines the amount of CPU resources per task in milliCPU units.
        #     For example, `1000` corresponds to 1 vCPU per task. If undefined, the
        #     default value is `2000`.
        #
        #     If you also define the VM's machine type using the `machineType` in
        #     [InstancePolicy](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicy)
        #     field or inside the `instanceTemplate` in the
        #     [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate)
        #     field, make sure the CPU resources for both fields are compatible with each
        #     other and with how many tasks you want to allow to run on the same VM at
        #     the same time.
        #
        #     For example, if you specify the `n2-standard-2` machine type, which has 2
        #     vCPUs each, you are recommended to set `cpuMilli` no more than `2000`, or
        #     you are recommended to run two tasks on the same VM if you set `cpuMilli`
        #     to `1000` or less.
        # @!attribute [rw] memory_mib
        #   @return [::Integer]
        #     Memory in MiB.
        #
        #     `memoryMib` defines the amount of memory per task in MiB units.
        #     If undefined, the default value is `2000`.
        #     If you also define the VM's machine type using the `machineType` in
        #     [InstancePolicy](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicy)
        #     field or inside the `instanceTemplate` in the
        #     [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate)
        #     field, make sure the memory resources for both fields are compatible with
        #     each other and with how many tasks you want to allow to run on the same VM
        #     at the same time.
        #
        #     For example, if you specify the `n2-standard-2` machine type, which has 8
        #     GiB each, you are recommended to set `memoryMib` to no more than `8192`,
        #     or you are recommended to run two tasks on the same VM if you set
        #     `memoryMib` to `4096` or less.
        # @!attribute [rw] boot_disk_mib
        #   @return [::Integer]
        #     Extra boot disk size in MiB for each task.
        class ComputeResource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Status event.
        # @!attribute [rw] type
        #   @return [::String]
        #     Type of the event.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the event.
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time this event occurred.
        # @!attribute [rw] task_execution
        #   @return [::Google::Cloud::Batch::V1::TaskExecution]
        #     Task Execution.
        #     This field is only defined for task-level status events where the task
        #     fails.
        # @!attribute [rw] task_state
        #   @return [::Google::Cloud::Batch::V1::TaskStatus::State]
        #     Task State.
        #     This field is only defined for task-level status events.
        class StatusEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # This Task Execution field includes detail information for
        # task execution procedures, based on StatusEvent types.
        # @!attribute [rw] exit_code
        #   @return [::Integer]
        #     The exit code of a finished task.
        #
        #     If the task succeeded, the exit code will be 0. If the task failed but not
        #     due to the following reasons, the exit code will be 50000.
        #
        #     Otherwise, it can be from different sources:
        #     * Batch known failures:
        #     https://cloud.google.com/batch/docs/troubleshooting#reserved-exit-codes.
        #     * Batch runnable execution failures; you can rely on Batch logs to further
        #     diagnose: https://cloud.google.com/batch/docs/analyze-job-using-logs. If
        #     there are multiple runnables failures, Batch only exposes the first error.
        class TaskExecution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Status of a task.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Batch::V1::TaskStatus::State]
        #     Task state.
        # @!attribute [rw] status_events
        #   @return [::Array<::Google::Cloud::Batch::V1::StatusEvent>]
        #     Detailed info about why the state is reached.
        class TaskStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Task states.
          module State
            # Unknown state.
            STATE_UNSPECIFIED = 0

            # The Task is created and waiting for resources.
            PENDING = 1

            # The Task is assigned to at least one VM.
            ASSIGNED = 2

            # The Task is running.
            RUNNING = 3

            # The Task has failed.
            FAILED = 4

            # The Task has succeeded.
            SUCCEEDED = 5

            # The Task has not been executed when the Job finishes.
            UNEXECUTED = 6
          end
        end

        # Runnable describes instructions for executing a specific script or container
        # as part of a Task.
        # @!attribute [rw] container
        #   @return [::Google::Cloud::Batch::V1::Runnable::Container]
        #     Container runnable.
        #
        #     Note: The following fields are mutually exclusive: `container`, `script`, `barrier`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] script
        #   @return [::Google::Cloud::Batch::V1::Runnable::Script]
        #     Script runnable.
        #
        #     Note: The following fields are mutually exclusive: `script`, `container`, `barrier`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] barrier
        #   @return [::Google::Cloud::Batch::V1::Runnable::Barrier]
        #     Barrier runnable.
        #
        #     Note: The following fields are mutually exclusive: `barrier`, `container`, `script`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. DisplayName is an optional field that can be provided by the
        #     caller. If provided, it will be used in logs and other outputs to identify
        #     the script, making it easier for users to understand the logs. If not
        #     provided the index of the runnable will be used for outputs.
        # @!attribute [rw] ignore_exit_status
        #   @return [::Boolean]
        #     Normally, a runnable that returns a non-zero exit status fails and causes
        #     the task to fail. However, you can set this field to `true` to allow the
        #     task to continue executing its other runnables even if this runnable
        #     fails.
        # @!attribute [rw] background
        #   @return [::Boolean]
        #     Normally, a runnable that doesn't exit causes its task to fail. However,
        #     you can set this field to `true` to configure a background runnable.
        #     Background runnables are allowed continue running in the background while
        #     the task executes subsequent runnables. For example, background runnables
        #     are useful for providing services to other runnables or providing
        #     debugging-support tools like SSH servers.
        #
        #     Specifically, background runnables are killed automatically (if they have
        #     not already exited) a short time after all foreground runnables have
        #     completed. Even though this is likely to result in a non-zero exit status
        #     for the background runnable, these automatic kills are not treated as task
        #     failures.
        # @!attribute [rw] always_run
        #   @return [::Boolean]
        #     By default, after a Runnable fails, no further Runnable are executed. This
        #     flag indicates that this Runnable must be run even if the Task has already
        #     failed. This is useful for Runnables that copy output files off of the VM
        #     or for debugging.
        #
        #     The always_run flag does not override the Task's overall max_run_duration.
        #     If the max_run_duration has expired then no further Runnables will execute,
        #     not even always_run Runnables.
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Batch::V1::Environment]
        #     Environment variables for this Runnable (overrides variables set for the
        #     whole Task or TaskGroup).
        # @!attribute [rw] timeout
        #   @return [::Google::Protobuf::Duration]
        #     Timeout for this Runnable.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels for this Runnable.
        class Runnable
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Container runnable.
          # @!attribute [rw] image_uri
          #   @return [::String]
          #     Required. The URI to pull the container image from.
          # @!attribute [rw] commands
          #   @return [::Array<::String>]
          #     Required for some container images. Overrides the `CMD` specified in the
          #     container. If there is an `ENTRYPOINT` (either in the container image or
          #     with the `entrypoint` field below) then these commands are appended as
          #     arguments to the `ENTRYPOINT`.
          # @!attribute [rw] entrypoint
          #   @return [::String]
          #     Required for some container images. Overrides the `ENTRYPOINT` specified
          #     in the container.
          # @!attribute [rw] volumes
          #   @return [::Array<::String>]
          #     Volumes to mount (bind mount) from the host machine files or directories
          #     into the container, formatted to match `--volume` option for the
          #     `docker run` command&mdash;for example, `/foo:/bar` or `/foo:/bar:ro`.
          #
          #     If the `TaskSpec.Volumes` field is specified but this field is not, Batch
          #     will mount each volume from the host machine to the container with the
          #     same mount path by default. In this case, the default mount option for
          #     containers will be read-only (`ro`) for existing persistent disks and
          #     read-write (`rw`) for other volume types, regardless of the original
          #     mount options specified in `TaskSpec.Volumes`. If you need different
          #     mount settings, you can explicitly configure them in this field.
          # @!attribute [rw] options
          #   @return [::String]
          #     Required for some container images. Arbitrary additional options to
          #     include in the `docker run` command when running this container&mdash;for
          #     example, `--network host`. For the `--volume` option, use the `volumes`
          #     field for the container.
          # @!attribute [rw] block_external_network
          #   @return [::Boolean]
          #     If set to true, external network access to and from container will be
          #     blocked, containers that are with block_external_network as true can
          #     still communicate with each other, network cannot be specified in the
          #     `container.options` field.
          # @!attribute [rw] username
          #   @return [::String]
          #     Required if the container image is from a private Docker registry. The
          #     username to login to the Docker registry that contains the image.
          #
          #     You can either specify the username directly by using plain text or
          #     specify an encrypted username by using a Secret Manager secret:
          #     `projects/*/secrets/*/versions/*`. However, using a secret is
          #     recommended for enhanced security.
          #
          #     Caution: If you specify the username using plain text, you risk the
          #     username being exposed to any users who can view the job or its logs.
          #     To avoid this risk, specify a secret that contains the username instead.
          #
          #     Learn more about [Secret
          #     Manager](https://cloud.google.com/secret-manager/docs/) and [using
          #     Secret Manager with
          #     Batch](https://cloud.google.com/batch/docs/create-run-job-secret-manager).
          # @!attribute [rw] password
          #   @return [::String]
          #     Required if the container image is from a private Docker registry. The
          #     password to login to the Docker registry that contains the image.
          #
          #     For security, it is strongly recommended to specify an
          #     encrypted password by using a Secret Manager secret:
          #     `projects/*/secrets/*/versions/*`.
          #
          #     Warning: If you specify the password using plain text, you risk the
          #     password being exposed to any users who can view the job or its logs.
          #     To avoid this risk, specify a secret that contains the password instead.
          #
          #     Learn more about [Secret
          #     Manager](https://cloud.google.com/secret-manager/docs/) and [using
          #     Secret Manager with
          #     Batch](https://cloud.google.com/batch/docs/create-run-job-secret-manager).
          # @!attribute [rw] enable_image_streaming
          #   @return [::Boolean]
          #     Optional. If set to true, this container runnable uses Image streaming.
          #
          #     Use Image streaming to allow the runnable to initialize without
          #     waiting for the entire container image to download, which can
          #     significantly reduce startup time for large container images.
          #
          #     When `enableImageStreaming` is set to true, the container
          #     runtime is [containerd](https://containerd.io/) instead of Docker.
          #     Additionally, this container runnable only supports the following
          #     `container` subfields: `imageUri`,
          #     `commands[]`, `entrypoint`, and
          #     `volumes[]`; any other `container` subfields are ignored.
          #
          #     For more information about the requirements and limitations for using
          #     Image streaming with Batch, see the [`image-streaming`
          #     sample on
          #     GitHub](https://github.com/GoogleCloudPlatform/batch-samples/tree/main/api-samples/image-streaming).
          class Container
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Script runnable.
          # @!attribute [rw] path
          #   @return [::String]
          #     The path to a script file that is accessible from the host VM(s).
          #
          #     Unless the script file supports the default `#!/bin/sh` shell
          #     interpreter, you must specify an interpreter by including a
          #     [shebang line](https://en.wikipedia.org/wiki/Shebang_(Unix) as the
          #     first line of the file. For example, to execute the script using bash,
          #     include `#!/bin/bash` as the first line of the file. Alternatively,
          #     to execute the script using Python3, include `#!/usr/bin/env python3`
          #     as the first line of the file.
          #
          #     Note: The following fields are mutually exclusive: `path`, `text`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] text
          #   @return [::String]
          #     The text for a script.
          #
          #     Unless the script text supports the default `#!/bin/sh` shell
          #     interpreter, you must specify an interpreter by including a
          #     [shebang line](https://en.wikipedia.org/wiki/Shebang_(Unix) at the
          #     beginning of the text. For example, to execute the script using bash,
          #     include `#!/bin/bash\n` at the beginning of the text. Alternatively,
          #     to execute the script using Python3, include `#!/usr/bin/env python3\n`
          #     at the beginning of the text.
          #
          #     Note: The following fields are mutually exclusive: `text`, `path`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class Script
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A barrier runnable automatically blocks the execution of subsequent
          # runnables until all the tasks in the task group reach the barrier.
          # @!attribute [rw] name
          #   @return [::String]
          #     Barriers are identified by their index in runnable list.
          #     Names are not required, but if present should be an identifier.
          class Barrier
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Spec of a task
        # @!attribute [rw] runnables
        #   @return [::Array<::Google::Cloud::Batch::V1::Runnable>]
        #     Required. The sequence of one or more runnables (executable scripts,
        #     executable containers, and/or barriers) for each task in this task group to
        #     run. Each task runs this list of runnables in order. For a task to succeed,
        #     all of its script and container runnables each must meet at least one of
        #     the following conditions:
        #
        #     + The runnable exited with a zero status.
        #     + The runnable didn't finish, but you enabled its `background` subfield.
        #     + The runnable exited with a non-zero status, but you enabled its
        #       `ignore_exit_status` subfield.
        # @!attribute [rw] compute_resource
        #   @return [::Google::Cloud::Batch::V1::ComputeResource]
        #     ComputeResource requirements.
        # @!attribute [rw] max_run_duration
        #   @return [::Google::Protobuf::Duration]
        #     Maximum duration the task should run before being automatically retried
        #     (if enabled) or automatically failed. Format the value of this field
        #     as a time limit in seconds followed by `s`&mdash;for example, `3600s`
        #     for 1 hour. The field accepts any value between 0 and the maximum listed
        #     for the `Duration` field type at
        #     https://protobuf.dev/reference/protobuf/google.protobuf/#duration; however,
        #     the actual maximum run time for a job will be limited to the maximum run
        #     time for a job listed at
        #     https://cloud.google.com/batch/quotas#max-job-duration.
        # @!attribute [rw] max_retry_count
        #   @return [::Integer]
        #     Maximum number of retries on failures.
        #     The default, 0, which means never retry.
        #     The valid value range is [0, 10].
        # @!attribute [rw] lifecycle_policies
        #   @return [::Array<::Google::Cloud::Batch::V1::LifecyclePolicy>]
        #     Lifecycle management schema when any task in a task group is failed.
        #     Currently we only support one lifecycle policy.
        #     When the lifecycle policy condition is met,
        #     the action in the policy will execute.
        #     If task execution result does not meet with the defined lifecycle
        #     policy, we consider it as the default policy.
        #     Default policy means if the exit code is 0, exit task.
        #     If task ends with non-zero exit code, retry the task with max_retry_count.
        # @!attribute [rw] environments
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Deprecated: please use environment(non-plural) instead.
        # @!attribute [rw] volumes
        #   @return [::Array<::Google::Cloud::Batch::V1::Volume>]
        #     Volumes to mount before running Tasks using this TaskSpec.
        # @!attribute [rw] environment
        #   @return [::Google::Cloud::Batch::V1::Environment]
        #     Environment variables to set before running the Task.
        class TaskSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class EnvironmentsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # LifecyclePolicy describes how to deal with task failures
        # based on different conditions.
        # @!attribute [rw] action
        #   @return [::Google::Cloud::Batch::V1::LifecyclePolicy::Action]
        #     Action to execute when ActionCondition is true.
        #     When RETRY_TASK is specified, we will retry failed tasks
        #     if we notice any exit code match and fail tasks if no match is found.
        #     Likewise, when FAIL_TASK is specified, we will fail tasks
        #     if we notice any exit code match and retry tasks if no match is found.
        # @!attribute [rw] action_condition
        #   @return [::Google::Cloud::Batch::V1::LifecyclePolicy::ActionCondition]
        #     Conditions that decide why a task failure is dealt with a specific action.
        class LifecyclePolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Conditions for actions to deal with task failures.
          # @!attribute [rw] exit_codes
          #   @return [::Array<::Integer>]
          #     Exit codes of a task execution.
          #     If there are more than 1 exit codes,
          #     when task executes with any of the exit code in the list,
          #     the condition is met and the action will be executed.
          class ActionCondition
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Action on task failures based on different conditions.
          module Action
            # Action unspecified.
            ACTION_UNSPECIFIED = 0

            # Action that tasks in the group will be scheduled to re-execute.
            RETRY_TASK = 1

            # Action that tasks in the group will be stopped immediately.
            FAIL_TASK = 2
          end
        end

        # A Cloud Batch task.
        # @!attribute [rw] name
        #   @return [::String]
        #     Task name.
        #     The name is generated from the parent TaskGroup name and 'id' field.
        #     For example:
        #     "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01/tasks/task01".
        # @!attribute [rw] status
        #   @return [::Google::Cloud::Batch::V1::TaskStatus]
        #     Task Status.
        class Task
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Environment describes a collection of environment variables to set when
        # executing Tasks.
        # @!attribute [rw] variables
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A map of environment variable names to values.
        # @!attribute [rw] secret_variables
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     A map of environment variable names to Secret Manager secret names.
        #     The VM will access the named secrets to set the value of each environment
        #     variable.
        # @!attribute [rw] encrypted_variables
        #   @return [::Google::Cloud::Batch::V1::Environment::KMSEnvMap]
        #     An encrypted JSON dictionary where the key/value pairs correspond to
        #     environment variable names and their values.
        class Environment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key_name
          #   @return [::String]
          #     The name of the KMS key that will be used to decrypt the cipher text.
          # @!attribute [rw] cipher_text
          #   @return [::String]
          #     The value of the cipherText response from the `encrypt` method.
          class KMSEnvMap
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class VariablesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class SecretVariablesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
