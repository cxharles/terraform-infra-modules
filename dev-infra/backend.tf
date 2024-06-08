terraform {
  backend "s3" {
    region = "us-west-1"
    bucket = "terraform-modules-infa"
    key    = "dev-infra.tfstate"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
