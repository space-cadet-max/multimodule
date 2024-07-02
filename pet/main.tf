variable "version_number" {
  default = "0.1.9"
}

resurce "random_uuid" "this" {
  keepers = {
    version = var.version_number
  }
}
