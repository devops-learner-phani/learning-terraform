resource "aws_instance" "web" {
  count          = var.instance_count
  ami            = "ami-0408d6aa07d74894b"
  instance_type  = var.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {}
variable "instance_count" {}



