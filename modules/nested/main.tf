variable "acl" {
  type = string
  default = "public-read"
}

resource "aws_s3_bucket" "b3" {
  bucket        = "b3"
  acl           = var.acl
  force_destroy = true
  tags = {
    Name        = "b"
  }
}
