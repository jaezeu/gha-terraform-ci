terraform {
  required_version = ">= 1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "jaz-gha-terraform-ci.tfstate"
    region = "us-east-1"
  }
}