variable "name" {
  type        = string
  default     = ""
  description = "The name of the bucket. If omitted, Terraform will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. A full list of bucket naming rules may be found here"
}

variable "acl" {
  type        = string
  default     = ""
  description = "The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Defaults to private. Conflicts with grant. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_acl instead."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "A map of tags to assign to the bucket. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
}

variable "versioning_enabled" {
  type        = string
  default     = "Disabled"
  description = "The versioning state of the bucket. Valid values: Enabled, Suspended, or Disabled. Disabled should only be used when creating or importing resources that correspond to unversioned S3 buckets."
}

variable "create_policy" {
  type = bool
  default = false
  description = "Policy creation"
}

variable "policy" {
  type        = string
  default     = ""
  description = "The text of the policy. Although this is a bucket policy rather than an IAM policy, the aws_iam_policy_document data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size."
}
