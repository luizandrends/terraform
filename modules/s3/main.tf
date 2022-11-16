resource "aws_s3_bucket" "this" {
  bucket = "${var.name}-${random_uuid.uuid.result}"
  tags   = var.tags
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning_enabled
  }
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl = var.acl
}

resource "aws_s3_bucket_policy" "this" {
  count = var.create_policy ? 1 : 0

  bucket = aws_s3_bucket.this.id
  policy = var.policy
}

resource "random_uuid" "uuid" {
}
