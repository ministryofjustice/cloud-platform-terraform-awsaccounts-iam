# cloud-platform-terraform-awsaccounts-iam

Terraform module which holds Cloud Platform team IAM configuration for AWS Accounts.

## Usage

```hcl
module "iam" {
  source = "github.com/ministryofjustice/cloud-platform-terraform-awsaccounts-iam?ref=0.0.1"

  aws_account_name       = "cloud-platform-ephemeral-test"
}

```
## Inputs

_Describe what to pass the module_
_example_:

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_account_name | The AWS Account's name | string |  | yes |


## Outputs
