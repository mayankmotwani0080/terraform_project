terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  tags = {
    Name = "terraform_project"
  }
}
