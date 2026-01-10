resource "aws_s3_bucket_server_side_encryption_configuration" "healthcheckapi-bucket" {
  bucket = aws_s3_bucket.healthcheckapi-bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }

    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "rangelconsultoria-backups" {
  bucket = aws_s3_bucket.rangelconsultoria-backups.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }

    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "rangelconsultoria-logs" {
  bucket = aws_s3_bucket.rangelconsultoria-logs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }

    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "rangelconsultoria-prd" {
  bucket = aws_s3_bucket.rangelconsultoria-prd.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }

    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "rangelconsultoria-site" {
  bucket = aws_s3_bucket.rangelconsultoria-site.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }

    bucket_key_enabled = true
  }
}
