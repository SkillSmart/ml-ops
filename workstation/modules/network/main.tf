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

