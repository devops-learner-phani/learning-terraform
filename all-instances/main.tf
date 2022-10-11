module "sg" {
  source = "./security-group"
}

module "instance" {
  source = "./ec2-instances"
}

terraform {
  backend "s3" {
    bucket = "terraform-storages"
    key    = "all-instances/terraform.tfstate"
    region = "us-east-1"
  }
}