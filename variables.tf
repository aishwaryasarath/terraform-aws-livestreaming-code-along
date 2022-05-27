variable "region" {
  type        = string
  description = "The region to deploy resources to"
  default     = "us-east-1"
}


variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.255.0.0/20"
}

variable "default_tags" {
  type        = map(string)
  description = "Map of default tags to apply to resources"
  default = {
    project = "learning live with AWS & HashiCorp"

  }
}

variable "vpc_public_subnet_count" {
  type        = number
  description = "Number of public subnets to create"
  default     = 2
}


variable "vpc_private_subnet_count" {
  type        = number
  description = "Number of private subnets to create"
  default     = 2
}
