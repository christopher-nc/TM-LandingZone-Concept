variable "account_id" {
  description = "AWS Account ID to deploy the IAM role"
  type        = string
}

variable "assume_role_name" {
  description = "Name of the role to assume in the target account"
  type        = string
}