variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "instances" {
  default = ["frontend", "backend", "mysql"]
}

variable "zone_id" {
  default = "Z05476892IBG9W47WAZ1Z"
}

variable "domain_name" {
  default = "vrushaba.shop"
}

variable "common_tags" {
  type = map
  default = {
    Project     = "Hacker"
    Environment = "dev"
  }
}