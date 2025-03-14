variable "ami" {}
variable "instance_type" {}

variable "subnet_id" {
  description = "The ID of the public subnet"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the web security group"
  type        = string
}
