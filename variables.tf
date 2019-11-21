## EFS #############################
variable "creation_token" {
  description = "A unique name used as reference when creating the Elastic File System to ensure idempotent file system creation."
}

variable "encrypted" {
  description = "If true, the disk will be encrypted."
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key."
}

variable "lifecycle_policy" {
  description = "A file system lifecycle policy object"
  type        = "list"
}

variable "performance_mode" {
  description = "The file system performance mode."
}

variable "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, that you want to provision for the file system."
}

variable "throughput_mode" {
  description = "Throughput mode for the file system."
}


## EFS Mount Target #######################
variable "subnet_ids" {
  description = "The IDS sof the subnet to add the mount target in."
  type        = "list"
}

variable "security_groups" {
  description = "A list of up to 5 VPC security group IDs"
  type        = "list"
}


## Tags ############################
variable common_tags {
  description = "Resources Tags"
  type        = "map"
}