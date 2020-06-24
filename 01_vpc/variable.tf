variable "aws_access_key" {
  description = "description"
  default = "AKIA2C2TL65VD3CTID6R"
}

variable "aws_secret_key" {
  description = "description"
  default = "YgRBcqsh2YJhoGO61gwuQKZZ0idMdS3x5U050roO"
}

variable "vpc_cidr" {
  default = "190.160.0.0/16"
}

variable "subnet_cidr"{
  type = list(string)
  default = ["190.160.1.0/24","190.160.2.0/24","190.160.3.0/24"]
}

# variable "azs"{
#   type = list(string)
#   default = ["us-west-2a","us-west-2b","us-west-2c"]
# }

data "aws_availability_zones" "azs" {

}







