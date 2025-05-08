terraform {
  backend "s3" {
    bucket         = "prod-level-s3-bucket"
    key            = "prod-level-deployment/terraform/vpc.tfstate"
    region         = "us-west-2"
    encrypt        = true
    use_lockfile = true
  }
}

