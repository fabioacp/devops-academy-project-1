variable "vpc_id" {
  type = string
}

variable "name" {
  description = "Prefix name for the resources"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to attach to resources"
}