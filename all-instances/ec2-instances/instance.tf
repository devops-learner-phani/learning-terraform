resource "aws_instance" "web" {
  ami                    = "ami-0408d6aa07d74894b"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "terraform"
  }
}