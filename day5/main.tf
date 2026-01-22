provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  default ="ami-0dee22c13ea7a9a67"
}
variable "instance_type" {
  
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t3.medium"
  }
}

module "ec2instance" {
  source = "./modules/ec2instance"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}