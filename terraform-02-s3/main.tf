terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_aula" {
  bucket = "cambia-este-nombre-por-uno-unico-12456789"

  tags = {
    Name = "terraform-s3-aula"
    Entorno = "Aula"
  }
}