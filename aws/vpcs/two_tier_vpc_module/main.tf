provider "aws" {
  aws_region  = "${var.aws_region}"
}

module "vpc" {
  source = "./vpc"
  aws_region  = "${var.aws_region}"
  cidr_block = "${var.cidr_block}"
  enable_dns_support = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  pubsubnet1_cidr_block = "${var.pubsubnet1_cidr_block}"
  pubsubnet2_cidr_block = "${var.pubsubnet2_cidr_block}"
  pubsubnet3_cidr_block = "${var.pubsubnet3_cidr_block}"
  prisubnet1_cidr_block = "${var.prisubnet1_cidr_block}"
  prisubnet2_cidr_block = "${var.prisubnet2_cidr_block}"
  prisubnet3_cidr_block = "${var.prisubnet3_cidr_block}"
  pubsub_map_public_ip_on_launch = "${var.pubsub_map_public_ip_on_launch}"
  prisub_map_public_ip_on_launch = "${var.prisub_map_public_ip_on_launch}"
  subnet1_availability_zone = "${var.subnet1_availability_zone}"
  subnet2_availability_zone = "${var.subnet2_availability_zone}"
  subnet3_availability_zone = "${var.subnet3_availability_zone}"
}
