module "sqs" {
  source = "../../"

  name = "standard_queue"

  tags = {
    "ManagedBy" = "Terraform",
  }
}
