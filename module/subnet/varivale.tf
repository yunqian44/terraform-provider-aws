variable "subnet_cidr"{
  type = list(string)
#   default = ["190.160.1.0/24","190.160.2.0/24","190.160.3.0/24"]
}

# variable "azs"{
#   type = list(string)
#   default = ["us-west-2a","us-west-2b","us-west-2c"]
# }

variable "name" {
    type = map(string)
    description = "(optional) describe your variable"
}

data "aws_availability_zones" "azs" {

}







