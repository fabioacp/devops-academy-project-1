variable "cidr_block" {
  description = "VPC network"
  default     = "192.168.0.0/16"
}

variable "pub_subnet_cidr_a" {
  type        = string
  description = "Public Subnet 1"
  default     = "192.168.0.0/24"
}

variable "pri_subnet_cidr_a" {
  type        = string
  description = "Private Subnet 1"
  default     = "192.168.1.0/24"
}

variable "pub_subnet_cidr_b" {
  type        = string
  description = "Public Subnet 2"
  default     = "192.168.3.0/24"
}

variable "pri_subnet_cidr_b" {
  type        = string
  description = "Private Subnet 2"
  default     = "192.168.4.0/24"
}
variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}
variable "map_public_ip" {
  type    = bool
  default = true
}
variable "tag_name_private_subnet_a" {
  type    = string
  default = "wordpress-private-subnet-a"
}

variable "tag_name_private_subnet_b" {
  type    = string
  default = "wordpress-private-subnet-b"
}

variable "tag_name_public_subnet_a" {
  type    = string
  default = "wordpress-public-subnet-a"
}

variable "tag_name_public_subnet_b" {
  type    = string
  default = "wordpress-public-subnet-b"
}

variable "tag_name_private_tier" {
  type    = string
  default = "private"
}

variable "tag_name_public_tier" {
  type    = string
  default = "private"
}

variable "name" {
  type    = string
  default = "wordpress"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Extra tags to attach to resources"
}
