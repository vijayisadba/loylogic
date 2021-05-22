variable "access_key" {
default = "*********"
}

variable "secret_key" {
default = "******"
}

variable "region" {
default = "ap-northeast-1"
}

variable "key" {
default  = "./EC2.pem"
}

variable "vpc_cidr" {
default     = "172.20.0.0/16"
}

variable "public_subnet" {
default     = "172.20.10.0/24"
}

variable "private_subnet" {
default     = "172.20.20.0/24"
}

variable "images" {
default = "ami-0ca38c7440de1749a"
}

variable "inst_type" {
default = "t2.micro"
}
