terraform {
  required_version = "0.13.6"
  /*  backend "s3" {
    bucket = "terraform-kaz-210925-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }*/
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-kaz-210925-tfstate"
  versioning {
    enabled = true
  }
}
