module "ssm" {
  source = "../../"

  name          = "policy_ssm"
  secret_string = "policy_ssm"

  policy = file("./files/policy.json")

  tags = {
    "ManagedBy" = "Terraform"
  }
}
