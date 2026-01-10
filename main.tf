module "iam" {
  source = "./modules/iam"
}

module "cloudfront" {
  source      = "./modules/cloudfront"
  environment = "Production"
  application = "rangelconsultoria"
  comment     = "Imported CloudFront distribution"
}

# module "ec2" {
#   source = "./modules/ec2"

#   count = var.instance_count
#   instance_name_prefix = var.instance_name_prefix
#   instance_type = var.instance_type
#   tags = var.instance_tags
# }