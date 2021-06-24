variable "db_subnet_group_name" {
  type = string
}
variable "vpc_security_group_ids" {}


## Database Instance Variables

variable "rds_instance_identifier" {
  type        = string
  default     = "postgres"
}

variable "database_name" {
  type        = string
  default     = "test"
}

variable "database_user" {
  type        = string
  default     = "database_user"
}


variable "database_password" {
  type        = string
  default     = "database_password"
 }
 
variable "database_instance_class" {
  type        = string
  default     = "db.t2.micro"
 }

 variable "database_storage" {
  type        = number
  default     = 20
 }
