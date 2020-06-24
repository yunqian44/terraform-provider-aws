resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_dns_support = "${var.enable_dns_support}"
  lifecycle {
    prevent_destroy = "${var.prevent_destroy}"
  }
  tags = "${var.tags}"
}
