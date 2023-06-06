data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "random_password" "auth" {
  count       = (var.encryption == true) ? 1 : 0
  length      = 64
  special     = false
  min_upper   = 12
  min_lower   = 12
  min_numeric = 12
}

resource "random_id" "backup" {
  byte_length = 8
}