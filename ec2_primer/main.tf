provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example1" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"

  tags {
  Name = "${var.instance_name}"
 }
}
variable "instance_name" {
  description= "Enter the name of the ec2 instance"
  default= "wbserver"
}

