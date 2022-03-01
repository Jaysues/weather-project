terraform {
  required_version = ">= 0.13.0"
  backend "s3" {
    bucket = "jaysues-pathways-dojo"
    key    = "jaysues-tfstate-main"
    region = "us-east-1"
  }
}