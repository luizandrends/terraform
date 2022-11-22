resource "aws_lb" "this" {
  name               = var.lb_name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = var.security_groups
  subnets            = var.subnets

  enable_deletion_protection = var.enable_deletion_protection

  dynamic "access_logs" {
    for_each = [var.access_logs]
    iterator = i

    content {
      bucket  = lookup(i.value, "s3_bucket_logs", null)
      prefix  = lookup(i.value, "prefix", null)
      enabled = lookup(i.value, "enabled", null)
    }
  }

  tags = var.tags
}

resource "aws_lb_target_group" "this" {
  name        = var.target_group_name
  target_type = var.target_type
  port        = var.port
  protocol    = var.protocol

  vpc_id = var.vpc_id

  tags = var.tags

  dynamic "health_check" {
    for_each = [var.health_check]
    iterator = i

    content {
      enabled  = lookup(i.value, "enabled", null)
      interval = lookup(i.value, "interval", null)
      protocol = lookup(i.value, "protocol", null)
      path     = lookup(i.value, "path", null)
      port     = lookup(i.value, "port", null)

      healthy_threshold   = lookup(i.value, "healthy_threshold", null)
      unhealthy_threshold = lookup(i.value, "u``nhealthy_threshold", null)
    }
  }

  depends_on = [
    aws_lb.this
  ]
}

resource "aws_lb_target_group_attachment" "this" {

  target_group_arn = aws_lb_target_group.this.arn
  target_id        = var.target_id
  port             = var.target_port

  depends_on = [
    aws_lb_target_group.this
  ]
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.loadbalancer_listner_port
  protocol          = var.loadbalancer_listner_protocol
  ssl_policy        = var.loadbalancer_listner_ssl_policy
  certificate_arn   = var.loadbalancer_listner_certificate_arn

  default_action {
    type             = var.default_action_type
    target_group_arn = aws_lb_target_group.this.arn
  }

  depends_on = [
    aws_lb.this,
    aws_lb_target_group.this,
    aws_lb_target_group_attachment.this
  ]
}
