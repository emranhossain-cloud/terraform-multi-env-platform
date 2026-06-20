variable "aws_region" {
  description = "AWS region for the prod environment"
  type        = string
}

variable "project_name" {
  description = "Project name used for tagging resources"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the prod VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for prod public subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones for prod public subnets"
  type        = list(string)
}

variable "security_group_name" {
  description = "Name of the prod security group"
  type        = string
}

variable "security_group_description" {
  description = "Description of the prod security group"
  type        = string
}

variable "ingress_rules" {
  description = "Inbound rules for the prod security group"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    ip_protocol = string
    cidr_ipv4   = string
  }))
}

variable "egress_rules" {
  description = "Outbound rules for the prod security group"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    ip_protocol = string
    cidr_ipv4   = string
  }))
}

variable "app_bucket_name" {
  description = "S3 application bucket name for prod"
  type        = string
}

variable "versioning_status" {
  description = "S3 bucket versioning status"
  type        = string
}
