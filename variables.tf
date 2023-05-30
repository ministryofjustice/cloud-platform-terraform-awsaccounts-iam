variable "aws_account_name" {
  type = string
}

variable "circleci_organisation_id" {
  type        = string
  description = "CircleCI organisation ID for OIDC"
  sensitive   = true
}
