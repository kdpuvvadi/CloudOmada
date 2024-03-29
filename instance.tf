data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "omada_instance" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_size
  subnet_id                   = aws_subnet.omada_vpc_Subnet.id
  associate_public_ip_address = true
  key_name                    = aws_key_pair.omada_key.key_name
  vpc_security_group_ids      = [aws_security_group.Omada_Security_Group.id]

  root_block_device {
    delete_on_termination = true
    volume_size           = 50
    volume_type           = "gp2"
  }
}

resource "aws_key_pair" "omada_key" {
  key_name   = "omada"
  public_key = file("~/.ssh/id_rsa.pub")
}
