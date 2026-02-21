terraform {
  backend "s3" {
    bucket       = "k8s-devsecops-tfstate-bucket"
    key          = "ec2/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
