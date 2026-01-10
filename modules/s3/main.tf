resource "aws_s3_bucket" "healthcheckapi-bucket" {
  bucket        = "healthcheckapi-bucket"
  force_destroy = false

  object_lock_enabled = false
  region              = var.aws_region
}

resource "aws_s3_bucket" "rangelconsultoria-backups" {
  bucket        = "rangelconsultoria-backups"
  force_destroy = false

  object_lock_enabled = false
  region              = var.aws_region
}

resource "aws_s3_bucket" "rangelconsultoria-logs" {
  bucket        = "rangelconsultoria-logs"
  force_destroy = false

  object_lock_enabled = false
  region              = var.aws_region
}

resource "aws_s3_bucket" "rangelconsultoria-prd" {
  bucket        = "rangelconsultoria-prd"
  force_destroy = false

  object_lock_enabled = false
  region              = var.aws_region
}

resource "aws_s3_bucket" "rangelconsultoria-site" {
  bucket        = "rangelconsultoria-site"
  force_destroy = false

  object_lock_enabled = false

  region        = var.aws_region

  tags = {
    Application = var.application
  }

  tags_all = {
    Application = var.application
  }
}
