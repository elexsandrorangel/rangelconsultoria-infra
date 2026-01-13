terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "personal"
    storage_account_name = "rangeltfstorage"
    container_name       = "tfstate"
    key                  = "rangelconsultoria.terraform.tfstate"
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