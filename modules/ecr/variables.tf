variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "kms_key_arn" {
  description = "KMS Key ARN for ECR repositories that require KMS encryption"
  type        = string
  default     = "arn:aws:kms:us-east-1:426568566894:key/5d7c715c-e5d3-42c6-9b53-b0a2a1ab3f86"
}