resource "aws_instance" "database1" {
    
    ami =   "ami-08ef734d61e595df4"
    instance_type = "t2.micro"
    iam_instance_profile = "ec2-admin"
    tags={
        Name="terraform2dev"
    }
}

resource "aws_vpc" "defvpc" {
    cidr_block="10.0.0.0/16"
    tags={
        Name="dev"
    }
}

