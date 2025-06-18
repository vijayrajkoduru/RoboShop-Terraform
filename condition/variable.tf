variable "ami_id" {
  default = "ami-09c813fb71547fc4f"

}

variable "environment" {
  default = "prod"

}

variable "ec2_tags" {
  type = map(any)
  default = {
    project     = "condition"
    conponent   = "backend"
    Environment = "dev"
    Name        = "condition-backend-dev"
  }



}