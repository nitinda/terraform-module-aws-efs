resource "aws_efs_file_system" "efs_file_system" {
  creation_token                  = var.creation_token
  encrypted                       = var.encrypted
  kms_key_id                      = var.kms_key_id
  performance_mode                = var.performance_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  tags                            = var.common_tags
  throughput_mode                 = var.throughput_mode

  dynamic "lifecycle_policy" {
    for_each = var.lifecycle_policy
    content {
      transition_to_ia = lookup(lifecycle_policy.value, "transition_to_ia", null)
    }
  }
}