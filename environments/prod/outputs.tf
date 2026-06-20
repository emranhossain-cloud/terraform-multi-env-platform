output "prod_vpc_id" {
  description = "ID of the prod VPC"
  value       = module.network.vpc_id
}

output "prod_public_subnet_ids" {
  description = "IDs of the prod public subnets"
  value       = module.network.public_subnet_ids
}

output "prod_security_group_id" {
  description = "ID of the prod security group"
  value       = module.security_group.security_group_id
}

output "prod_app_bucket_name" {
  description = "Name of the prod application S3 bucket"
  value       = module.storage.bucket_name
}
