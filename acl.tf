resource "aws_network_acl" "Omada_VPC_Security_ACL" {
  vpc_id     = aws_vpc.omada_vpc.id
  subnet_ids = [aws_subnet.omada_vpc_Subnet.id]

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "Omada VPC ACL"
  }
}
