variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment name such as dev, stage, or prod"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 application bucket"
  type        = string
}

variable "versioning_status" {
  description = "Versioning status for the S3 bucket"
  type        = string
  default     = "Enabled"
}
