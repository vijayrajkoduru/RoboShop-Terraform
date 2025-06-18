variable "instances" {
    type=map
    default = {

        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
  
}

variable "zone_id" {
  default = "Z05476892IBG9W47WAZ1Z"
}

variable "domain_name" {
  default = "vrushaba.shop"
}
