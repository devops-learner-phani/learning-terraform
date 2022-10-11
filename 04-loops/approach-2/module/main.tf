resource "aws_instance" "web" {
  ami            = "ami-0408d6aa07d74894b"
  instance_type  = "t2.micro"
  count          = 2

  tags = {
    Name = "terraform-${count.index+1}"
  }
}
