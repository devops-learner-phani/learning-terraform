module "sg" {
  source = "./security-group"
}

module "instance" {
  source = "./ec2-instances"
  SGID   = module.sg.SGID
}

terraform {
  backend "s3" {
    bucket = "terraform-storages"
    key    = "ec2-instances/terraform.tfstate"
    region = "us-east-1"
  }
}


