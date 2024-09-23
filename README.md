<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_aws_iam_policy.user_managed](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/aws_iam_policy) | resource |
| [kion_aws_iam_policy.all_policies](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/data-sources/aws_iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_iam_path"></a> [aws\_iam\_path](#input\_aws\_iam\_path) | The path for the IAM policy | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the IAM policy without file extension | `string` | `null` | no |
| <a name="input_filter_name"></a> [filter\_name](#input\_filter\_name) | The name of the field to filter by in the data source | `string` | `null` | no |
| <a name="input_filter_values"></a> [filter\_values](#input\_filter\_values) | The values of the field to filter by in the data source | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the IAM policy without file extension | `string` | n/a | yes |
| <a name="input_owner_user_groups"></a> [owner\_user\_groups](#input\_owner\_user\_groups) | Owner user groups for the IAM policy | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_owner_users"></a> [owner\_users](#input\_owner\_users) | Owner users for the IAM policy | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The IAM policy document | `string` | `null` | no |
| <a name="input_policy_template"></a> [policy\_template](#input\_policy\_template) | Path to the IAM policy template file | `string` | `null` | no |
| <a name="input_policy_type"></a> [policy\_type](#input\_policy\_type) | Type of the policy: user\_managed or system\_managed | `string` | `"user_managed"` | no |
| <a name="input_system_managed_policies"></a> [system\_managed\_policies](#input\_system\_managed\_policies) | List of all system-managed policies | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created IAM policy |
| <a name="output_policy_id"></a> [policy\_id](#output\_policy\_id) | The ID of the created IAM policy |
| <a name="output_policy_ids"></a> [policy\_ids](#output\_policy\_ids) | The IDs of all created IAM policies |
<!-- END_TF_DOCS -->