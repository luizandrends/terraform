resource "aws_secretsmanager_secret" "this" {
  name        = var.name
  description = var.description

  recovery_window_in_days = 0

  tags = var.tags
}

resource "aws_secretsmanager_secret_policy" "this" {
  count      = var.policy != null ? 1 : 0
  secret_arn = aws_secretsmanager_secret.this.arn
  policy     = var.policy
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = var.secret_string
}
