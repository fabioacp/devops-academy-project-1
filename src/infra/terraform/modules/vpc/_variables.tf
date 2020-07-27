variable "vpc_cidr" {
    description = "VPC network"
    default     = "192.168.0.0/16"
}

variable "instance_tenancy" {
    type    = list(string)
    description = "defult or dedicated"
    default = ["default","dedicated"]
}

variable "dns_support" {
    type    = bool
    default = true
}

variable "dns_host_names" {
    type    = bool
    default = true
}

variable "name" {
    type    = string
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Extra tags to attach to resources"
}