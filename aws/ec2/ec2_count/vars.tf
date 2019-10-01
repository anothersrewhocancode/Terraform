variable instance_name {
  description = "name of instance"
  type = "list"
  default = ["proxy","frontend","backend"]
}

variable instance_ami {
  description = "ami id"
  default = "ami-40d28157"
}

variable instance_type {
  description = "type of instance"
  default = "t2.micro"
}
