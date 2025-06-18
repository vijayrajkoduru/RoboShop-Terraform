variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_id" {
  default = "t3.micro"

}

variable "from_port" {
  default = 0

}

variable "to_port" {
  default = 0

}

variable "protocol" {
  default = "-1"

}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]

}

variable "sg_n" {
  default = "state_sg"

}

variable "ec2_tgs" {
  type = map(string)
  default = {
    Name = "Hellow_world"
  Purpose = "variable-demo" }

}