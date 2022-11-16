
module "s3" {
  source = "../../"

  name               = "policy-bucket"
  acl                = "private"
  versioning_enabled = "Enabled"

  create_policy = true
  policy        = file("./files/policy.json")

  tags = {
    "ManagedBy" : "Terraform"
  }
}
