resource "aws_key_pair" "creds" {
  key_name   = "creds"
  public_key = "${file("EC2.pub")}"
}

resource "aws_instance" "loylogic_public_inst" {
	ami = "${var.images}"
	instance_type = "${var.inst_type}"
	key_name = "${aws_key_pair.creds.key_name}"
        vpc_security_group_ids = ["${aws_security_group.loylogic_public_sg.id}"]
        subnet_id = "${aws_subnet.loylogic_public.id}"
        associate_public_ip_address = true

	user_data = "${file("install_jenkins.sh")}"
}
