# Multi-Environment Terraform Platform

This project demonstrates how companies manage separate dev, stage, and prod AWS environments using Terraform.

## Environments

- dev
- stage
- prod

## Core Concepts

- Terraform modules
- S3 remote backend
- DynamoDB state locking
- GitHub Actions CI/CD
- AWS OIDC authentication

## AWS Resources

Each environment will create:

- VPC
- Public subnets
- Route tables
- Security groups
- S3 application bucket
- IAM role/policy example
