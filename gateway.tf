resource "aws_internet_gateway" "omada_gateway" {
  vpc_id = aws_vpc.omada_vpc.id
  tags = {
    Name = "Omada Internet Gateway"
  }
}
