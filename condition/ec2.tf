resource "aws_instance" "condition" {
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.killing.id]
  instance_type          = var.environment == "prod" ? "t3.micro" : "t3.small"

  tags = var.ec2_tags

}

resource "aws_security_group" "killing" {
  name        = "killing"
  description = "inbound and outbound"

  ingress {
    to_port     = 0
    from_port   = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    to_port     = 0
    from_port   = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
    tags={
       Name = "condition-backend-dev"
    }
}