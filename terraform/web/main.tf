provider "aws" {
    region = "us-east-1"
}

variable "name" {
    description = "Name of the web box at apply"
}

resource "aws_instance" "devops_01_web" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    key_name = "devops_01"

    tags = {
        Name = "${var.name}"
    }
}