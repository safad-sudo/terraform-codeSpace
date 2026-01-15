provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "./mudules/ec2"
  ami_value = "ami-02b8269d5e85954ef"
  instance_type_value = "t2.micro"
}