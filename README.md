# cloud-platform-terraform-awsaccounts-iam

Terraform module which holds Cloud Platform team IAM configuration for AWS Accounts. This module configures:

- Account password policies
- Administrator groups
- Team member IAM user accounts
- OIDC providers for general usage (e.g. CircleCI, GitHub Actions)

## Usage

```hcl
module "iam" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-awsaccounts-iam?ref=0.0.1"

  aws_account_name = "cloud-platform-ephemeral-test"
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.2.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.2.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 4.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_account"></a> [iam\_account](#module\_iam\_account) | terraform-aws-modules/iam/aws//modules/iam-account | ~> 4.24 |
| <a name="module_iam_group_admins_with_policies"></a> [iam\_group\_admins\_with\_policies](#module\_iam\_group\_admins\_with\_policies) | terraform-aws-modules/iam/aws//modules/iam-group-with-policies | ~> 4.24 |
| <a name="module_iam_user_davidelliott"></a> [iam\_user\_davidelliott](#module\_iam\_user\_davidelliott) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_emma_terry"></a> [iam\_user\_emma\_terry](#module\_iam\_user\_emma\_terry) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_folarin_oyenuga"></a> [iam\_user\_folarin\_oyenuga](#module\_iam\_user\_folarin\_oyenuga) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jackstockley"></a> [iam\_user\_jackstockley](#module\_iam\_user\_jackstockley) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jaskaransarkaria"></a> [iam\_user\_jaskaransarkaria](#module\_iam\_user\_jaskaransarkaria) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_kytruong"></a> [iam\_user\_kytruong](#module\_iam\_user\_kytruong) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_mikebell"></a> [iam\_user\_mikebell](#module\_iam\_user\_mikebell) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_sablumiah"></a> [iam\_user\_sablumiah](#module\_iam\_user\_sablumiah) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_stevewilliams"></a> [iam\_user\_stevewilliams](#module\_iam\_user\_stevewilliams) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_tariq_mahmood"></a> [iam\_user\_tariq\_mahmood](#module\_iam\_user\_tariq\_mahmood) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_tim_cheung"></a> [iam\_user\_tim\_cheung](#module\_iam\_user\_tim\_cheung) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_tomsmith"></a> [iam\_user\_tomsmith](#module\_iam\_user\_tomsmith) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.oidc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [tls_certificate.oidc](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `string` | n/a | yes |
| <a name="input_circleci_organisation_id"></a> [circleci\_organisation\_id](#input\_circleci\_organisation\_id) | CircleCI organisation ID for OIDC | `string` | n/a | yes |

## Outputs

No outputs.

<!--- END_TF_DOCS --->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.2.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.2.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 4.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_account"></a> [iam\_account](#module\_iam\_account) | terraform-aws-modules/iam/aws//modules/iam-account | ~> 4.24 |
| <a name="module_iam_group_admins_with_policies"></a> [iam\_group\_admins\_with\_policies](#module\_iam\_group\_admins\_with\_policies) | terraform-aws-modules/iam/aws//modules/iam-group-with-policies | ~> 4.24 |
| <a name="module_iam_user_david_sibley"></a> [iam\_user\_david\_sibley](#module\_iam\_user\_david\_sibley) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_davidelliott"></a> [iam\_user\_davidelliott](#module\_iam\_user\_davidelliott) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_emma_terry"></a> [iam\_user\_emma\_terry](#module\_iam\_user\_emma\_terry) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_folarin_oyenuga"></a> [iam\_user\_folarin\_oyenuga](#module\_iam\_user\_folarin\_oyenuga) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jackstockley"></a> [iam\_user\_jackstockley](#module\_iam\_user\_jackstockley) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jaskaransarkaria"></a> [iam\_user\_jaskaransarkaria](#module\_iam\_user\_jaskaransarkaria) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_kytruong"></a> [iam\_user\_kytruong](#module\_iam\_user\_kytruong) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_mikebell"></a> [iam\_user\_mikebell](#module\_iam\_user\_mikebell) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_sablumiah"></a> [iam\_user\_sablumiah](#module\_iam\_user\_sablumiah) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_stevewilliams"></a> [iam\_user\_stevewilliams](#module\_iam\_user\_stevewilliams) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_tariq_mahmood"></a> [iam\_user\_tariq\_mahmood](#module\_iam\_user\_tariq\_mahmood) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_tim_cheung"></a> [iam\_user\_tim\_cheung](#module\_iam\_user\_tim\_cheung) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_tomsmith"></a> [iam\_user\_tomsmith](#module\_iam\_user\_tomsmith) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_wajid_farid"></a> [iam\_user\_wajid\_farid](#module\_iam\_user\_wajid\_farid) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_zuri-guardiola"></a> [iam\_user\_zuri-guardiola](#module\_iam\_user\_zuri-guardiola) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.oidc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [tls_certificate.oidc](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/data-sources/certificate) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `string` | n/a | yes |
| <a name="input_circleci_organisation_id"></a> [circleci\_organisation\_id](#input\_circleci\_organisation\_id) | CircleCI organisation ID for OIDC | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->