resource "aws_instance" "this" {
  ami                    = local.ami_id
  vpc_security_group_ids = [aws_security_group.full_access.id]
  instance_type          = local.instance_type

  tags = {
    Name    = "local.name"
    purpose = "working"
  }
}
resource "aws_security_group" "full_access" {
  name        = "full_access"
  description = "Inbound and outbound full Traffic"


  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "full_access"

  }
}

