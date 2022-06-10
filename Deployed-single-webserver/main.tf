terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.17.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = var.aws_region
  profile = var.aws_profile

}
resource "aws_vpc" "web-server-vpc" {
  cidr_block = var.cidr-blocks[0]
  tags = {
    Name = "${var.tag}-vpc"
  }
}
# creating subnet on vpc
resource "aws_subnet" "pub-sn" {
  vpc_id            = aws_vpc.web-server-vpc.id
  cidr_block        = var.cidr-blocks[1]
  availability_zone = var.AZ-zones[0]

  tags = {
    Name = "${var.tag}-pub-sn"
  }
}
// creating internet gateway for acccess to the outer world
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.web-server-vpc.id

  tags = {
    Name = "${var.tag}-igw"
  }
}
// creating route-table
resource "aws_route_table" "rtb" {
  vpc_id = aws_vpc.web-server-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.tag}-rt"
  }
}
// adding route-table association with public-subnet
resource "aws_route_table_association" "asso-pub-sn" {
  subnet_id      = aws_subnet.pub-sn.id
  route_table_id = aws_route_table.rtb.id
}
//creating the security group for web server

resource "aws_security_group" "webserver-sg" {
  name   = "single-webserver-sg"
  vpc_id = aws_vpc.web-server-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.tag}-sg"
  }
}



# Ami from latest aws ami
data "aws_ami" "amazon-ami" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*.*.*-x86_64-gp2"]
  }
  tags = {
    "Name" = "${var.tag}-Ami"
  }
}
// creating key-pair
resource "aws_key_pair" "webserver-key" {
  key_name   = "webserver-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# creating instance using latest ami
resource "aws_instance" "webserver-instance" {
  ami                         = data.aws_ami.amazon-ami.id
  instance_type               = "t2.micro"
  security_groups             = [aws_security_group.webserver-sg.id]
  subnet_id                   = aws_subnet.pub-sn.id
  key_name                    = aws_key_pair.webserver-key.id
  associate_public_ip_address = true
  availability_zone           = var.AZ-zones[0]


  tags = {
    Name = "${var.tag}-instance"

    user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  }
}







