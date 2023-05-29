# terraform-aws-elasticache

Magicorn made Terraform Module for AWS Provider
--
```
module "elasticache" {
  source         = "magicorntech/elasticache/aws"
  version        = "0.0.1"
  tenant         = var.tenant
  name           = var.name
  environment    = var.environment
  vpc_id         = var.vpc_id
  cidr_block     = var.cidr_block
  db_subnet_ids  = var.db_subnet_ids

  # ElastiCache Configuration
  multi_az                   = false
  replica_count              = 1
  instance_type              = "cache.t4g.small"
  port                       = 6379
  encryption                 = true
  auto_minor_version_upgrade = false
  engine_version             = "7.0"
  parameter_group            = "default.redis7"
  maintenance_window         = "mon:03:00-mon:04:00"
  snapshot_window            = "04:00-05:00"
  snapshot_retention_limit   = 3
}
```