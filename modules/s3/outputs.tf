output "id" {
  value       = aws_s3_bucket.this.*.id
  description = "Bucket ID."
}

output "arn" {
  value       = aws_s3_bucket.this.*.arn
  description = "Bucket ARN."
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.this.*.bucket_domain_name
  description = "Bucket Domain name."
}

output "hosted_zone_id" {
  value       = aws_s3_bucket.this.*.hosted_zone_id
  description = "Route 53 Hosted Zone ID for this bucket's region."
}

output "region" {
  value       = aws_s3_bucket.this.*.region
  description = "The AWS region this bucket resides in."
}

output "website_endpoint" {
  value       = aws_s3_bucket.this.*.website_endpoint
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
}

output "website_domain" {
  value       = aws_s3_bucket.this.*.website_domain
  description = "The domain of the website endpoint, if the bucket is configured with a website."
}
