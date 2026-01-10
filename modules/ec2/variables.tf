variable "instance_type" {
  description = "The type of instance to use for the EC2 instance."
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "The number of EC2 instances to create."
  type        = number
  default     = 1
}

variable "instance_name_prefix" {
  description = "The prefix for naming the EC2 instances."
  type        = string
  default     = "ec2-instance"
}

variable "tags" {
  description = "A map of tags to assign to the EC2 instances."
  type        = map(string)
  default     = {}
}
