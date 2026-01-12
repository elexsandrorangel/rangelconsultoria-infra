module "iam" {
  source = "./modules/iam"
}

module "cloudfront" { # Depende do módulo S3
  source      = "./modules/cloudfront"
  environment = "Production"
  application = "rangelconsultoria"
  comment     = "Imported CloudFront distribution"
}

module "s3" {
  source      = "./modules/s3"
  aws_region  = "us-east-1"
  application = "rangelconsultoria"
}

module "ecr" { # Depende do módulo KMS se for usar KMS
  source     = "./modules/ecr"
  aws_region = "us-east-1"
}

module "route53" {
  source = "./modules/route53"
}

module "network" {
  source     = "./modules/network"
  aws_region = "us-east-1"
}

module "security" {
  source            = "./modules/security"
  vpc_id            = module.network.vpc_id
  vpc_internal_cidr = "10.100.0.0/16"
  aws_region        = "us-east-1"
}

# module "ec2" {
#   source = "./modules/ec2"

#   count = var.instance_count
#   instance_name_prefix = var.instance_name_prefix
#   instance_type = var.instance_type
#   tags = var.instance_tags
# }