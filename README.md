# terraform-aws-elasticache

Cloud&Cloud made Terraform Module for AWS Provider
--
```
module "elasticache" {
  source         = "yonetimacademy/elasticache/aws"
  version        = "0.0.1"
  tenant         = var.tenant
  name           = var.name
  environment    = var.environment
  vpc_id         = var.vpc_id
  cidr_block     = var.cidr_block
  subnet_ids     = var.subnet_ids
  encryption     = true # 1
  kms_key_id     = var.elasticache_key_id

  # ElastiCache Configuration
  cache_name                 = "master"
  multi_az                   = false
  replica_count              = 1
  instance_type              = "cache.t4g.micro"
  port                       = 6379
  auto_minor_version_upgrade = false
  engine_version             = "7.0"
  parameter_group            = "default.redis7"
  maintenance_window         = "mon:03:00-mon:04:00"
  snapshot_window            = "04:00-05:00"
  snapshot_retention_limit   = 3
}
```

## Notes
1) Works better with yonetimacademy-aws-kms module.