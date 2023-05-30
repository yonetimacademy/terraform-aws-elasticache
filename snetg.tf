resource "aws_elasticache_subnet_group" "main" {
  name        = "${var.tenant}-${var.name}-redis-snetg-${var.environment}"
  description = "Managed by Magicorn"
  subnet_ids  = var.subnet_ids

  tags = {
    Name        = "${var.tenant}-${var.name}-redis-snetg-${var.environment}"
    Tenant      = var.tenant
    Project     = var.name
    Environment = var.environment
    Maintainer  = "Magicorn"
    Terraform   = "yes"
  }
}