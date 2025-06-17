resource "aws_instance" "this" {
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.full_control.id]
  instance_type          = var.instance_type
  tags                   = var.ec2_tags
}

resource "aws_security_group" "full_control" {
  name        = "full_control"
  description = "allowing inbound and outbound"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks

  }

  tags = {
    Name = "newone"
  }

}

