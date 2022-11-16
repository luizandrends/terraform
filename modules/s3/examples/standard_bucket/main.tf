
module "s3" {
  source = "../../"

  name               = "standard-bucket"
  acl                = "private"
  versioning_enabled = "Enabled"

  tags = {
    "ManagedBy" : "Terraform"
  }
}
