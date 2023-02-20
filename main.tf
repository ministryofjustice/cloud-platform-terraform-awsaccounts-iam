module "iam_account" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-account"
  version = "~> 4.24"

  account_alias = var.aws_account_name

  minimum_password_length = 12
}

# CP Team
module "iam_group_admins_with_policies" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "~> 4.24"

  name = "admins"

  group_users = [
    module.iam_user_vijay_veeranki.iam_user_name,
    module.iam_user_poornimakrishnasamy.iam_user_name,
    module.iam_user_paulwyborn.iam_user_name,
    module.iam_user_sablumiah.iam_user_name,
    module.iam_user_jasonbirchall.iam_user_name,
    module.iam_user_jackstockley.iam_user_name,
    module.iam_user_stevewilliams.iam_user_name,
    module.iam_user_jakemulley.iam_user_name
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]
}

module "iam_user_vijay_veeranki" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "VijayVeeranki"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_poornimakrishnasamy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "PoornimaKrishnasamy"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}
module "iam_user_paulwyborn" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "paulwyborn"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_sablumiah" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "SabluMiah"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_jasonbirchall" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "jasonBirchall"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_jackstockley" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "JackStockley"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_stevewilliams" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "SteveWilliams"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_jakemulley" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "JakeMulley"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}
module "iam_user_jaskaransarkaria" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "4.17.1"

  name                          = "JaskaranSarkaria"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}
