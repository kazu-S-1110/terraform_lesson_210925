// providerは別ファイルに記載。
terraform {
  required_version = "0.13.6"
  backend "s3" {
    bucket = "terraform-kaz-210925-tfstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}


