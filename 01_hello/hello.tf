variable "who" {
  default = "Sailor"
}

output "greeting" {
  value = "Hello, ${var.who}!"
}
