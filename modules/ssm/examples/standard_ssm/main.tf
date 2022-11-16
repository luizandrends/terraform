module "ssm" {
  source = "../../"

  name          = "standard_ssm"
  secret_string = "standard_ssm"

  tags = {
    "ManagedBy" = "Terraform"
  }
}
