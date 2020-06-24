variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "tenancy" {
    default = "dedicated"
}

variable "enable_dns_hostnames"{
    type = bool
    default = true
}

variable "enable_dns_support"{
    type = bool
    default = true
}

variable "prevent_destroy"{
    type = bool
    default = true
}

variable "tags"{
    type = map(string)
    default={}
}

