data "aws_ami" "this" {
  most_recent = true
  owners      = ["${var.owners}"]

  name_regex = "${var.name}"

  filter {
    name   = "root-device-type"
    values = ["${var.root_device_type}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["${var.virtualization_type}"]
  }
}
