provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "us-east-2"
}

resource "aws_instance" "amy-testing" {
  ami           = "ami-be7753db"
  instance_type = var.instance-type
  count = var.ec2count
  tags {
    Owner = "Amy Brown"
  }
}
