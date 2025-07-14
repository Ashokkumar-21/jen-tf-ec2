terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = ap-south-1
}

resource "aws_instance" "my_first_ec2" {
  ami                    = ami-0f918f7e67a3323f0
  instance_type          = t2.micro
  tags = {
    Name = "JN-TF-EC2"
  }
}
