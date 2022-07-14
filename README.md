# cloud-platform-terraform-awsaccounts-iam

Terraform module which holds Cloud Platform team IAM configuration for AWS Accounts. This module configure:

- Account password policies
- Administrator groups
- User accounts

## Usage

```hcl
module "iam" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-awsaccounts-iam?ref=0.0.1"

  aws_account_name       = "cloud-platform-ephemeral-test"
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

No provider.

## Modules

| Name | Source | Version |
|------|--------|---------|
| iam_account | terraform-aws-modules/iam/aws//modules/iam-account | ~> 3.0 |
| iam_group_admins_with_policies | terraform-aws-modules/iam/aws//modules/iam-group-with-policies | ~> 3.0 |
| iam_user_jackstockley | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_jakemulley | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_jasonbirchall | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_kops | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_paulwyborn | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_poornimakrishnasamy | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_razvancosma | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_sablumiah | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_stevemarshall | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_stevewilliams | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |
| iam_user_vijay_veeranki | terraform-aws-modules/iam/aws//modules/iam-user | ~> 3.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_account\_name | n/a | `string` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->
