provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
    ami = "ami-01ca13db604661046"
    instance_type = "t2.micro"
  
}
resource "aws_s3_bucket" "s3-bucket" {
  bucket = "sfd-tf-bucket2"
}

