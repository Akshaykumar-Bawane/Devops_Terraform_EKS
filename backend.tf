terraform {
  backend "s3" {
    bucket         = "bullet-06-terraform-state"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "bullet-06-terraform-lock"
    encrypt        = true
  }
}