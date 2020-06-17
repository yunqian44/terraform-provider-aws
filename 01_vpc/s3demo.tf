provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "Main"
    Location="Banglore"
  }
}

resource "aws_subnet" "subnet1" {
  #count=3  #硬编码，不推荐
  #count = "${length(var.azs)}"
  count = "${length(data.aws_availability_zones.azs.names)}"
  availability_zone = "${element(data.aws_availability_zones.azs.names,count.index)}"
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${element(var.subnet_cidr,count.index)}"

  tags = {
    Name = "Subnet-${count.index+1}"
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
