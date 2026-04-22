provider "aws" {
  region = "ap-south-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}

/*
get module repo with tag and add below 
module "bucket1" {
  source      = "git::https://github.com/satyam88/aws_tf_modules.git//modules/s3bucket?ref=v1.1.0"
  bucket_name = "shirishbkt150101"
}

module "bucket2" {
  source      = "git::https://github.com/satyam88/aws_tf_modules.git//modules/s3bucket?ref=v1.1.0"
  bucket_name = "sshirishbkt150102"
}

module "bucket3" {
  source      = "git::https://github.com/satyam88/aws_tf_modules.git//modules/s3bucket?ref=v1.1.0"
  bucket_name = "shirishbkt150103"
}

module "my_vpc" {
  source          = "git::https://github.com/satyam88/aws_tf_modules.git//modules/vpc?ref=v1.1.2"
  vpc_name        = "shirish-vpc"
  cidr_block      = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
}
*/