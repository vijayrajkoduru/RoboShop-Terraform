variable "ami_id" {
  default     ="ami-09c813fb71547fc4f" 
}
variable "instance_type" {
  default = "t3.micro"
}
variable "ec2_tags" {
  type = map
  default = {
    Project = "koduru"
    component = "backend"
    Environment = "dev"
    Name  = "KODURU"
  }
}
variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}
variable "to_port" {
    type = number
    default = 0
}

variable "from_port" {
    type =  number
    default = 0
  
}