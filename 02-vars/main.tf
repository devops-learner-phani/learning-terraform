variable "a" {
  default = 100
}

output "a" {
  value = var.a
}

variable "b" {}

variable "c" {}

variable "d" {}

output "x" {
  value = "Value of a = ${var.a}"
}

output "values" {
  value = "Values, a = ${var.a}, b = ${var.b}, c = ${var.c}, d = ${var.d}"
}