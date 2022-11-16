variable "name" {
  type        = string
  default     = null
  description = "Secret name."
}

variable "description" {
  type        = string
  default     = null
  description = "Secret description."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Resource tags."
}

variable "policy" {
  type        = string
  default     = null
  description = "The JSON policy for the Secret."
}

variable "secret_string" {
  type        = string
  default     = null
  description = "Simple string to store on Secret."
}
