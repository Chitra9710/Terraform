terraform {
  backend "s3" {
    bucket = "terrformbucketchitra"
    key="Day4_state_locking/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "test"
    encrypt = true
  }
}