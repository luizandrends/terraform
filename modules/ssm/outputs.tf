output "id" {
  value       = aws_secretsmanager_secret.this.id
  description = "Secret ID."
}

output "arn" {
  value       = aws_secretsmanager_secret.this.arn
  description = "Secret ARN."
}
