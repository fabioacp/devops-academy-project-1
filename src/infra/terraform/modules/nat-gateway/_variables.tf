variable "subnet_name_suffix" {
  type        = string
  description = "Prexif name for the resources"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Extra tags to attach to resources"
}

variable "name" {
  type        = string
  description = "Prexif name for the resources"
}

variable "subnet_id" {
  type        = string
}