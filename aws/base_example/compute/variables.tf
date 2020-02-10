#-------compute/variables.tf------------

variable "key_name" {} 
variable "public_key" {} 
variable "subnet_ids" {}
variable "instance_count" {
  type = number
}
variable "instance_type" {}
variable "security_group" {}
variable "subnets" {
  type = list
}
