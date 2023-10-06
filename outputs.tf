output "vpc_id" {
    value = aws_vpc.vpc1.id
}
output "ec2_public_ip" {
  value = aws_instance.splunk-demo.public_ip
}

output "security_group_id" {
  value = aws_security_group.splunk-sg.id
}