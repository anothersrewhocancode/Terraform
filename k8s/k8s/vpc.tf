module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.6.0"

  name = "vpc-module"
  cidr = "10.0.0.0/16"

  azs             = slice(data.aws_availability_zones.available.names, 0, 3)
  public_subnets  = ["10.0.101.0/24","10.0.102.0/24"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true

  public_subnet_tags = {
    Name = "pubsubnet"
  }

  private_subnet_tags = {
    Name = "prisubnet"
  }

  vpc_tags = {
    Name = "eks-vpc"
  }

  tags = {
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
  }
}
