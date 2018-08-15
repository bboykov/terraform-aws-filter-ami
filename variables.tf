variable "name" {
  description = "Limit search to specific starting AMI name string"
  default     = "ubuntu-bionic-18.04-amd64-server"
}

variable "owners" {
  description = "Limit search to specific AMI owners. Default is Ubuntu and self"
  type        = "list"
  default     = ["self", "099720109477"]
}

variable "root_device_type" {
  description = "The type of root device (ie: ebs or instance-store)."
  default     = "ebs"
}

variable "virtualization_type" {
  description = "The type of virtualization of the AMI (ie: hvm or paravirtual)."
  default     = "hvm"
}
