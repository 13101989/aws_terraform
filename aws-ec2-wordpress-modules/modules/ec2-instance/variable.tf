variable "instance_type" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "security_groups" {
  type = list(string)
}