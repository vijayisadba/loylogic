resource "aws_route_table" "loylogic_public_rt" {
vpc_id = "${aws_vpc.loylogic_vpc.id}"

route {
cidr_block = "0.0.0.0/0"
gateway_id = "${aws_internet_gateway.loylogic_igw.id}"
}

}

resource "aws_route_table_association" "loylogic_public_binding" {
subnet_id = "${aws_subnet.loylogic_public.id}"
route_table_id = "${aws_route_table.loylogic_public_rt.id}"
}

resource "aws_route_table" "loylogic_private_rt" {
vpc_id = "${aws_vpc.loylogic_vpc.id}"

route {
cidr_block = "0.0.0.0/0"
nat_gateway_id = "${aws_nat_gateway.loylogic_nat_gateway.id}"
}

}

resource "aws_route_table_association" "loylogic_private_binding" {
subnet_id = "${aws_subnet.loylogic_private.id}"
route_table_id = "${aws_route_table.loylogic_private_rt.id}"
}
