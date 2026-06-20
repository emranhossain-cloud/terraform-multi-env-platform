output "stage_vpc_id" {
  description = "ID of the stage VPC"
  value       = module.network.vpc_id
}

output "stage_public_subnet_ids" {
  description = "IDs of the stage public subnets"
  value       = module.network.public_subnet_ids
}

output "stage_security_group_id" {
  description = "ID of the stage security group"
  value       = module.security_group.security_group_id
}

output "stage_app_bucket_name" {
  description = "Name of the stage application S3 bucket"
  value       = module.storage.bucket_name
}
