output "id" {
  value       = aws_sqs_queue.this.*.id
  description = "SQS ID"
}

output "arn" {
  value       = aws_sqs_queue.this.*.arn
  description = "SQS ARN"
}

output "url" {
  value       = aws_sqs_queue.this.*.url
  description = "SQS URL"
}

output "redrive_policy" {
  value       = aws_sqs_queue.this.*.redrive_policy
  description = "SQS Redrive Policy"
}