provider "aws"{
  
}

resource "aws_instance" "name" {
  ami="ami-08ef734d61e595df4"
  instance_type = "t2.nano"
  availability_zone = "us-east-1a"
  user_data = file("test.sh")
}
