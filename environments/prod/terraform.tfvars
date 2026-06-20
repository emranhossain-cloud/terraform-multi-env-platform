aws_region   = "us-west-2"
project_name = "terraform-multi-env-platform"
environment  = "prod"

vpc_cidr = "10.30.0.0/16"

public_subnet_cidrs = [
  "10.30.1.0/24",
  "10.30.2.0/24"
]

availability_zones = [
  "us-west-2a",
  "us-west-2b"
]

security_group_name        = "app-sg"
security_group_description = "Security group for production application resources"

ingress_rules = [
  {
    description = "Allow HTTP from internet for production"
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr_ipv4   = "0.0.0.0/0"
  }
]

egress_rules = [
  {
    description = "Allow all outbound traffic"
    from_port   = -1
    to_port     = -1
    ip_protocol = "-1"
    cidr_ipv4   = "0.0.0.0/0"
  }
]

app_bucket_name   = "emran-prod-app-bucket-2026"
versioning_status = "Enabled"
