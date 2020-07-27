module "container_registry" {
  source          = "../../modules/conteiner-registry"
  repository_name = "devops-wordpress"
}