variable "ami-id" {
  description = "create ec2 from ami"
  type = string
  default = ""

}

variable "type" {
    type=string
    default = ""
  
}


variable "tags" {
    type=string
    default = ""
  
}