variable "region" {
    type = string
    description = "The region to deploy resources to"
    default = "us-east-1"
}


variable "vpc_cidr" {
    type = string
    description = "CIDR block for VPC"
    default = "10.255.0.0/20"
}

variable "default_tags" {
    type = map(string)
    description = "Map of default tags to apply to resources"
    default = {
      project = "learning live with AWS & HashiCorp"

    }
}