terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28.0"
    }
  }
}

provider "aws" {
  profile = "rangelconsultoria"
  #profile = "iac-user"
  region = "us-east-1"

  default_tags {
    tags = {
      PROJECT     = "rangelconsultoria-infra"
      MANAGED_BY  = "terraform"
      ENVIRONMENT = "Production"
    }
  }
}