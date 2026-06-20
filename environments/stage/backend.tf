terraform {
  backend "s3" {
    bucket         = "emran-terraform-multi-env-state"
    key            = "stage/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-multi-env-locks"
    encrypt        = true
  }
}
