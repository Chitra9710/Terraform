resource "aws_vpc" "name" {
    cidr_block="10.0.0.0/16"
    tags = {
      Name = "satvpc"
    }
}

resource "aws_subnet" "name" {
  vpc_id = aws_vpc.name.id 
  cidr_block = "10.0.0.0/24"
  tags = {
    private_subnet="pri_sub"
  }
}

resource "aws_security_group" "security_group" {
  name = "security_group"

  dynamic "ingress" {
    for_each = [22, 80, 443, 8080, 9000, 3000]
    content {
      description = "inbound_rules"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "name" {
  
}