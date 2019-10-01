variable "aws_region" {
  description = "region to deploy the vpc"
}

variable "cidr_block" {
  description = "vpc cidr block"
}

variable "enable_dns_support" {
  description = "provides dns support "
}

variable "enable_dns_hostnames" {
  description = "provides dns hostnames"
}

variable "pubsubnet1_cidr_block" {
  description = "cidr of the public subnet1"
}

variable "pubsubnet2_cidr_block" {
  description = "cidr of the public subnet2"
}

variable "pubsubnet3_cidr_block" {
  description = "cidr of the public subnet3"
}

variable "prisubnet1_cidr_block" {
  description = "cidr of private subnet1"
}
variable "prisubnet2_cidr_block" {
  description = "cidr of private subnet2"
}
variable "prisubnet3_cidr_block" {
  description = "cidr of private subnet3"
}

variable "pubsub_map_public_ip_on_launch" {
  description = "enable public ip"
}

variable "prisub_map_public_ip_on_launch" {
  description = "enable public ip"
}

variable "subnet1_availability_zone" {
  description = "availability_zone of the subnets"
}

variable "subnet2_availability_zone" {
  description = "availability_zone of the subnets"
}

variable "subnet3_availability_zone" {
  description = "availability_zone of the subnets"
}
