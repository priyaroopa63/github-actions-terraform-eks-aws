##--------------EKS----------------------------------------##

variable "eks_cluster_name" {
  default = "githubcluster"
}

variable "eks_cluster_version" {
  description = "EKS Cluster version"
  default     = "1.29"
  type        = string
}

variable "access_entries" {
  description = "Map of access entries to add to the cluster"
  type        = any
  default     = {}
}
variable "cluster_endpoint_public_access" {

  description = "cluster endpoint access true or false "
  default     = true
  type        = bool
}

variable "node_group_name" {

  type        = string
  description = "node group name"
  default     = "core-node-group"

}

variable "eks_node_min_size" {

  default     = 2
  type        = number
  description = "min size of node group"

}

variable "eks_node_max_size" {

  default     = 4
  type        = number
  description = "min size of node group"

}


variable "eks_node_desired_size" {

  default     = 2
  type        = number
  description = "min size of node group"

}

variable "eks_instance_types" {

  type        = list(string)
  default     = ["t3.xlarge"]
  description = "eks nodes instance types "
}

### Local variables ###############
variable "region" {
  description = "Region"
  default     = "us-east-1"
  type        = string
}
variable "bu" {
  type        = string
  description = "business unit"
  default     = "ralph"
}
variable "project" {
  type        = string
  default     = "ralph"
  description = "your project name"
}
variable "env" {
  type        = string
  description = "your environment name"
  default     = "Dev"
}

#-----------------------VPC------------------------------#
variable "create_vpc" {
    type = bool
    default = true
 
}
variable "vpc_name" {
  type = string
  default = "demo-vpc"
}
 
variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}
variable "public_subnets" {
type = list(string)
default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
 
}
variable "private_subnets" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "instance_types" {
 type = string
 default = "t2.medium"
}
 
variable "enable_nat_gateway" {
  type = bool
  default = true
}
 
variable "single_nat_gateway" {
  type = bool
  default = true
}
# variable "one_nat_gateway_per_az" {
#   type = bool
#   default = true
# }
 
variable "enable_dns_hostnames" {
  type= bool
  default = true
}
variable "reuse_nat_ips" {
  type = bool
  default = true
}