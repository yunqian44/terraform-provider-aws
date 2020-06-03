provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Main"
    Location="Banglore"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "190.160.1.0/24"

  tags = {
    Name = "Subnet1"
  }
}




# resource "aws_s3_bucket" "s3_bucket" {
#   bucket = "my-tf-test-bucket001"
#   acl    = "private"
#   tags {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }
