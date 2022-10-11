variable "a" {
  default = 100
}

output "a" {
  value = var.a
}

output "x" {
  value = "value of a = ${var.a}"
}


variable "b" {}

variable "c" {}

variable "d" {}

output "values" {
  value = "Values, a = ${var.a}, b = ${var.b}, c = ${var.c}, d = ${var.d}"
}
