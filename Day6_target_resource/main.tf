provider "aws" {
  
}

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/18"

}


resource "aws_internet_gateway" "name" {
  vpc_id = aws_vpc.name.id

}

#command terraform apply --target=aws_s3_bucket.name
