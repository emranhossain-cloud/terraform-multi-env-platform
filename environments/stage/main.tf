provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "../../modules/network"

  project_name        = var.project_name
  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
}

module "security_group" {
  source = "../../modules/security-group"

  project_name               = var.project_name
  environment                = var.environment
  vpc_id                     = module.network.vpc_id
  security_group_name        = var.security_group_name
  security_group_description = var.security_group_description
  ingress_rules              = var.ingress_rules
  egress_rules               = var.egress_rules
}

module "storage" {
  source = "../../modules/storage"

  project_name      = var.project_name
  environment       = var.environment
  bucket_name       = var.app_bucket_name
  versioning_status = var.versioning_status
}
