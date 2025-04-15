# VPC
vpc_name              = "java-app-service-1-dev-vpc"
vpc_cidr              = "10.10.0.0/16"
enable_dns_hostnames = true
enable_dns_support   = true

# Subnets
public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24"]
private_subnet_cidrs = ["10.10.3.0/24", "10.10.4.0/24"]

# AZ Mapping
availability_zones = ["us-east-1a", "us-east-1b"]

# NAT & IGW
enable_nat_gateway      = true
single_nat_gateway      = true
enable_internet_gateway = true

# NACL
enable_nacl = true

# Tags
environment   = "dev"
project       = "java-app-service-1"
owner         = "dev-team"
cost_center   = "DEV-1234"

# Optional VPC flow logs (for monitoring)
enable_vpc_flow_logs         = false
vpc_flow_log_destination_arn = ""
