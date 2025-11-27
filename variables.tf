variable "aws_region" { default = "eu-north-1" }
variable "ami" {}
variable "instance_type" { default = "t3.micro" }
variable "key_name" {}
variable "allowed_cidr" { default = "0.0.0.0/0" }