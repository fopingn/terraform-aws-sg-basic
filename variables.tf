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
variable "ingress" {
  type        = list(map(string))
  description = "Customizing parameter for ingress block definition"
  default     = []
}

variable "egress" {
  type        = list(map(string))
  description = "Customizing parameter for ingress block definition"
  default     = []
}

variable "cidr_blocks_ingress" {
  description = "list of cidr ingress block "
  type        = list
  default     = []
}

variable "cidr_blocks_egress" {
  description = "list of cidr egress block "
  type        = list
  default     = []
}
