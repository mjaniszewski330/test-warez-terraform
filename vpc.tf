# VPC Virtual Private Cloud
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/24"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "vpc-terraform-xxxx"
  }
}

# Subnet
resource "aws_subnet" "main-public-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-west-2a"

  tags = {
    Name = "subnet-terraform-xxxx"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "gateway-terraform-xxxx"
  }
}

# Route table
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
  }

  tags = {
    Name = "route-table-terraform-xxxx"
  }
}

# Route associations public
resource "aws_route_table_association" "main-public-1" {
  subnet_id      = aws_subnet.main-public-1.id
  route_table_id = aws_route_table.main-public.id
}
