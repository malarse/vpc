#1st subnet
resource "aws_subnet" "demosubnet" {
  vpc_id = "${aws_vpc.test_vpc.id}"
  cidr_block = "${var.subnet_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
  tags = {
    Name="Demo_subnet"
  }
}

#2nd Subnet

resource "aws_subnet" "demosubnet1" {
  vpc_id = "${aws_vpc.test_vpc.id}"
  cidr_block = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2b"
  tags = {
    Name = "Demo_subnet1"
  }

}