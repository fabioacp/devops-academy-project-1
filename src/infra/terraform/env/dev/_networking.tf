provider "aws" {
  region = "ap-southeast-2"
}

module "wordpress_vpc" {
  source = "../../modules/vpc"

  name = var.name
}

module "internet_gateway" {
  source = "../../modules/internet-gateway"

  vpc_id = module.wordpress_vpc.vpc_id
  name   = var.name
}

module "private_subnet_a" {
  source = "../../modules/subnet"

  vpc_id              = module.wordpress_vpc.vpc_id
  subnet_cidr         = var.pri_subnet_cidr_a
  availability_zone   = var.availability_zones[0]
  name                = var.tag_name_private_subnet_a
  tag_tier            = var.tag_name_private_tier
  submnet_name_suffix = "a"
}

module "private_subnet_b" {
  source = "../../modules/subnet"

  vpc_id              = module.wordpress_vpc.vpc_id
  subnet_cidr         = var.pri_subnet_cidr_b
  availability_zone   = var.availability_zones[1]
  name                = var.tag_name_private_subnet_b
  tag_tier            = var.tag_name_private_tier
  submnet_name_suffix = "b"
}

module "public_subnet_a" {
  source = "../../modules/subnet"

  vpc_id              = module.wordpress_vpc.vpc_id
  subnet_cidr         = var.pub_subnet_cidr_a
  availability_zone   = var.availability_zones[0]
  map_public_ip       = var.map_public_ip
  name                = var.tag_name_public_subnet_a
  tag_tier            = var.tag_name_public_tier
  submnet_name_suffix = "a"
}

module "public_subnet_b" {
  source = "../../modules/subnet"

  vpc_id              = module.wordpress_vpc.vpc_id
  subnet_cidr         = var.pub_subnet_cidr_b
  availability_zone   = var.availability_zones[1]
  map_public_ip       = var.map_public_ip
  name                = var.tag_name_public_subnet_b
  tag_tier            = var.tag_name_public_tier
  submnet_name_suffix = "b"
}