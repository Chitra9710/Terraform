provider "aws" {
  
}

module "test" {
  source = "../Day7_Module_Source"
  ami-id = "ami-08ef734d61e595df4"
type = "t2.micro"
tags = "testec2"
}