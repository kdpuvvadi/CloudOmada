resource "aws_security_group" "Omada_Security_Group" {
  vpc_id      = aws_vpc.omada_vpc.id
  name        = "Omada Security Group"
  description = "Omada Security Group"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name        = "omada Security Group"
    Description = "omada Security Group"
  }
}
