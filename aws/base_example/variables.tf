variable "env" {
  type        = string
  description = "env: dev or prod"
}
variable "project_name" {
  type = string
}

variable "aws_region" {
  type = map
}

#----Networking variables -----
variable "accessip" {}
variable "public_cidrs" {
  type = list
}
variable "vpc_cidr" {
  type = string
}

#---Compute variables ------
variable "public_key_path" {}
variable "key_name" {}
variable "username" {}
variable "instance_count" {
  type = map
}
variable "instance_type" {
  type = map
}
