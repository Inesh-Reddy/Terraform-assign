/*variable "subnet_id" {
  description = "The subnet ID from the network module"
}*/
variable "public_ids"{}
variable "vpc_security_group_ids" {}


# EC2 Variables

variable "instance_id" {
  type        = string
  default     = "web-"
}

variable "image_id" {
  type        = string
  default     = "ami-00399ec92321828f5"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}


#variable "ssh_key" {
 # type        = string
 # default     = "key-asg-2021"
#}
