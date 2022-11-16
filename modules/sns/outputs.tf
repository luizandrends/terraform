output "id" {
  value       = aws_sns_topic.this.*.id
  description = "SQS ID"
}

output "arn" {
  value       = aws_sns_topic.this.*.arn
  description = "SQS ARN"
}
