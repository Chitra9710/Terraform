# output.tf
output "vpc_id" {
  description = "The ID of the custom VPC"
  value       = aws_vpc.name
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.name.cidr_block
}

output "subnet_id" {
    description = "subnetid"
    value = aws_subnet.name
    
  }