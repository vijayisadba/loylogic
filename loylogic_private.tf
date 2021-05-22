resource "aws_subnet" "loylogic_private" {
vpc_id = "${aws_vpc.loylogic_vpc.id}"

cidr_block = "${var.private_subnet}"
availability_zone = "ap-northeast-1a"

}
