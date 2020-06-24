resource "aws_subnet" "subnet" {
  count = "${length(data.aws_availability_zones.azs.names)}"
  availability_zone = "${element(data.aws_availability_zones.azs.names,count.index)}"
  vpc_id     = "${aws_vpc.main.vpc_id}"
  cidr_block = "${element(var.subnet_cidr,count.index)}"

  tags = "${var.subnet_tags}"
}