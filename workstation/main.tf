provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.example_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["10.0.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-22b9a343"
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  tags = {
    Name = "HelloWorld"
  }

}


