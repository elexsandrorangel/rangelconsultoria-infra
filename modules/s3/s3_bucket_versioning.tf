resource "aws_s3_bucket_versioning" "healthcheckapi-bucket" {
  bucket = aws_s3_bucket.healthcheckapi-bucket.id
  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Disabled"

    # mfa_delete = var.mfa_delete ? "Enabled" : "Disabled"
  }
}

resource "aws_s3_bucket_versioning" "rangelconsultoria-backups" {
  bucket = aws_s3_bucket.rangelconsultoria-backups.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Disabled"

    #mfa_delete = var.mfa_delete ? "Enabled" : "Disabled"
  }
}

resource "aws_s3_bucket_versioning" "rangelconsultoria-logs" {
  bucket = aws_s3_bucket.rangelconsultoria-logs.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Disabled"

    #mfa_delete = var.mfa_delete ? "Enabled" : "Disabled"
  }
}

resource "aws_s3_bucket_versioning" "rangelconsultoria-prd" {
  bucket = aws_s3_bucket.rangelconsultoria-prd.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Disabled"

    #mfa_delete = var.mfa_delete ? "Enabled" : "Disabled"
  }
}

resource "aws_s3_bucket_versioning" "rangelconsultoria-site" {
  bucket = aws_s3_bucket.rangelconsultoria-site.id
  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Disabled"

    #mfa_delete = var.mfa_delete ? "Enabled" : "Disabled"
  }
}
