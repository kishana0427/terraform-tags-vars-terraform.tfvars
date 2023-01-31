variable "inst_ami" {
	type = string
}

variable "inst_type" {
        type = string
}

variable "inst_key_name" {
        type = string
}

variable "inst_subnet_id" {
        type = string
}

variable "inst_vpc_sg_id" {
        type = string
}

variable "inst_tags" {
        type = object({
	Name = string
	Env = string
	Num = number
})
}





