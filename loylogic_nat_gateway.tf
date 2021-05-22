resource "aws_eip" "loylogic_eip" {
  vpc = true
}

resource "aws_nat_gateway" "loylogic_nat_gateway" {
  allocation_id = "${aws_eip.loylogic_eip.id}"
  subnet_id = "${aws_subnet.loylogic_public.id}"
}
