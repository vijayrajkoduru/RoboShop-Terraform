resource "aws_instance" "state" {
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.delete.id]
  instance_type          = var.instance_id

  tags = var.ec2_tgs

}

resource "aws_security_group" "delete" {
  name        = "delete"
  description = "inbound and outbound"


  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]


  }
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]

  }

  tags = {
    Name = var.sg_n
  }
}