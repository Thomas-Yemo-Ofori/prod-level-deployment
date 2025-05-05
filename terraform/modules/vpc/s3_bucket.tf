###################################################
################ S3 Bucket for Statefile ################## 
###################################################
resource "aws_s3_bucket" "prod-s3-bucket" {
  bucket       = "${var.project_name}-statefile"

  tags = {
    Name        = "${var.s3_bucket_name}"
    Project     = var.project_name
    Environment = "${var.environment[0]}"
  }
}