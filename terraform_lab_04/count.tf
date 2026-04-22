variable "instance_count" {
  type    = number
  default = 2
}

resource "aws_instance" "tf_ec2" {
  count = var.instance_count

  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"

  tags = {
    Name = "tf_ec2-${count.index}"
  }
}