variable "instances" {
  default = ["mysql", "backend", "frontend"]
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
        Project = "expense"
        Environment = "dev"
    }
}