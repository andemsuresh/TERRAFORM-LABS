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

# Ami from latest aws
data "aws_ami" "amazon-ami" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*.*.*-x86_64-gp2"]
  }
  tags = {
    "Name" = "${var.vpc-tag}-Ami"
  }
}

# creating instance using latest ami
resource "aws_instance" "Exercise-instance" {
  ami           = data.aws_ami.amazon-ami.id
   subnet_id = aws_subnet.pub-sn.id
  instance_type = "t2.micro"

  tags = {
    Name = "${var.vpc-tag}-instance"
  }
}

# pulling already existing vpc
data "aws_vpc" "exercise-vpc" {
  filter {
    name = "tag:Name"
    values = ["Exercise-vpc"]
  }
  
}
# creating subnet on existing vpc
resource "aws_subnet" "pub-sn" {
  vpc_id     = data.aws_vpc.exercise-vpc.id
  cidr_block = var.cidr_block[0]

  tags = {
    Name = "${var.vpc-tag}-pub-sn"
  }
}





 