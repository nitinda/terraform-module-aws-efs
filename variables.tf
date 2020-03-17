variable "creation_token" {
  description = "A unique name (a maximum of 64 characters are allowed) used as reference when creating the Elastic File System to ensure idempotent file system creation"
  default     = null
}

variable "encrypted" {
  description = "If true, the disk will be encrypted"
  default     = false
  type        = bool
}

variable "kms_key_id" {
  description = "The ARN for the KMS encryption key"
  default     = null
}

variable "lifecycle_policy" {
  description = "A file system lifecycle policy object"
  default     = {}
  type        = map(string)
}

variable "performance_mode" {
  description = "The file system performance mode"
  default     = "generalPurpose"
}

variable "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, that you want to provision for the file system"
  default     = null
}

variable "tags" {
    description = "A mapping of tags to assign to the resource"
    type        = map(string)
    default     = {}
}

variable "throughput_mode" {
  description = "Throughput mode for the file system"
  default     = "bursting"
}
