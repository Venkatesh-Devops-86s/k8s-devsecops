output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
  sensitive   = true
}

output "vpc_cidr" {
  description = "VPC CIDR block"
  value       = aws_vpc.main.cidr_block
  sensitive   = true
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
  sensitive   = true
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.main.id
  sensitive   = true
}

output "master_security_group_id" {
  description = "Master node security group ID"
  value       = aws_security_group.master.id
  sensitive   = true
}

output "worker_security_group_id" {
  description = "Worker node security group ID"
  value       = aws_security_group.worker.id
  sensitive   = true
}
