provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example1" {
  count = "${length(var.instance_name)}"
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "${element(var.instance_name, count.index)}"
  }
}
