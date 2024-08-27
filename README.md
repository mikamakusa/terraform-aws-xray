## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.64.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.64.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | ./modules/terraform-aws-kms | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_xray_encryption_config.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/xray_encryption_config) | resource |
| [aws_xray_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/xray_group) | resource |
| [aws_xray_sampling_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/xray_sampling_rule) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_default_tags.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/default_tags) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption_config"></a> [encryption\_config](#input\_encryption\_config) | n/a | <pre>list(object({<br>    id     = number<br>    type   = string<br>    key_id = optional(any)<br>  }))</pre> | `[]` | no |
| <a name="input_group"></a> [group](#input\_group) | n/a | <pre>list(object({<br>    id                = number<br>    filter_expression = string<br>    group_name        = string<br>    tags              = optional(map(string))<br>    insights_configuration = optional(list(object({<br>      insights_enabled      = bool<br>      notifications_enabled = optional(bool)<br>    })))<br>  }))</pre> | `[]` | no |
| <a name="input_kms_key"></a> [kms\_key](#input\_kms\_key) | n/a | `any` | n/a | yes |
| <a name="input_sampling_rule"></a> [sampling\_rule](#input\_sampling\_rule) | n/a | <pre>list(object({<br>    id             = number<br>    fixed_rate     = number<br>    host           = string<br>    http_method    = string<br>    priority       = number<br>    reservoir_size = number<br>    resource_arn   = string<br>    service_name   = string<br>    service_type   = string<br>    url_path       = string<br>    version        = number<br>    attributes     = optional(map(string))<br>    tags           = optional(map(string))<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_encryption_config_id"></a> [encryption\_config\_id](#output\_encryption\_config\_id) | n/a |
| <a name="output_encryption_config_key_id"></a> [encryption\_config\_key\_id](#output\_encryption\_config\_key\_id) | n/a |
| <a name="output_encryption_config_type"></a> [encryption\_config\_type](#output\_encryption\_config\_type) | n/a |
| <a name="output_group_arn"></a> [group\_arn](#output\_group\_arn) | n/a |
| <a name="output_group_id"></a> [group\_id](#output\_group\_id) | n/a |
| <a name="output_group_name"></a> [group\_name](#output\_group\_name) | n/a |
| <a name="output_sampling_rule_arn"></a> [sampling\_rule\_arn](#output\_sampling\_rule\_arn) | n/a |
| <a name="output_sampling_rule_fixed_rate"></a> [sampling\_rule\_fixed\_rate](#output\_sampling\_rule\_fixed\_rate) | n/a |
| <a name="output_sampling_rule_id"></a> [sampling\_rule\_id](#output\_sampling\_rule\_id) | n/a |
| <a name="output_sampling_rule_priority"></a> [sampling\_rule\_priority](#output\_sampling\_rule\_priority) | n/a |
| <a name="output_sampling_rule_tags"></a> [sampling\_rule\_tags](#output\_sampling\_rule\_tags) | n/a |
