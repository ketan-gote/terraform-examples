output "instance_publicip" {
  description = "Public IP Of EC2 Instance"
  value = aws_instance.myTerraformEC2.public_ip
}

output "instance_publicdns" {
  description = "Public DNS Of EC2 Instance"
  value = aws_instance.myTerraformEC2.public_dns
}