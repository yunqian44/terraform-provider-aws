variable "region" {
  default = "eu-west-1"
}

variable "aws_vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "aws_vpc_tags" {
  type = map
  default = {
    name = "vpc-instance"
  }
}








