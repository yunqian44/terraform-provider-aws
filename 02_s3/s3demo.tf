provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "yq007-tf-test-bucket001"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
