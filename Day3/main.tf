resource "aws_instance" "database1" {
    
    ami =   "ami-08ef734d61e595df4"
    instance_type = "t2.micro"
    iam_instance_profile = "ec2-admin"
    tags={
        Name="C2WITHIAMROLE"
    }
}

