provider "aws" {
  region = "us-east-1" # set your desired AWS region
}

resource "aws_instance" "example" {
  ami = "ami-0360c520857e3138f" # Specify an appropriate AMI ID. If this ami doesent match the ami in aws. it will give you error.
  instance_type = "t2.micro"
}