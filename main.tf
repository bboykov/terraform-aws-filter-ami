data "aws_ami" "ami" {
  most_recent = true
  owners      = ["${var.owners}"]

  name_regex = "${var.ami_name}"

  filter {
    name   = "root-device-type"
    values = ["${var.root_device_type}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["${var.virt_type}"]
  }
}
