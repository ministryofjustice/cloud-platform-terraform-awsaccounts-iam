variable "aws_account_name" {
  type = string
}

variable "circleci_secret_arn" {
  type        = string
  description = "ARN for CircleCI secrets from Secrets Manager"
}
