#resource "aws_instance" "myfirstvm" {
#  ami           = "ami-0f559c3642608c138"
#  instance_type = "t3.micro"
#  count         = 1
#}

resource "aws_s3_bucket" "mytfbucketshirish" {
  bucket = "mytfbucketshirish"

  tags = {
    name = "mytfbucketshirish"
  }
}
resource "aws_vpc" "mytfvpc" {
  cidr_block = "10.0.0.0/16"
}