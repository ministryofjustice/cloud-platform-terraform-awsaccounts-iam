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
| <a name="module_iam_user_jackstockley"></a> [iam\_user\_jackstockley](#module\_iam\_user\_jackstockley) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jakemulley"></a> [iam\_user\_jakemulley](#module\_iam\_user\_jakemulley) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jaskaransarkaria"></a> [iam\_user\_jaskaransarkaria](#module\_iam\_user\_jaskaransarkaria) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_paulwyborn"></a> [iam\_user\_paulwyborn](#module\_iam\_user\_paulwyborn) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_poornimakrishnasamy"></a> [iam\_user\_poornimakrishnasamy](#module\_iam\_user\_poornimakrishnasamy) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_sablumiah"></a> [iam\_user\_sablumiah](#module\_iam\_user\_sablumiah) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_stevewilliams"></a> [iam\_user\_stevewilliams](#module\_iam\_user\_stevewilliams) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
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

## Outputs

No outputs.

<!--- END_TF_DOCS --->
