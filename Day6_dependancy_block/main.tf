provider "aws" {
  
}

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
#   depends_on = [ aws_s3_bucket.name ]
}

resource "aws_s3_bucket" "name" {
  bucket = "saketham"
#   lifecycle {
#     prevent_destroy = true
#   }
}