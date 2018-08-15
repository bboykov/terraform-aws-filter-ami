provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

module "ubuntu_lastest_ami" {
  source = "../../"
}
