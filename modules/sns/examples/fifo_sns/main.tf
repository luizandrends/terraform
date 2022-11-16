module "sns" {
  source = "../../"

  name = "fifo_sns.fifo"

  fifo_topic = true

  tags = {
    "ManagedBy" = "Terraform"
  }
}
