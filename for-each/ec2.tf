resource "aws_instance" "this" {
  for_each = var.instances
  ami                    = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.full_access.id]
  instance_type          = each.value

  tags = {
    Name    = each.key
    purpose = "learning"
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

output "ec2_info" {
  value = aws_instance.this
}