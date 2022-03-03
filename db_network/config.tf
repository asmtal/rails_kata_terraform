terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.2"
    }
  }

  required_version = ">= 1.1.6"

  backend "s3" {
    bucket = "wtl"
    key    = "rails_kata_terraform/db_network/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
