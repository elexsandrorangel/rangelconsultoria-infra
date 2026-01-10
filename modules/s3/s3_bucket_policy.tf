resource "aws_s3_bucket_policy" "rangelconsultoria-site" {
  bucket = aws_s3_bucket.rangelconsultoria-site.id
  region = var.aws_region
  policy = jsonencode({
    Id      = "PolicyForCloudFrontPrivateContent"
    Version = "2008-10-17"
    Statement = [
      {
        Sid       = "1"
        Effect    = "Allow"
        Principal = {
          AWS = "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E1GIF50I4NZBZ1"
        }
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Resource = [
          "${aws_s3_bucket.rangelconsultoria-site.arn}/*",
          aws_s3_bucket.rangelconsultoria-site.arn
        ]
      }
    ]
  })
}

