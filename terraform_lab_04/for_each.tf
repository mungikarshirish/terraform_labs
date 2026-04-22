variable "instances" {
  type = map(string)
  default = {
    dev  = "t3.micro"
    qa   = "t3.micro"
    prod = "t3.micro"
  }
}


resource "aws_instance" "fe_tf_ec2" {
  for_each = var.instances

  ami           = "ami-0f559c3642608c138"
  instance_type = each.value

  tags = {
    Name = "e_tf_ec2-${each.key}"
    Env  = each.key
  }
}