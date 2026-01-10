variable "compress_cache" {
  description = "Enable compression for CloudFront cache behavior"
  type        = bool
  default     = true
}

variable "enable_distribution" {
  description = "Enable CloudFront distribution"
  type        = bool
  default     = true
}

variable "default_ttl" {
  description = "Default TTL for CloudFront cache behavior"
  type        = number
  default     = 0
}

variable "enable_ipv6" {
  description = "Enable IPv6 for CloudFront distribution"
  type        = bool
  default     = true
}

variable "rangelconsultoria_certificate_arn" {
  description = "Default Certificate"
  type        = string
  default     = "arn:aws:acm:us-east-1:426568566894:certificate/31ef3518-fda7-4f65-9991-4a1ffbb49cb5"
}

variable "rangelconsultoria_cdn_certificate_arn" {
  description = "Default Certificate for CDN"
  type        = string
  default     = "arn:aws:acm:us-east-1:426568566894:certificate/4a25a275-8be9-47d5-9dd1-53d3dd5858b5"
}

variable "environment" {
  description = "Environment tag for resources"
  type        = string
}

variable "application" {
  description = "Application tag for resources"
  type        = string
}

variable "comment" {
  description = "Comment for CloudFront distribution"
  type        = string
  default     = "CloudFront distribution managed by Terraform"
}