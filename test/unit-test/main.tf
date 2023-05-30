module "iam" {
  source = "../../"

  aws_account_name    = "test-account"
  circleci_secret_arn = "arn"
}
