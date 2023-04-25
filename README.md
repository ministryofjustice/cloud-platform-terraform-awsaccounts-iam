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

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_account"></a> [iam\_account](#module\_iam\_account) | terraform-aws-modules/iam/aws//modules/iam-account | ~> 4.24 |
| <a name="module_iam_group_admins_with_policies"></a> [iam\_group\_admins\_with\_policies](#module\_iam\_group\_admins\_with\_policies) | terraform-aws-modules/iam/aws//modules/iam-group-with-policies | ~> 4.24 |
| <a name="module_iam_user_jackstockley"></a> [iam\_user\_jackstockley](#module\_iam\_user\_jackstockley) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jakemulley"></a> [iam\_user\_jakemulley](#module\_iam\_user\_jakemulley) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jaskaransarkaria"></a> [iam\_user\_jaskaransarkaria](#module\_iam\_user\_jaskaransarkaria) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_jasonbirchall"></a> [iam\_user\_jasonbirchall](#module\_iam\_user\_jasonbirchall) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_paulwyborn"></a> [iam\_user\_paulwyborn](#module\_iam\_user\_paulwyborn) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_poornimakrishnasamy"></a> [iam\_user\_poornimakrishnasamy](#module\_iam\_user\_poornimakrishnasamy) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_sablumiah"></a> [iam\_user\_sablumiah](#module\_iam\_user\_sablumiah) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_stevewilliams"></a> [iam\_user\_stevewilliams](#module\_iam\_user\_stevewilliams) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_tomsmith"></a> [iam\_user\_tomsmith](#module\_iam\_user\_tomsmith) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |
| <a name="module_iam_user_vijay_veeranki"></a> [iam\_user\_vijay\_veeranki](#module\_iam\_user\_vijay\_veeranki) | terraform-aws-modules/iam/aws//modules/iam-user | 4.17.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_account_name"></a> [aws\_account\_name](#input\_aws\_account\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.

<!--- END_TF_DOCS --->
