terraform {
  backend "s3" {
    bucket       = "venkatesh-devsecops-tfstate-bucket"
    key          = "vpc/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
