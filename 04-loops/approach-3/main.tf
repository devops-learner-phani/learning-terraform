resource "aws_instance" "web" {
  ami            = "ami-0408d6aa07d74894b"
  instance_type  = var.instance_types[count.index]
  count          = length(var.instance_types)

  tags = {
    Name = "terraform-${count.index+1}"
  }
}

variable "instance_types" {
  default = ["t2.micro", "t3.small"]
}