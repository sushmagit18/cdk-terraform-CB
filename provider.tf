terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
  backend "s3" {
    bucket         = "myadterraform12" 
    key            = "terraform.tfstate"          
    region         = "ca-central-1"                  
  }


}

provider "aws" {
  region = "ca-central-1"
}