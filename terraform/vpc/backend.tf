terraform {
  backend "s3" {
    bucket         = "k8s-devsecops-tfstate-bucket"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "k8s-devsecops-tfstate-lock"
    encrypt        = true
  }
}
