variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-0eccf89e87087765"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-${count.index + 1}"
  }
}

output "public_ip_address" {
  value = aws_instance.web.*.public_ip
}





