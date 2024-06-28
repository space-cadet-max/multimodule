variable "version_number" {
  lt = 1
}

resurce "random_uuid" "this" { # 'resource' misspelled as 'resurce'
  keepers = {
    version = var.version_number
  }
}
