# VPC ID
output "vpc_id" {
  description = "作成されたVPCのID"
  value       = aws_vpc.main.id
}

# サブネット ID
output "subnet_id" {
  description = "作成されたパブリックサブネットのID"
  value       = aws_subnet.public.id
}

# セキュリティグループ ID
output "security_group_id" {
  description = "作成されたセキュリティグループのID"
  value       = aws_security_group.web.id
}

# EC2インスタンス ID
output "instance_id" {
  description = "作成されたEC2インスタンスのID"
  value       = aws_instance.web.id
}

# EC2インスタンスのパブリックIP
output "instance_public_ip" {
  description = "EC2インスタンスのパブリックIPアドレス"
  value       = aws_instance.web.public_ip
}

# EC2インスタンスのパブリックDNS
output "instance_public_dns" {
  description = "EC2インスタンスのパブリックDNS名"
  value       = aws_instance.web.public_dns
}

# WebサーバーのURL
output "web_server_url" {
  description = "WebサーバーにアクセスするためのURL"
  value       = "http://${aws_instance.web.public_ip}"
}

