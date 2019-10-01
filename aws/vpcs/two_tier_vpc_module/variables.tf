variable "aws_region" {
  default = "eu-west-2"
}

variable "cidr_block" {
  description = "vpc cidr block"
  default     = "10.0.0.0/16"
}

variable "enable_dns_support" {
  description = "provides dns support "
  default     = "true"
}

variable "enable_dns_hostnames" {
  description = "provides dns hostnames"
  default     = "true"
}

variable "pubsubnet1_cidr_block" {
  description = "cidr of the public subnet1"
  default     = "10.0.1.0/24"
}

variable "pubsubnet2_cidr_block" {
  description = "cidr of the public subnet2"
  default     = "10.0.2.0/24"
}

variable "pubsubnet3_cidr_block" {
  description = "cidr of the public subnet3"
  default     = "10.0.3.0/24"
}

variable "prisubnet1_cidr_block" {
  description = "cidr of private subnet1"
  default     = "10.0.4.0/24"
}
variable "prisubnet2_cidr_block" {
  description = "cidr of private subnet2"
  default     = "10.0.5.0/24"
}
variable "prisubnet3_cidr_block" {
  description = "cidr of private subnet3"
  default     = "10.0.6.0/24"
}

variable "pubsub_map_public_ip_on_launch" {
  description = "enable public ip"
  default     = "true"
}

variable "prisub_map_public_ip_on_launch" {
  description = "enable public ip"
  default     = "false"
}

variable "subnet1_availability_zone" {
  description = "availability_zone of the subnets"
  default     = "eu-west-2a"
}

variable "subnet2_availability_zone" {
  description = "availability_zone of the subnets"
  default     = "eu-west-2b"
}

variable "subnet3_availability_zone" {
  description = "availability_zone of the subnets"
  default     = "eu-west-2c"
}
