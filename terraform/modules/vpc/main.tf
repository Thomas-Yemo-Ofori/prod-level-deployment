###################################################
################ VPC Configuration #################### 
###################################################

resource "aws_vpc" "prod-vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.vpc_tenacy
  enable_dns_support   = var.boolean[0]
  enable_dns_hostnames = var.boolean[0]
  tags = {
    Project_Name = var.project_name
    VPC_Name     = var.vpc_name
    Environment  = var.environments[0]
  }
}

###################################################
################## Subnet Groups ##################### 
###################################################

resource "aws_subnet" "public_subnet_1a" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.public_subnet_cidrs[0]
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = var.boolean[0]
  tags = {
    Name        = "${var.public_subnet_names[0]}-${var.availability_zones[0]}"
    Environment = var.environments[0]
    Project_Name = var.project_name
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.public_subnet_cidrs[1]
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = var.boolean[0]
  tags = {
    Name        = "${var.public_subnet_names[1]}-${var.availability_zones[1]}"
    Environment = var.environments[0]
    Project_Name = var.project_name
  }
}