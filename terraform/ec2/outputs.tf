output "master_public_ip" {
  description = "Master node public IP"
  value       = aws_instance.master.public_ip
  sensitive   = true
}

output "master_private_ip" {
  description = "Master node private IP"
  value       = aws_instance.master.private_ip
  sensitive   = true
}

output "worker1_public_ip" {
  description = "Worker1 public IP"
  value       = aws_instance.worker1.public_ip
  sensitive   = true
}

output "worker1_private_ip" {
  description = "Worker1 private IP"
  value       = aws_instance.worker1.private_ip
  sensitive   = true
}

output "worker2_public_ip" {
  description = "Worker2 public IP"
  value       = aws_instance.worker2.public_ip
  sensitive   = true
}

output "worker2_private_ip" {
  description = "Worker2 private IP"
  value       = aws_instance.worker2.private_ip
  sensitive   = true
}

output "ssh_key_name" {
  description = "SSH key pair name"
  value       = aws_key_pair.k8s_key.key_name
  sensitive   = true
}

output "ssh_private_key_path" {
  description = "Path to SSH private key"
  value       = local_file.private_key.filename
  sensitive   = true
}

output "ssh_connection_command_master" {
  description = "SSH command to connect to master"
  value       = "ssh -i ${local_file.private_key.filename} ubuntu@${aws_instance.master.public_ip}"
  sensitive   = true
}
