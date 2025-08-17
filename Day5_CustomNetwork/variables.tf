
variable "ami-id" {
  description = "create ec2 from ami"
  type = string
  default = "ami-08ef734d61e595df4"

}

variable "type" {
    type=string
    default = "t2.micro"
  
}
 
 variable "Vpc_CIDR" {
  type=string
  default="10.0.0.0/16"

 }

 variable "subnet_CIDR" {
  type=string
  default="10.0.0.0/24"

 }