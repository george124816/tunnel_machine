output "bucket_domain_name" {
  description = "Bucket domain name"
  value       = "Bucket domain name: ${aws_s3_bucket.bucket.bucket_domain_name}"
}
