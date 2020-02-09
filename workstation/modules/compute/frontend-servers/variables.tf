variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Pick the instance type family for your compute job"
}

variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "min_workers" {
  type = number
}

variable "max_workers" {
  type = number
}
