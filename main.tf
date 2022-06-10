module "iam_account" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-account"
  version = "~> 3.0"

  account_alias = var.aws_account_name

  minimum_password_length = 12
}

# CP Team
module "iam_group_admins_with_policies" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "~> 3.0"

  name = "admins"

  group_users = [
    module.iam_user_vijay_veeranki.this_iam_user_name,
    module.iam_user_poornimakrishnasamy.this_iam_user_name,
    module.iam_user_paulwyborn.this_iam_user_name,
    module.iam_user_kops.this_iam_user_name,
    module.iam_user_sablumiah.this_iam_user_name,
    module.iam_user_jasonbirchall.this_iam_user_name,
    module.iam_user_stevemarshall.this_iam_user_name,
    module.iam_user_razvancosma.this_iam_user_name,
    module.iam_user_jackstockley.this_iam_user_name,
    module.iam_user_stevewilliams.this_iam_user_name,
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]
}

module "iam_user_vijay_veeranki" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "VijayVeeranki"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_poornimakrishnasamy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "PoornimaKrishnasamy"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}
module "iam_user_paulwyborn" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "paulwyborn"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_kops" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "kops"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_sablumiah" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "SabluMiah"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_jasonbirchall" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "jasonBirchall"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_stevemarshall" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "SteveMarshall"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}
  
module "iam_user_razvancosma" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "RazvanCosma"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_jackstockley" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "JackStockley"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_stevewilliams" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 3.0"

  name                          = "SteveWilliams"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}