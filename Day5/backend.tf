terraform {
  backend "s3" {
    bucket = "terrformbucketchitra"
    key="Day5/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "test"
    encrypt = true
  }
}