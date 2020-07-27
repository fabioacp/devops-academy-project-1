resource "aws_ssm_parameter" "default" {
  name        = var.name
  description = var.description
  type        = var.type
  value       = var.value
  overwrite   = var.overwrite

  lifecycle {
    ignore_changes = [
      value
    ]
  }
}