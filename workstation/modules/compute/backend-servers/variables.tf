# Base setup
variable "name" {
  type = string
}
variable "region" {
  type = string
}
variable "instance_type" { 
  type = string
}

# Autoscaling setup
variable "min_workers" { 
  type = number
  default = 1
}
variable "max_workers" { 
  type = number
  default = 1
}


