resource "aws_internet_gateway" "loylogic_igw" {
vpc_id = "${aws_vpc.loylogic_vpc.id}"
}
