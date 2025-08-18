# Provider Configuration
provider "aws" {
region = "us-east-1"
}

# RDS Subnet Group
resource "aws_db_subnet_group" "name" {
name = "default-subnet-group"
subnet_ids = ["subnet-0ed96d63a65e5be11", "subnet-0931940be3f981233"]

tags = {
Name = "default-subnet-group"
}
}

# Security Group for RDS
resource "aws_security_group" "rds" {
name = "rds-security-group"
description = "Allow database access"
vpc_id = "vpc-04d235c9d391a6497"

ingress {
from_port = 3306
to_port = 3306
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}

# RDS Instance
resource "aws_db_instance" "example" {
identifier = "terra-db"
allocated_storage = 20
storage_type = "gp2"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t3.micro"
username = "admin"
password = "saketham"
db_subnet_group_name = aws_db_subnet_group.name.name
vpc_security_group_ids = [aws_security_group.rds.id]
publicly_accessible = false
backup_retention_period = 7
skip_final_snapshot = true

tags = {
Name = "terra-db"
}
}

resource "aws_db_instance" "read_replica" {
  replicate_source_db = "terra-db"
  instance_class      = "db.t3.micro"
  engine              = "mysql"

  publicly_accessible   = false
  skip_final_snapshot   = true
  vpc_security_group_ids = [aws_security_group.rds.id]

  tags = {
    Name = "terraform-rds-read-replica"
  }
}
