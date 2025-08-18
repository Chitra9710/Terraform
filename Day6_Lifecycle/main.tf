provider "aws" {
  
}

resource "aws_s3_bucket" "name" {
  bucket= "day6chitrabucket"

lifecycle {
  prevent_destroy = false
}
}

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/26"

lifecycle {
  create_before_destroy = true
}
}

