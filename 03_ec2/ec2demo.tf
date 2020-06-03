resource "aws_instance" "web" {
  ami           = "${var.ec2_ami}"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
