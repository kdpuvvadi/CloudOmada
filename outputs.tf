output "ip_address" {
  value       = aws_instance.omada_instance.public_ip
  description = "The public IP address of your Droplet application."
}
