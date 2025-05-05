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
variable "environment" {
  description = "This are the various environments"
  type        = list(any)
  default     = ["production", "staging", "development"]
}

variable "regions" {
  description = "This are the various regions"
  type        = list(any)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
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
  default     = "true"
}

###################################################
################ S3 Bucket for Statefile ################## 
###################################################
variable "s3_bucket_name" {
  description = "This is the name of the s# bucket for statefile"
  type        = string
  default     = "prod-s3-bucket"
}