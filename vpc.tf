# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = "${var.default_tags.project}-vpc"
  }
  assign_generated_ipv6_cidr_block = true
  instance_tenancy = "default"

}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    # 10.255.0.0/20 -> 10.255.0.0/24
    cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 4, 0)
    ipv6_cidr_block = cidrsubnet(aws_vpc.main.ipv6_cidr_block, 4, 0)
    map_public_ip_on_launch = true
    assign_ipv6_address_on_creation = true
    tags = {
        "Name" = "${var.default_tags.project}-public-${data.aws_availability_zones.available.names[0]}"
    }
    availability_zone = data.aws_availability_zones.available.names[0]
}

