provider "aws" {
  version = "~> 2.0"
  region  = lookup(var.aws_region, var.env)
}
