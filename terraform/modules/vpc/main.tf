###################################################
################ VPC Configuration #################### 
###################################################

resource "aws_vpc" "prod-vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.vpc_tenacy
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Project_Name = var.project_name
    VPC_Name     = var.vpc_name
    Environment  = var.environment[0]
  }
}