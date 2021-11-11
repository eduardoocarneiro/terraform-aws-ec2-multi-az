provider "aws" {
    region =   var.aws_region
}

resource "aws_instance" "ec2" {
  ami           = var.ec2_ami
  instance_type = var.instance_type
  count = var.ec2_count
  vpc_security_group_ids = ["${aws_security_group.ec2-sg.id}"]
  subnet_id = var.subnets [count.index]

  tags = {
    Name = "${var.environment}.${var.product}-${count.index+1}"
  }
}
