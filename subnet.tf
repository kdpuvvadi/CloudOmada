resource "aws_subnet" "omada_vpc_Subnet" {
  vpc_id                  = aws_vpc.omada_vpc.id
  cidr_block              = var.subnet_CIDRblock
  map_public_ip_on_launch = true
  availability_zone       = var.availability_Zone
  tags = {
    Name = "Omada VPC Subnet"
  }
}

resource "aws_network_interface" "omada_network_interface" {
  subnet_id = aws_subnet.omada_vpc_Subnet.id
  # private_ips = [var.private_ip]

  tags = {
    Name = "omada primary network interface"
  }
}
