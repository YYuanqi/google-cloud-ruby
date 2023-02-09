# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module Dataplex
      module V1
        # A task represents a user-visible job.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The relative resource name of the task, of the form:
        #     projects/\\{project_number}/locations/\\{location_id}/lakes/\\{lake_id}/
        #     tasks/\\{task_id}.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. System generated globally unique ID for the task. This ID will
        #     be different if the task is deleted and re-created with the same name.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the task was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the task was last updated.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the task.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. User friendly display name.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataplex::V1::State]
        #     Output only. Current state of the task.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. User-defined labels for the task.
        # @!attribute [rw] trigger_spec
        #   @return [::Google::Cloud::Dataplex::V1::Task::TriggerSpec]
        #     Required. Spec related to how often and when a task should be triggered.
        # @!attribute [rw] execution_spec
        #   @return [::Google::Cloud::Dataplex::V1::Task::ExecutionSpec]
        #     Required. Spec related to how a task is executed.
        # @!attribute [r] execution_status
        #   @return [::Google::Cloud::Dataplex::V1::Task::ExecutionStatus]
        #     Output only. Status of the latest task executions.
        # @!attribute [rw] spark
        #   @return [::Google::Cloud::Dataplex::V1::Task::SparkTaskConfig]
        #     Config related to running custom Spark tasks.
        # @!attribute [rw] notebook
        #   @return [::Google::Cloud::Dataplex::V1::Task::NotebookTaskConfig]
        #     Config related to running scheduled Notebooks.
        class Task
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Configuration for the underlying infrastructure used to run workloads.
          # @!attribute [rw] batch
          #   @return [::Google::Cloud::Dataplex::V1::Task::InfrastructureSpec::BatchComputeResources]
          #     Compute resources needed for a Task when using Dataproc Serverless.
          # @!attribute [rw] container_image
          #   @return [::Google::Cloud::Dataplex::V1::Task::InfrastructureSpec::ContainerImageRuntime]
          #     Container Image Runtime Configuration.
          # @!attribute [rw] vpc_network
          #   @return [::Google::Cloud::Dataplex::V1::Task::InfrastructureSpec::VpcNetwork]
          #     Vpc network.
          class InfrastructureSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Batch compute resources associated with the task.
            # @!attribute [rw] executors_count
            #   @return [::Integer]
            #     Optional. Total number of job executors.
            #     Executor Count should be between 2 and 100. [Default=2]
            # @!attribute [rw] max_executors_count
            #   @return [::Integer]
            #     Optional. Max configurable executors.
            #     If max_executors_count > executors_count, then auto-scaling is enabled.
            #     Max Executor Count should be between 2 and 1000. [Default=1000]
            class BatchComputeResources
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Container Image Runtime Configuration used with Batch execution.
            # @!attribute [rw] image
            #   @return [::String]
            #     Optional. Container image to use.
            # @!attribute [rw] java_jars
            #   @return [::Array<::String>]
            #     Optional. A list of Java JARS to add to the classpath.
            #     Valid input includes Cloud Storage URIs to Jar binaries.
            #     For example, gs://bucket-name/my/path/to/file.jar
            # @!attribute [rw] python_packages
            #   @return [::Array<::String>]
            #     Optional. A list of python packages to be installed.
            #     Valid formats include Cloud Storage URI to a PIP installable library.
            #     For example, gs://bucket-name/my/path/to/lib.tar.gz
            # @!attribute [rw] properties
            #   @return [::Google::Protobuf::Map{::String => ::String}]
            #     Optional. Override to common configuration of open source components
            #     installed on the Dataproc cluster. The properties to set on daemon
            #     config files. Property keys are specified in `prefix:property` format,
            #     for example `core:hadoop.tmp.dir`. For more information, see [Cluster
            #     properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
            class ContainerImageRuntime
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # @!attribute [rw] key
              #   @return [::String]
              # @!attribute [rw] value
              #   @return [::String]
              class PropertiesEntry
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Cloud VPC Network used to run the infrastructure.
            # @!attribute [rw] network
            #   @return [::String]
            #     Optional. The Cloud VPC network in which the job is run. By default,
            #     the Cloud VPC network named Default within the project is used.
            # @!attribute [rw] sub_network
            #   @return [::String]
            #     Optional. The Cloud VPC sub-network in which the job is run.
            # @!attribute [rw] network_tags
            #   @return [::Array<::String>]
            #     Optional. List of network tags to apply to the job.
            class VpcNetwork
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Task scheduling and trigger settings.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Dataplex::V1::Task::TriggerSpec::Type]
          #     Required. Immutable. Trigger type of the user-specified Task.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Optional. The first run of the task will be after this time.
          #     If not specified, the task will run shortly after being submitted if
          #     ON_DEMAND and based on the schedule if RECURRING.
          # @!attribute [rw] disabled
          #   @return [::Boolean]
          #     Optional. Prevent the task from executing.
          #     This does not cancel already running tasks. It is intended to temporarily
          #     disable RECURRING tasks.
          # @!attribute [rw] max_retries
          #   @return [::Integer]
          #     Optional. Number of retry attempts before aborting.
          #     Set to zero to never attempt to retry a failed task.
          # @!attribute [rw] schedule
          #   @return [::String]
          #     Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for
          #     running tasks periodically. To explicitly set a timezone to the cron
          #     tab, apply a prefix in the cron tab: "CRON_TZ=$\\{IANA_TIME_ZONE}" or
          #     "TZ=$\\{IANA_TIME_ZONE}". The $\\{IANA_TIME_ZONE} may only be a valid
          #     string from IANA time zone database. For example,
          #     `CRON_TZ=America/New_York 1 * * * *`,
          #     or `TZ=America/New_York 1 * * * *`.
          #     This field is required for RECURRING tasks.
          class TriggerSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Determines how often and when the job will run.
            module Type

              # Unspecified trigger type.
              TYPE_UNSPECIFIED = 0

              # The task runs one-time shortly after Task Creation.
              ON_DEMAND = 1

              # The task is scheduled to run periodically.
              RECURRING = 2
            end
          end

          # Execution related settings, like retry and service_account.
          # @!attribute [rw] args
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Optional. The arguments to pass to the task.
          #     The args can use placeholders of the format $\\{placeholder} as
          #     part of key/value string. These will be interpolated before passing the
          #     args to the driver. Currently supported placeholders:
          #     - $\\{task_id}
          #     - $\\{job_time}
          #     To pass positional args, set the key as TASK_ARGS. The value should be a
          #     comma-separated string of all the positional arguments. To use a
          #     delimiter other than comma, refer to
          #     https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of
          #     other keys being present in the args, then TASK_ARGS will be passed as
          #     the last argument.
          # @!attribute [rw] service_account
          #   @return [::String]
          #     Required. Service account to use to execute a task.
          #     If not provided, the default Compute service account for the project is
          #     used.
          # @!attribute [rw] project
          #   @return [::String]
          #     Optional. The project in which jobs are run. By default, the project
          #     containing the Lake is used. If a project is provided, the
          #     {::Google::Cloud::Dataplex::V1::Task::ExecutionSpec#service_account ExecutionSpec.service_account}
          #     must belong to this project.
          # @!attribute [rw] max_job_execution_lifetime
          #   @return [::Google::Protobuf::Duration]
          #     Optional. The maximum duration after which the job execution is expired.
          # @!attribute [rw] kms_key
          #   @return [::String]
          #     Optional. The Cloud KMS key to use for encryption, of the form:
          #     `projects/{project_number}/locations/{location_id}/keyRings/{key-ring-name}/cryptoKeys/{key-name}`.
          class ExecutionSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class ArgsEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # User-specified config for running a Spark task.
          # @!attribute [rw] main_jar_file_uri
          #   @return [::String]
          #     The Cloud Storage URI of the jar file that contains the main class.
          #     The execution args are passed in as a sequence of named process
          #     arguments (`--key=value`).
          # @!attribute [rw] main_class
          #   @return [::String]
          #     The name of the driver's main class. The jar file that contains the
          #     class must be in the default CLASSPATH or specified in
          #     `jar_file_uris`.
          #     The execution args are passed in as a sequence of named process
          #     arguments (`--key=value`).
          # @!attribute [rw] python_script_file
          #   @return [::String]
          #     The Gcloud Storage URI of the main Python file to use as the driver.
          #     Must be a .py file. The execution args are passed in as a sequence of
          #     named process arguments (`--key=value`).
          # @!attribute [rw] sql_script_file
          #   @return [::String]
          #     A reference to a query file. This can be the Cloud Storage URI of the
          #     query file or it can the path to a SqlScript Content. The execution
          #     args are used to declare a set of script variables
          #     (`set key="value";`).
          # @!attribute [rw] sql_script
          #   @return [::String]
          #     The query text.
          #     The execution args are used to declare a set of script variables
          #     (`set key="value";`).
          # @!attribute [rw] file_uris
          #   @return [::Array<::String>]
          #     Optional. Cloud Storage URIs of files to be placed in the working
          #     directory of each executor.
          # @!attribute [rw] archive_uris
          #   @return [::Array<::String>]
          #     Optional. Cloud Storage URIs of archives to be extracted into the working
          #     directory of each executor. Supported file types: .jar, .tar, .tar.gz,
          #     .tgz, and .zip.
          # @!attribute [rw] infrastructure_spec
          #   @return [::Google::Cloud::Dataplex::V1::Task::InfrastructureSpec]
          #     Optional. Infrastructure specification for the execution.
          class SparkTaskConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Config for running scheduled notebooks.
          # @!attribute [rw] notebook
          #   @return [::String]
          #     Required. Path to input notebook. This can be the Cloud Storage URI of
          #     the notebook file or the path to a Notebook Content. The execution args
          #     are accessible as environment variables
          #     (`TASK_key=value`).
          # @!attribute [rw] infrastructure_spec
          #   @return [::Google::Cloud::Dataplex::V1::Task::InfrastructureSpec]
          #     Optional. Infrastructure specification for the execution.
          # @!attribute [rw] file_uris
          #   @return [::Array<::String>]
          #     Optional. Cloud Storage URIs of files to be placed in the working
          #     directory of each executor.
          # @!attribute [rw] archive_uris
          #   @return [::Array<::String>]
          #     Optional. Cloud Storage URIs of archives to be extracted into the working
          #     directory of each executor. Supported file types: .jar, .tar, .tar.gz,
          #     .tgz, and .zip.
          class NotebookTaskConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Status of the task execution (e.g. Jobs).
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. Last update time of the status.
          # @!attribute [r] latest_job
          #   @return [::Google::Cloud::Dataplex::V1::Job]
          #     Output only. latest job execution
          class ExecutionStatus
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

        # A job represents an instance of a task.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The relative resource name of the job, of the form:
        #     `projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}`.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. System generated globally unique ID for the job.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the job was started.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the job ended.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataplex::V1::Job::State]
        #     Output only. Execution state for the job.
        # @!attribute [r] retry_count
        #   @return [::Integer]
        #     Output only. The number of times the job has been retried (excluding the
        #     initial attempt).
        # @!attribute [r] service
        #   @return [::Google::Cloud::Dataplex::V1::Job::Service]
        #     Output only. The underlying service running a job.
        # @!attribute [r] service_job
        #   @return [::String]
        #     Output only. The full resource name for the job run under a particular
        #     service.
        # @!attribute [r] message
        #   @return [::String]
        #     Output only. Additional information about the current state.
        class Job
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          module Service
          # Service used to run the job is unspecified.
            SERVICE_UNSPECIFIED = 0

            # Dataproc service is used to run this job.
            DATAPROC = 1
          end

          module State
          # The job state is unknown.
            STATE_UNSPECIFIED = 0

            # The job is running.
            RUNNING = 1

            # The job is cancelling.
            CANCELLING = 2

            # The job cancellation was successful.
            CANCELLED = 3

            # The job completed successfully.
            SUCCEEDED = 4

            # The job is no longer running due to an error.
            FAILED = 5

            # The job was cancelled outside of Dataplex.
            ABORTED = 6
          end
        end
      end
    end
  end
end

