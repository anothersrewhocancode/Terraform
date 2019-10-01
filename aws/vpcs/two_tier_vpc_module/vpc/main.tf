resource "aws_vpc" "main" {
    cidr_block = "${var.cidr_block}"
    instance_tenancy = "default"
    enable_dns_support = "${var.enable_dns_support}"
    enable_dns_hostnames = "${var.enable_dns_hostnames}"
    tags = {
      Name = "main"
    }
}


# Subnets
resource "aws_subnet" "main-public-1" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.pubsubnet1_cidr_block}"
    map_public_ip_on_launch = "${var.pubsub_map_public_ip_on_launch}"
    availability_zone = "${var.subnet1_availability_zone}"

    tags = {
        Name = "main-public-1"
    }
}
resource "aws_subnet" "main-public-2" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.pubsubnet2_cidr_block}"
    map_public_ip_on_launch = "${var.pubsub_map_public_ip_on_launch}"
    availability_zone = "${var.subnet2_availability_zone}"

    tags = {
        Name = "main-public-2"
    }
}
resource "aws_subnet" "main-public-3" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.pubsubnet3_cidr_block}"
    map_public_ip_on_launch = "${var.pubsub_map_public_ip_on_launch}"
    availability_zone = "${var.subnet3_availability_zone}"

    tags = {
        Name = "main-public-3"
    }
}
resource "aws_subnet" "main-private-1" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.prisubnet1_cidr_block}"
    map_public_ip_on_launch = "${var.prisub_map_public_ip_on_launch}"
    availability_zone = "${var.subnet1_availability_zone}"

    tags = {
        Name = "main-private-1"
    }
}
resource "aws_subnet" "main-private-2" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block =  "${var.prisubnet2_cidr_block}"
    map_public_ip_on_launch = "${var.prisub_map_public_ip_on_launch}"
    availability_zone = "${var.subnet2_availability_zone}"

    tags = {
        Name = "main-private-2"
    }
}
resource "aws_subnet" "main-private-3" {
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${var.prisubnet3_cidr_block}"
    map_public_ip_on_launch = "${var.prisub_map_public_ip_on_launch}"
    availability_zone = "${var.subnet3_availability_zone}"

    tags = {
        Name = "main-private-3"
    }
}

# Internet GW
resource "aws_internet_gateway" "main-gw" {
    vpc_id = "${aws_vpc.main.id}"

    tags = {
        Name = "main"
    }
}

# route tables
resource "aws_route_table" "main-public" {
    vpc_id = "${aws_vpc.main.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.main-gw.id}"
    }

    tags = {
        Name = "main-public-1"
    }
}

# route associations public
resource "aws_route_table_association" "main-public-1-a" {
    subnet_id = "${aws_subnet.main-public-1.id}"
    route_table_id = "${aws_route_table.main-public.id}"
}
resource "aws_route_table_association" "main-public-2-a" {
    subnet_id = "${aws_subnet.main-public-2.id}"
    route_table_id = "${aws_route_table.main-public.id}"
}
resource "aws_route_table_association" "main-public-3-a" {
    subnet_id = "${aws_subnet.main-public-3.id}"
    route_table_id = "${aws_route_table.main-public.id}"
}
