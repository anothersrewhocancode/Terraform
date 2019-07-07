resource "aws_vpc" "environments-eg" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags {
    Name = "myawsvpc"
  }
}
