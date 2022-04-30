terraform {
  backend "s3" {
    bucket = "george-rodrigues-bucket-terraform-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
