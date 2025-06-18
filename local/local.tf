locals {
  ami_id = data.aws_ami.datasource.id
  instance_type = "t3.micro"
  name = "${var.project}-${var.environment}-${var.component}-changed"# this is the modification from variable.tf "that we can give everything at time"
}
