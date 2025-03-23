# variables.tf

# AWS Region for all resources
variable "region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-west-2"
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Public Subnet CIDR Block
variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.0.0/24"
}

# Private Subnet CIDR Block
variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.1.0/24"
}

# Availability Zone for Subnets
variable "availability_zone" {
  description = "Availability zone for the subnets"
  type        = string
  default     = "us-west-2a"
}

# EKS Cluster Name
variable "eks_cluster_name" {
  description = "Name for the EKS Cluster"
  type        = string
  default     = "webservereks"
}

# Node Group configuration
variable "node_group_name" {
  description = "Name for the EKS Node Group"
  type        = string
  default     = "my-eks-node-group"
}

variable "desired_node_count" {
  description = "Desired number of nodes in the Node Group"
  type        = number
  default     = 2
}

variable "min_node_count" {
  description = "Minimum number of nodes in the Node Group"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Maximum number of nodes in the Node Group"
  type        = number
  default     = 5
}

# Instance type for EKS nodes
variable "instance_type" {
  description = "EC2 instance type for the node group"
  type        = string
  default     = "t3.medium"
}
