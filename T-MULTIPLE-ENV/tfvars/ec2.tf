resource "aws_instance" "Hacker" {
  count                  = length(var.instances)
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.pentester.id]
  instance_type          = var.instance_type

  tags = merge(
    var.common_tags,
    {
      Name = "${var.Project}-${var.environment}-${var.instances[count.index]}" # expense-dev-mysql
    }
  )

}
resource "aws_security_group" "pentester" {
  name        = "${var.Project}-${var.environment}" #expe-dev, expe-prod
  description = "creating inbound and outound"

  ingress {
    from_port   = 0
    to_port     = 0
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
    Name = "${var.Project}-${var.environment}"
  }

}