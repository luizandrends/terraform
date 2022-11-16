resource "aws_sns_topic" "this" {
  name                        = var.name
  content_based_deduplication = var.content_based_deduplication
  policy                      = var.policy

  fifo_topic = var.fifo_topic

  tags = var.tags
}
