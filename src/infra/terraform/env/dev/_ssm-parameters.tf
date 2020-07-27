module "db_host" {
  source = "../../modules/ssm-parameter"

  name        = "WORDPRESS_DB_HOST"
  description = "Database Host Paramater"
  type        = "SecureString"
  value       = "  "
}

module "db_name" {
  source = "../../modules/ssm-parameter"

  name        = "WORDPRESS_DB_NAME"
  description = "Database Name Paramater"
  type        = "SecureString"
  value       = "  "
}

module "db_user" {
  source = "../../modules/ssm-parameter"

  name        = "WORDPRESS_DB_USER"
  description = "Database User Paramater"
  type        = "SecureString"
  value       = " "
}

module "db_password" {
  source = "../../modules/ssm-parameter"

  name        = "WORDPRESS_DB_PASSWORD"
  description = "Database Password Paramater"
  type        = "SecureString"
  value       = " "
}