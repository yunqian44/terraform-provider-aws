output "vpc_id" {
    value = aws_vpc.vpc.id
}

## aws_vpc.vpc.default_security_group_id
output "vpc_default_sg_id" {
    value = aws_vpc.vpc.default_security_group_id
}