provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.token
  region     = "us-east-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
      name = "virtualization-type"
      values = ["hvm"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "amy-testing" {
  ami           = data.aws_ami.ubuntu.image_id
  instance_type = var.instance-type
  count = var.ec2count
  
  tags = {
    Owner = "Amy Brown"
  }
}
