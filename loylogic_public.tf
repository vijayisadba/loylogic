resource "aws_subnet" "loylogic_public" {
vpc_id = "${aws_vpc.loylogic_vpc.id}"

cidr_block = "${var.public_subnet}"
availability_zone = "ap-northeast-1a"

}
