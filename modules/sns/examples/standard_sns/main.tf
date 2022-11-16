module "sns" {
  source = "../../"

  name = "fifo_sns"

  fifo_topic = false

  tags = {
    "ManagedBy" = "Terraform"
  }
}
