resource "aws_route_table" "route" {
  vpc_id = "${aws_vpc.test_vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.testgateway.id}"
  }
  tags = {
    Name ="Route_to_Internet"
  }
}
resource "aws_route_table_association" "rt1" {
  subnet_id = "${aws_subnet.demosubnet.id}"
  route_table_id = "${aws_route_table.route.id}"
}
resource "aws_route_table_association" "rt2" {
  subnet_id = "${aws_subnet.demosubnet1.id}"

  route_table_id = "${aws_route_table.route.id}"
}