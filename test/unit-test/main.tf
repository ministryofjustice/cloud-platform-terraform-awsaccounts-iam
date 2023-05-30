module "iam" {
  source = "../../"

  aws_account_name         = "test-account"
  circleci_organisation_id = "1234567"
}