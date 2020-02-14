output "sg_id" {
  description = "The ID of the security group"
  value       = aws_security_group.this.id
}

output "sg_ingress_rules" {
  description = "The ingress rules"
  value       = aws_security_group.this.ingress[*]
}

output "sg_egress_rules" {
  description = "The egress rules"
  value       = aws_security_group.this.egress[*]
}
