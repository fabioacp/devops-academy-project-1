## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| dns\_host\_names | n/a | `bool` | `true` | no |
| dns\_support | n/a | `bool` | `true` | no |
| instance\_tenancy | defult or dedicated | `list(string)` | <pre>[<br>  "default",<br>  "dedicated"<br>]</pre> | no |
| name | n/a | `string` | n/a | yes |
| tags | Extra tags to attach to resources | `map(string)` | `{}` | no |
| vpc\_cidr | VPC network | `string` | `"192.168.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_id | n/a |

