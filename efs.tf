resource "aws_efs_file_system" "efs_file_system" {
  creation_token = var.creation_token
  encrypted      = var.encrypted
  kms_key_id     = var.kms_key_id
  dynamic "lifecycle_policy" {
    for_each = length(keys(var.lifecycle_policy)) == 0 ? [] : [var.lifecycle_policy]
    content {
      transition_to_ia = lookup(lifecycle_policy.value, "transition_to_ia", null)
    }
  }
  performance_mode                = var.performance_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  tags                            = var.tags
  throughput_mode                 = var.throughput_mode
}