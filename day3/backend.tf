terraform {
  backend "s3" {
    bucket = "sfd-tf-bucket2"
    region = "ap-south-1"
    key = "tf-backend/terraform.tfstate"
  }
}