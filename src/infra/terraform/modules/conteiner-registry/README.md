## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| common\_tags | common tags which will be merged with all resources created. | `map(string)` | <pre>{<br>  "deployed_by": "terraform",<br>  "devops_academy": "project1"<br>}</pre> | no |
| repository\_name | the name of the ECR repository to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ecr\_repository | attributes of the ecr repository created. |

