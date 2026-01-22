provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  description = "this is for the ami id "
}
variable "instance_type" {
  description = "this is for the instance type"
}

resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.instance_type
}