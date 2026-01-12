resource "aws_vpc" "application-vpc" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "10.100.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  region                               = var.aws_region

  tags = {
    Name = "application-vpc"
  }

  tags_all = {
    Name = "application-vpc"
  }
}
