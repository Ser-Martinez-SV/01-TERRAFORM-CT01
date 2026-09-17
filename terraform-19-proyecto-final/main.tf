provider "aws" {
  region = var.region
}
resource "aws_vpc" "vpc_proyecto" {
  cidr_block = var.vpc_cidr
}
resource "aws_subnet" "subnet_a" {
  vpc_id     = aws_vpc.vpc_proyecto.id
  cidr_block = var.subnet_publica_cidr
}

resource "aws_subnet" "subnet_b" {
  vpc_id     = aws_vpc.vpc_proyecto.id
  cidr_block = var.subnet_privada_cidr
}

resource "aws_security_group" "web_sg" {
  name   = "terraform-web-sg"
  vpc_id = aws_vpc.vpc_proyecto.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_instance" "servidor" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.subnet_a.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
}

resource "aws_s3_bucket" "bucket_proyecto" {
  bucket = "mibucketparaelproyecto109474"
}