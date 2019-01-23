provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-east-2"
}

resource "aws_instance" "amy-testing" {
  ami           = "ami-be7753db"
  instance_type = "t2.micro"
  count = 1
  tags {
    "Owner" = "Amy Brown"
#    "TTL" = "30"
#    "Tag2" = "tag 2"
  }
}
