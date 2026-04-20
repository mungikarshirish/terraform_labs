resource "aws_instance" "myfirstvm" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count
}

resource "aws_s3_bucket" "mytfbucketshirish0001" {
  bucket = "mytfbucketshirish0001"
}

resource "aws_vpc" "mytfvpc" {
  cidr_block = "10.0.0.0/16"
}
