output "iac_user" {
  value = {
    arn           = aws_iam_user.iac_user.arn
    name          = aws_iam_user.iac_user.name
    id            = aws_iam_user.iac_user.id
    access_key_id = aws_iam_access_key.iac_user_access_key.id
  }
}

output "iac_user_secret_access_key" {
  value     = aws_iam_access_key.iac_user_access_key.secret
  sensitive = true
}
