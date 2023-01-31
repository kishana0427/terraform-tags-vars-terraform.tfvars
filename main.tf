provider "aws" {
	region = "ap-south-1"
}

resource "aws_instance" "myEc2Server" {
	ami = var.inst_ami
	instance_type = var.inst_type
	key_name = var.inst_key_name
	subnet_id = var.inst_subnet_id
	vpc_security_group_ids = [var.inst_vpc_sg_id]
	
	user_data = <<-EOF
		#!/bin/bash
		sudo apt-get update
		sudo apt-get install apache2 -y
		sudo systemctl start apache2
		sudo systemctl enable apache2
	EOF
	tags = var.inst_tags
	
}

output "myEc2Server_ip" { value = aws_instance.myEc2Server.public_ip }
