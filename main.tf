module "iam_account" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-account"
  version = "~> 6.2"

  account_alias = var.aws_account_name

  minimum_password_length = 12
}

# Cloud Platform team members
module "iam_group_admins_with_policies" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "~> 6.2"

  name = "admins"

  group_users = [
    module.iam_user_jackstockley.iam_user_name,
    module.iam_user_sablumiah.iam_user_name,
    module.iam_user_stevewilliams.iam_user_name,
    module.iam_user_tomsmith.iam_user_name,
    module.iam_user_kytruong.iam_user_name,
    module.iam_user_davidelliott.iam_user_name,
    module.iam_user_mikebell.iam_user_name,
    module.iam_user_tariq_mahmood.iam_user_name,
    module.iam_user_tim_cheung.iam_user_name,
    module.iam_user_folarin_oyenuga.iam_user_name,
    module.iam_user_emma_terry.iam_user_name,
    module.iam_user_david_sibley.iam_user_name,
    module.iam_user_wajid_farid.iam_user_name,
    module.iam_user_zuri_guardiola.iam_user_name
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]
}


module "iam_user_sablumiah" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "SabluMiah"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_jackstockley" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "JackStockley"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_stevewilliams" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "SteveWilliams"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_tomsmith" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "TomSmith"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_kytruong" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "KyTruong"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_davidelliott" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "DavidElliott"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_mikebell" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "MikeBell"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_tariq_mahmood" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "TariqMahmood"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_tim_cheung" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "TimCheung"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_folarin_oyenuga" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "FolarinOyenuga"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_emma_terry" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "EmmaTerry"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_david_sibley" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "DavidSibley"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_wajid_farid" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "WajidFarid"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_user_zuri_guardiola" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.2.0"

  name                          = "ZuriGuardiola"
  force_destroy                 = true
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

############################
# OpenID Connect providers #
############################
locals {
  oidc_providers = {
    # See https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services#adding-the-identity-provider-to-aws
    github = {
      url = "https://token.actions.githubusercontent.com",
      aud = ["sts.amazonaws.com"]
    }
    # See https://circleci.com/docs/openid-connect-tokens/#format-of-the-openid-connect-id-token
    circleci = {
      url = "https://oidc.circleci.com/org/${var.circleci_organisation_id}"
      aud = [var.circleci_organisation_id]
    }
  }
}

data "tls_certificate" "oidc" {
  for_each = toset(keys(local.oidc_providers))

  url = "${local.oidc_providers[each.key].url}/.well-known/openid-configuration"
}

resource "aws_iam_openid_connect_provider" "oidc" {
  for_each = toset(keys(local.oidc_providers))

  url             = local.oidc_providers[each.key].url
  client_id_list  = local.oidc_providers[each.key].aud
  thumbprint_list = data.tls_certificate.oidc[each.key].certificates[*].sha1_fingerprint
}
