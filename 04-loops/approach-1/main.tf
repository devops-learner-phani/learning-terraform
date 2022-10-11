variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count          = var.no-of-instances
  ami            = "ami-0408d6aa07d74894b"
  instance_type  = "t3.micro"

  tags = {
    Name = "terraform"
  }
}
