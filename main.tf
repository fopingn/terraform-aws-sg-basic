terraform {
  required_version = ">= 0.12, < 0.13"
}

resource "aws_security_group" "this" {
  name                   = var.name
  description            = var.description
  vpc_id                 = var.vpc_id
  revoke_rules_on_delete = var.revoke_rules_on_delete
  tags                   = var.tags


  ####dynamic ingress rules for the security_group

  dynamic "ingress" {
    for_each = var.ingress
    content {
      from_port   = lookup(ingress.value, "from_port", null)
      to_port     = lookup(ingress.value, "to_port", null)
      protocol    = lookup(ingress.value, "protocol", null)
      cidr_blocks = var.cidr_blocks_ingress
      description = lookup(ingress.value, "description", null)
    }
  }

  ####dynamic egress rules for the security_group

  dynamic "egress" {
    for_each = var.egress
    content {
      from_port   = lookup(egress.value, "from_port", null)
      to_port     = lookup(egress.value, "to_port", null)
      protocol    = lookup(egress.value, "protocol", null)
      cidr_blocks = var.cidr_blocks_egress
      description = lookup(egress.value, "description", null)
    }
  }

}
