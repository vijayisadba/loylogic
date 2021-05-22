resource "aws_security_group" "loylogic_public_sg" {
name = "loylogic_public_sg"
vpc_id = "${aws_vpc.loylogic_vpc.id}"

ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 8080
to_port = 8080
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
egress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["172.20.20.0/24"]
}
egress {
from_port = 8080
to_port = 8080
protocol = "tcp"
cidr_blocks = ["172.20.20.0/24"]
}
}
