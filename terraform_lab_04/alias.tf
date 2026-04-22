provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  alias  = "us"
  region = "us-east-1"
}

resource "aws_instance" "india_ec2" {
  #provider = aws.mumbai

  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"

  tags = {
    Name = "india_instance"
  }
}

resource "aws_instance" "us_ec2" {
  provider = aws.us

  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"

  tags = {
    Name = "us-instance"
  }
}