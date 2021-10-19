terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.token
  region     = "us-west-2"
}

resource "aws_instance" "amy-testing" {
  ami           = "ami-08f76d3bc7a0e55ce"
  instance_type = var.instance-type
  count = var.ec2count
  
  tags = {
    Owner = "Amy Brown"
  }
}
