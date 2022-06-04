terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = var.region
  profile = var.profile
}
#vpc creation
resource "aws_vpc" "Exercise-vpc" {
  cidr_block = var.cidr_block[0]
  tags = {
    Name = "${var.vpc-tag}-vpc"
  }
}

