variable "env" {
  description = "env: dev or prod"
}
variable "image" {
  type = map
  default = {
    dev = "ghost:latest"
    prod = "ghost:alpine"
  }
}
variable "container_name" {
  type = map
  default = {
    dev = "dev_blog"
    prod = "prod_blog"
  }
}
variable "int_port" {
  type = map 
  default = {
    dev = "2368"
    prod = "2368"
 } 
}
variable "ext_port" {
  type = map
  default = {
    dev = "80"
    prod = "8080"
  }
}

