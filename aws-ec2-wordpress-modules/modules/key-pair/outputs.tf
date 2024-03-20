output "key_name" {
  value = aws_key_pair.deployer.key_name
}

output "private_key" {
  value = tls_private_key.private_key.private_key_openssh
  sensitive = true
}