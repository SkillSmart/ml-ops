variable "env" {
  description = "env: dev or prod"
}
variable "image" {
  type = map
}
variable "container_name" {
  type = map
}
variable "int_port" {
  type = map 
}
variable "ext_port" {
  type = map
}
