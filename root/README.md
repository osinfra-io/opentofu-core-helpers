# Terraform Documentation

> A child module automatically inherits default (un-aliased) provider configurations from its parent. The provider versions below are informational only and do **not** need to align with the provider configurations from its parent.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | The cost center the resources will be billed to, must start with 'x' followed by three or four digits | `string` | n/a | yes |
| <a name="input_data_classification"></a> [data\_classification](#input\_data\_classification) | The data classification of the resources can be public, internal, or confidential | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | The repository name containing only lowercase alphanumeric characters or hyphens | `string` | n/a | yes |
| <a name="input_team"></a> [team](#input\_team) | The team name (should contain only lowercase alphanumeric characters and hyphens) | `string` | n/a | yes |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | This is used for tests to set the workspace name. Do not set this variable in any other context | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cost_center"></a> [cost\_center](#output\_cost\_center) | The cost center the resources will be billed to |
| <a name="output_data_classification"></a> [data\_classification](#output\_data\_classification) | The data classification of the resources |
| <a name="output_env"></a> [env](#output\_env) | The short name for the environment for example prod, nonprod, sb |
| <a name="output_environment"></a> [environment](#output\_environment) | The environment name for example production, non-production, sandbox |
| <a name="output_labels"></a> [labels](#output\_labels) | A map of labels to apply to resources |
| <a name="output_region"></a> [region](#output\_region) | The region where resources will be deployed |
| <a name="output_repository"></a> [repository](#output\_repository) | The repository name |
| <a name="output_team"></a> [team](#output\_team) | The team name |
| <a name="output_zone"></a> [zone](#output\_zone) | The zone where resources will be deployed |
<!-- END_TF_DOCS -->
