resource "aws_vpc" "omada_vpc" {
  cidr_block           = var.vpc_CIDRblock
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "Omada SDN vpc"
  }
}
