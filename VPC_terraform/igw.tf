resource "aws_internet_gateway" "testgateway" {
  vpc_id = "${aws_vpc.test_vpc.id}"
}