#resource "aws_instance" "myfirstvm" {
#  ami           = var.ami
#  instance_type = var.instance_type
#  count         = var.instance_count
#}

resource "aws_s3_bucket" "mytfbucketshirish" {
  bucket = var.bucket_name
}

resource "aws_vpc" "mytfvpc" {
  cidr_block = var.vpc_cidr
}
