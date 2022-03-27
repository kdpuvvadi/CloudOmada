resource "aws_route_table" "Omada_VPC_route_table" {
  vpc_id = aws_vpc.omada_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.omada_gateway.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.omada_gateway.id
  }

  tags = {
    Name = "Omada VPC Route Table"
  }
}

resource "aws_route_table_association" "omada_VPC_association" {
  subnet_id      = aws_subnet.omada_vpc_Subnet.id
  route_table_id = aws_route_table.Omada_VPC_route_table.id
}
