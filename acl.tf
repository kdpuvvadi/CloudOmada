resource "aws_network_acl" "Omada_VPC_Security_ACL" {
  vpc_id     = aws_vpc.omada_vpc.id
  # subnet_ids = [aws_subnet.omada_vpc_Subnet.id]

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  # ingress {
  #   protocol   = "tcp"
  #   rule_no    = 200
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 8088
  #   to_port    = 8088
  # }

  # ingress {
  #   protocol   = "tcp"
  #   rule_no    = 300
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 8043
  #   to_port    = 8043
  # }

  # ingress {
  #   protocol   = "tcp"
  #   rule_no    = 400
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 27001
  #   to_port    = 27002
  # }

  # ingress {
  #   protocol   = "tcp"
  #   rule_no    = 500
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 29810
  #   to_port    = 29814
  # }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  # egress {
  #   protocol   = "tcp"
  #   rule_no    = 200
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 8088
  #   to_port    = 8088
  # }


  # egress {
  #   protocol   = "tcp"
  #   rule_no    = 300
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 8043
  #   to_port    = 8043
  # }

  # egress {
  #   protocol   = "tcp"
  #   rule_no    = 400
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 27001
  #   to_port    = 27002
  # }

  # egress {
  #   protocol   = "tcp"
  #   rule_no    = 500
  #   action     = "allow"
  #   cidr_block = "0.0.0.0/0"
  #   from_port  = 29810
  #   to_port    = 29814
  # }

  tags = {
    Name = "Omada VPC ACL"
  }
}
