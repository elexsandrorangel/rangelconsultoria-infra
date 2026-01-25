locals {
    # The canonical user ID of the bucket owner
    s3_bucket_owner_id = "a0122f01330fbda2adcf219d556e10e400284b4e2f900943b8107d620998476d"   
}

resource "aws_s3_bucket_ownership_controls" "rangelconsultoria-backups" {
  bucket = aws_s3_bucket.rangelconsultoria-backups.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_ownership_controls" "rangelconsultoria-logs" {
  bucket = aws_s3_bucket.rangelconsultoria-logs.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_ownership_controls" "rangelconsultoria-prd" {
  bucket = aws_s3_bucket.rangelconsultoria-prd.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_ownership_controls" "rangelconsultoria-site" {
  bucket = aws_s3_bucket.rangelconsultoria-site.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_acl" "rangelconsultoria-backups" {
  bucket = aws_s3_bucket.rangelconsultoria-backups.id
  
  depends_on = [ aws_s3_bucket.rangelconsultoria-backups ]
  access_control_policy {
    owner {
      id = local.s3_bucket_owner_id
    }
    grant {
      grantee {
        type = "CanonicalUser"
        id   = local.s3_bucket_owner_id
      }
      permission = "FULL_CONTROL"
    }
  }
}

resource "aws_s3_bucket_acl" "rangelconsultoria-logs" {
  bucket = aws_s3_bucket.rangelconsultoria-logs.id
  
  depends_on = [ aws_s3_bucket.rangelconsultoria-logs ]
  access_control_policy {
    owner {
      id = local.s3_bucket_owner_id
    }
    grant {
      grantee {
        type = "CanonicalUser"
        id   = local.s3_bucket_owner_id
      }
      permission = "FULL_CONTROL"
    }
  }
}

resource "aws_s3_bucket_acl" "rangelconsultoria-prd" {
  bucket = aws_s3_bucket.rangelconsultoria-prd.id
  
  depends_on = [ aws_s3_bucket.rangelconsultoria-prd ]
  access_control_policy {
    owner {
      id = local.s3_bucket_owner_id
    }
    grant {
      grantee {
        type = "CanonicalUser"
        id   = local.s3_bucket_owner_id
      }
      permission = "FULL_CONTROL"
    }
  }
}


resource "aws_s3_bucket_acl" "rangelconsultoria-site" {
  bucket = aws_s3_bucket.rangelconsultoria-site.id
  
  depends_on = [ aws_s3_bucket.rangelconsultoria-site ]
  access_control_policy {
    owner {
      id = local.s3_bucket_owner_id
    }
    grant {
      grantee {
        type = "CanonicalUser"
        id   = local.s3_bucket_owner_id
      }
      permission = "FULL_CONTROL"
    }
  }
}