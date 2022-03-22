resource "aws_subnet" "omada_vpc_Subnet" {
  vpc_id                  = aws_vpc.omada_vpc.id
  cidr_block              = var.subnet_CIDRblock
  map_public_ip_on_launch = true
  availability_zone       = var.availability_Zone
  tags = {
    Name = "Omada VPC Subnet"
  }
}
