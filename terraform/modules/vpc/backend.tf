terraform {
  backend "s3" {
    bucket         = "prod-s3-bucket"
    key            = "${var.project_name}/terraform/statefile"
    region         = var.regions[0]
    encrypt        = true
    use_lockfile = true
  }
}

