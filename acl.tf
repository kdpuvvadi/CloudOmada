resource "aws_network_acl" "Omada_VPC_Security_ACL" {
  vpc_id     = aws_vpc.omada_vpc.id
  subnet_ids = [aws_subnet.omada_vpc_Subnet.id]

  ingress {
    from_port  = 0
    to_port    = 0
    rule_no    = 100
    action     = "allow"
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  }

  egress {
    from_port  = 0
    to_port    = 0
    rule_no    = 100
    action     = "allow"
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
    # ipv6_cidr_block = "::/0"
  }

  tags = {
    Name = "Omada VPC ACL"
  }
}
