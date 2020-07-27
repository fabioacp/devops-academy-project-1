variable "name" {
  type = string

}

variable "description" {
  type = string
  
}

variable "type" {
  type = string
  default = "SecureString"
}

variable "value" {
  type = string

}

variable "overwrite" {
  type = bool
  default = false
}