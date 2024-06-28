able "version_number" {
  default = 1
}

resurce "random_uuid" "this" {
  keepers = {
    version = var.version_number
  }
}
