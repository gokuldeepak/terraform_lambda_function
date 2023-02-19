terraform {
  required_version = ">= 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.38"
    }
  }
   backend "s3" {
    bucket = "gokuldeepak"
    key    = "statefiles/python1.tfstate"
    region = "us-east-1"
     }
  
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
   access_key = var.AWS_ACCESS_KEY_ID
   secret_key = var.AWS_SECRET_ACCESS_KEY
}


