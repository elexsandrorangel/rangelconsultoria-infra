resource "aws_s3_bucket_request_payment_configuration" "healthcheckapi-bucket" {
  bucket = aws_s3_bucket.healthcheckapi-bucket.id
  payer  = "BucketOwner"
}
resource "aws_s3_bucket_request_payment_configuration" "rangelconsultoria-backups" {
  bucket = aws_s3_bucket.rangelconsultoria-backups.id
  payer  = "BucketOwner"
}
resource "aws_s3_bucket_request_payment_configuration" "rangelconsultoria-logs" {
  bucket = aws_s3_bucket.rangelconsultoria-logs.id
  payer  = "BucketOwner"
}
resource "aws_s3_bucket_request_payment_configuration" "rangelconsultoria-prd" {
  bucket = aws_s3_bucket.rangelconsultoria-prd.id
  payer  = "BucketOwner"
}
resource "aws_s3_bucket_request_payment_configuration" "rangelconsultoria-site" {
  bucket = aws_s3_bucket.rangelconsultoria-site.id
  payer  = "BucketOwner"
}