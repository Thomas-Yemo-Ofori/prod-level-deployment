###################################################
################## Project Details ##################### 
###################################################

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "prod-level-deployment"
}

###################################################
############## Deployment Environments ################ 
###################################################
variable "environments" {
  description = "This are the various environments"
  type        = list(string)
  default     = ["production", "staging", "development"]
}

variable "regions" {
  description = "This are the various regions"
  type        = list(string)
  default     = ["us-west-2", "us-east-1", "ca-central-1"]
}

###################################################
################## VPC informations ################### 
###################################################
variable "vpc_name" {
  description = "This is the name of the VPC"
  type        = string
  default     = "prod-level-vpc"
}

variable "vpc_cidr" {
  description = "This is the VPC cidr block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_tenacy" {
  description = "This is the VPC tenancy"
  type        = string
  default     = "default"
}

variable "boolean" {
  description = "This is a boolean value"
  type        = list(bool)
  default     = [true, false]
}


###################################################
################## Availabliy Zones  #################### 
###################################################
variable "availability_zones" {
  description = "This is the availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

###################################################
################## Subnet Groups  ##################### 
###################################################

variable "public_subnet_names" {
  description = "This is the public subnet cidr names"
  type        = list(string)
  default     = ["public_subnet_1a", "public_subnet_1b"]
}

variable "public_subnet_cidrs" {
  description = "This is the public subnet cidr block"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_names" {
  description = "This is the private subnet cidr names"
  type        = list(string)
  default     = ["private_subnet_1a", "private_subnet_1b"]
}

variable "private_subnet_cidrs" {
  description = "This is the private subnet cidr block"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "db_subnet_names" {
  description = "This is the db subnet cidr names"
  type        = list(string)
  default     = ["db_subnet_1a", "db_subnet_1b"]
}

variable "db_subnet_cidrs" {
  description = "This is the db subnet cidr block"
  type        = list(string)
  default     = ["10.0.5.0/24", "10.0.6.0/24"]
}