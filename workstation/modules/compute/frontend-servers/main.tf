resource "aws_instance" "frontend" {
  ami = "ami-22b9a343"
  instance_type = var.instance_type
   
}
