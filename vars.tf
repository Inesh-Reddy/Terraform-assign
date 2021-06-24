variable "region" {
  description = "us-east-2"
}

variable "environment" {
  description = "The Deployment environment"
}

//Networking
variable "vpc_cidr" {
  description = "The CIDR block of the vpc"
}

variable "public_subnets_cidr" {
  type        = list
  description = "The CIDR block for the public subnet"
}

variable "private_subnets_cidr" {
  type        = list
  description = "The CIDR block for the private subnet"
}



/*variable "region" {
  default     = "us-east-2"
  description = "AWS region"
}
*/

/*
variable "db_password" {
  description = "RDS root user password"
  type        = string
  sensitive   = true
}
*/