variable "a" {
  default = 100
}

output "a" {
  value = var.a
}

output "x" {
  value = "value of a = ${var.a}"
}