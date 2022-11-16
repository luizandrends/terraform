output "id" {
  value       = module.ssm.id
  description = "Secret ID."
}

output "arn" {
  value       = module.ssm.*.arn
  description = "Secret ARN"
}
