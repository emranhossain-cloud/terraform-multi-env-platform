output "dev_vpc_id" {
  description = "ID of the dev VPC"
  value       = module.network.vpc_id
}

output "dev_public_subnet_ids" {
  description = "IDs of the dev public subnets"
  value       = module.network.public_subnet_ids
}

output "dev_security_group_id" {
  description = "ID of the dev security group"
  value       = module.security_group.security_group_id
}

output "dev_app_bucket_name" {
  description = "Name of the dev application S3 bucket"
  value       = module.storage.bucket_name
}
