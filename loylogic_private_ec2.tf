resource "aws_key_pair" "pvt" {
  key_name   = "pvt"
  public_key = "${file("EC2.pub")}"
}
resource "aws_instance" "loylogic_private_inst" {
	ami = "${var.images}"
	instance_type = "${var.inst_type}"
	key_name = "${aws_key_pair.pvt.key_name}"
        vpc_security_group_ids = ["${aws_security_group.loylogic_private_sg.id}"]
        subnet_id = "${aws_subnet.loylogic_private.id}"
        associate_public_ip_address = false

}
