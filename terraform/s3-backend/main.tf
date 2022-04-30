resource "aws_s3_bucket" "bucket" {

  bucket = "george-rodrigues-bucket-terraform-backend"

  tags = {
    Name        = "george-rodrigues-bucket-terraform-backend"
    Environment = "Dev"
    CreatedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "bucket-versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
