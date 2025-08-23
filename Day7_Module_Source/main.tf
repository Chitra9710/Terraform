provider "aws" {
  
}

resource "aws_instance" "dev" {
  ami=var.ami-id
  instance_type=var.type
    tags= {
            name=var.tags
        }
}
