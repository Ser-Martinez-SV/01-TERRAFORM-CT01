output "vpc_id" {
  value = aws_vpc.vpc_proyecto.id
}

output "ec2_id" {
  value = aws_instance.servidor.id
}

output "ec2_public_ip" {
  value = aws_instance.servidor.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.bucket_proyecto.bucket
}