variable "enable_versioning" {
  description = "Enable versioning for S3 buckets"
  type        = bool
  default     = false
}
variable "enable_encryption" {
  description = "Enable server-side encryption for S3 buckets"
  type        = bool
  default     = true
}
variable "enable_logging" {
  description = "Enable access logging for S3 buckets"
  type        = bool
  default     = true
}

variable "mfa_delete" {
  description = "Enable MFA delete for S3 buckets"
  type        = bool
  default     = false
}

variable "application" {
  description = "Application tag for resources"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}



variable "log_bucket_name" {
  description = "Name of the S3 bucket to store access logs"
  type        = string
  default     = "rangelconsultoria-logs"
}