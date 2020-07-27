## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zone | n/a | `string` | n/a | yes |
| map\_public\_ip | n/a | `bool` | `false` | no |
| name | n/a | `string` | n/a | yes |
| submnet\_name\_suffix | n/a | `string` | n/a | yes |
| subnet\_cidr | n/a | `string` | `"192.168.1.0/24"` | no |
| tag\_tier | n/a | `string` | n/a | yes |
| tags | Extra tags to attach to resources | `map(string)` | `{}` | no |
| vpc\_id | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| subnet\_id | n/a |

