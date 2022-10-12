module "ec2" {
  for_each       = var.instances
  source         = "./modules"
  instance_count = each.value
  instance_type  = each.key
}

variable "instances" {
  default = {
    "t2.micro" = 2,
    "t3.micro" = 1
  }
}

