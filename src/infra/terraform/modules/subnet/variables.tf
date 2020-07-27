variable "vpc_id" {
  type = string
}
variable "subnet_cidr" {
  type    = string
  default = "192.168.1.0/24"
}
variable "availability_zone" {
  type    =  string
}
variable "map_public_ip" { 
  type    = bool
  default = false
}
variable "name" {
  type = string
}
variable "tag_tier" {
  type = string
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Extra tags to attach to resources"
}

variable "submnet_name_suffix" {
  type = string
}

