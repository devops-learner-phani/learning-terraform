resource "aws_instance" "web" {
  ami           = "ami-0408d6aa07d74894b"
  instance_type = local.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = null
}

locals {
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}