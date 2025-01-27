# vpc variable

variable "aws_region" {}
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}
variable "azs" {}
variable "env" {}

#instance variable

variable "instance_type" {}
variable "key_name" {}
variable "amis" {}
