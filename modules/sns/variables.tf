variable "name" {
  type        = string
  default     = null
  description = "The friendly name for the SNS topic. By default generated by Terraform."
}

variable "content_based_deduplication" {
  type        = bool
  default     = false
  description = "Enables content-based deduplication for FIFO topics. For more information, see the related documentation"
}

variable "policy" {
  type        = string
  default     = null
  description = "Policy for SNS"
}

variable "fifo_topic" {
  type        = bool
  default     = false
  description = "(Optional) Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false)."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = ""
}
