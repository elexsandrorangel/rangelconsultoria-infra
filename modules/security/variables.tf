variable "vpc_id" {
  description = "The ID of the VPC where security groups will be created."
  type        = string
}

variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
}

variable "vpc_internal_cidr" {
  description = "The CIDR block for the internal VPC."
  type        = string
}