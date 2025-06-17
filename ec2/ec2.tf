resource "aws_instance" "this" {
  ami                    = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.full_access.id]
  instance_type          = "t3.micro"

  tags = {
    Name    = "vijaykumar"
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

