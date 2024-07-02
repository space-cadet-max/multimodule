variable "version_number" {
  default = "0.1.9"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-${var.version_number}"
  acl    = "private"
}

# Introduce a conflict by creating another bucket with the same name
resource "aws_s3_bucket" "example_conflict" {
  bucket = "example-bucket-${var.version_number}"
  acl    = "private"
}
