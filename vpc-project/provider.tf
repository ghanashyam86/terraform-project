provider "aws" {
  region = var.aws_region

}

terraform {
  backend "s3" {
    bucket = "remote-state-bucket-ghana"
    key    = "project-2"
    region = "us-east-2"
  }
}
