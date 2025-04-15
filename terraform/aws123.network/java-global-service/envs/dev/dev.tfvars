# Global VPC Setup
vpc_name              = "java-global-service-dev-vpc"
vpc_cidr              = "10.100.0.0/16"
enable_dns_hostnames = true
enable_dns_support   = true

# Subnet Allocation (optional - if shared services live here)
public_subnet_cidrs  = ["10.100.1.0/24", "10.100.2.0/24"]
private_subnet_cidrs = ["10.100.3.0/24", "10.100.4.0/24"]

# AZs for high availability
availability_zones = ["us-east-1a", "us-east-1b"]

# Shared NAT Gateway Config
enable_nat_gateway      = true
single_nat_gateway      = true
enable_internet_gateway = true

# Shared NACL setup (if needed)
enable_nacl = true

# VPC Flow Logs (for global network visibility)
enable_vpc_flow_logs         = true
vpc_flow_log_destination_arn = "arn:aws:logs:us-east-1:123456789012:log-group:/aws/vpc/global-flowlogs"

# Shared DNS / Route53
enable_private_dns_zone = true
private_hosted_zone_name = "internal.java-global.dev"

# Global Tags
environment   = "dev"
project       = "java-global-network"
owner         = "network-core-team
