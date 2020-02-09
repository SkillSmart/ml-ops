resource "aws_instance" "backend" {
  ami           = "ami-22b9a343"
  instance_type = var.instance_type 

  tags = {
    Name = "HelloWorld"
  }

}
