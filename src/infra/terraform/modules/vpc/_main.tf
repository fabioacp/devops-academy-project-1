resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy[0]
  enable_dns_support   = var.dns_support 
  enable_dns_hostnames = var.dns_host_names
  
  tags = merge(
    var.tags,
    {
      "Name"    = "${var.name}-vpc"
    },
  )
}