variable "aws_region" {
  type        = string
  description = "AWS region for provider configuration"
  default     = "us-east-1"
}

variable "vpc_name" {
  type        = string
  description = "Name prefix for the VPC and related network resources"
  default     = "mid-project-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones to create subnets in"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Whether to create a NAT gateway for outbound internet access from private subnets"
  default     = true
}

variable "enable_vpn_gateway" {
  type        = bool
  description = "Whether to create a VPN gateway for the VPC"
  default     = false
}

variable "environment" {
  type        = string
  description = "Deployment environment name"
  default     = "dev"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t3.micro"
}
