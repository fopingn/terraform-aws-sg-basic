variable "name" {
  description = "The name of the security group"
  type        = string
  default     = ""
}

variable "description" {
  description = "The security group description"
  type        = string
  default     = "Managed by Terraform"
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
  default     = ""
}

variable "revoke_rules_on_delete" {
  description = "Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself."
  type        = string
  default     = "false"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
variable "ingress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = []
}

variable "egress_ports" {
  type        = list(number)
  description = "list of egress ports"
  default     = []
}
