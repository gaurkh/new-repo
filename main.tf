module "vpc" {
  source = "/vpc"
  subnetid = ["192.167.1.0/24", "192.167.2.0/24"]
  privatesubnet = ["192.167.3.0/24", "192.167.4.0/24", "192.167.5.0/24", "192.167.6.0/24"]
 vpccidr= "192.167.0.0/16"
  allname = "cloudblitz"
}



terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  profile = "gauri"
  region = "us-east-1"
}
