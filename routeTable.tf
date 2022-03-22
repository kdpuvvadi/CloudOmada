resource "aws_route_table" "Omada_VPC_route_table" {
  vpc_id = aws_vpc.omada_vpc.id
  tags = {
    Name = "Omada VPC Route Table"
  }
}

resource "aws_route" "omada_route" {
  route_table_id         = aws_route_table.Omada_VPC_route_table.id
  gateway_id             = aws_internet_gateway.omada_gateway.id
  destination_cidr_block = "0.0.0.0/10"
}

resource "aws_route_table_association" "omada_VPC_association" {
  subnet_id      = aws_subnet.omada_vpc_Subnet.id
  route_table_id = aws_route_table.Omada_VPC_route_table.id
}
