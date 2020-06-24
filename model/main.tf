module "vpc" {
  source = "./module/vpc/"

  # resource basic tag params
  resource-basic-tags-params=var.resource-basic-tags-params

  # for VPC
  cidr-block = var.cidr-block
  name-vpc = var.name-vpc

  # for Subnets
  multi-az = var.multi-az
  sbn-cidr-blocks = var.sbn-cidr-blocks
  name-sbn = {
    public-sbn-a   = lookup(var.name-sbn,"public-sbn-a")
    public-sbn-c   = lookup(var.name-sbn,"public-sbn-c")
    public-sbn-d   = lookup(var.name-sbn,"public-sbn-d")
    recommend-private-sbn-a = lookup(var.name-sbn,"recommend-private-sbn-a")
    recommend-private-sbn-c = lookup(var.name-sbn,"recommend-private-sbn-c")
    recommend-private-sbn-d = lookup(var.name-sbn,"recommend-private-sbn-d")
    search-private-sbn-a = lookup(var.name-sbn,"search-private-sbn-a")
    search-private-sbn-c = lookup(var.name-sbn,"search-private-sbn-c")
    search-private-sbn-d = lookup(var.name-sbn,"search-private-sbn-d")
  }

}