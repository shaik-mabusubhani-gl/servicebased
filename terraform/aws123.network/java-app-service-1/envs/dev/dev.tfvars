# VPC
vpc_cidr = "10.10.0.0/16"
enable_dns_hostnames = true
enable_dns_support   = true

# Subnets
public_subnet_cidrs = ["10.10.1.0/24", "10.10.2.0/24"]
private_subnet_cidrs = ["10.10.3.0/24", "10.10.4.0/24"]

# NAT and IGW
enable_nat_gateway = true
single_nat_gateway = true
enable_internet_gateway = true

# AZ Mapping (optional)
availability_zones = ["us-east-1a", "us-east-1b"]

# Tags
environment = "dev"
project     = "java-app-service-1"
owner       = "dev-team"
cost_center = "dev-1234"

# NACL Rules (optional)
enable_nacl = true

# Route table options
enable_custom_route_table = true

# VPC Name (optional)
vpc_name = "java-app-service-1-dev-vpc"
