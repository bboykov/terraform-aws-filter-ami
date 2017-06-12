variable "ami_name" {
  description = "Limit search to specific starting AMI name string"
  type        = "string"
  default     = "ubuntu-xenial-16.04-amd64-server"
}

variable "owners" {
  description = "Limit search to specific AMI owners. Default is Ubuntu and self"
  type        = "list"
  default     = ["self", "099720109477"]
}

variable "root_device_type" {
  description = "The type of root device (ie: ebs or instance-store)."
  type        = "string"
  default     = "ebs"
}

variable "virt_type" {
  description = "The type of virtualization of the AMI (ie: hvm or paravirtual)."
  type        = "string"
  default     = "hvm"
}
