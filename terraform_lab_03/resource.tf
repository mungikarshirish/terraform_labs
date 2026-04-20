data "aws_ami" "amazon-linux-3" {
  most_recent = true
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  owners = ["137112412989"] # Amazon
}

resource "aws_instance" "myfirstvm" {
  ami           = data.aws_ami.amazon-linux-3.id
  instance_type = var.instance_type
  count         = var.instance_count
}

resource "aws_s3_bucket" "mytfbucketshirish" {
  bucket = var.bucket_name
}

resource "aws_vpc" "mytfvpc" {
  cidr_block = var.vpc_cidr
}