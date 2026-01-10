output "iam" {
  value = module.iam.iac_user
}

output "iam_secret_access_key" {
  value     = module.iam.iac_user_secret_access_key
  sensitive = true
}
