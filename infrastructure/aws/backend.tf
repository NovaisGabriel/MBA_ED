# Backend configuration require a AWS storage bucket.
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-gabriel"
    key    = "state/igti/edc/mod4/terraform.tfstate"
    region = "us-east-2"
  }
}
