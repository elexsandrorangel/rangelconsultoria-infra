output "iam" {
  value = module.iam.iac_user
}

output "iam_secret_access_key" {
  value     = module.iam.iac_user_secret_access_key
  sensitive = true
}

output "s3" {
  value = module.s3
}

output "cloudfront" {
  value = module.cloudfront
}

output "ecr" {
  value = module.ecr
}

output "network" {
  value = module.network
}

output "route53" {
  value = module.route53
}