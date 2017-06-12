# Filter AMI module

Wraps up the `aws_ami`  data source.

## Usage

Typical usage is without any argumets.

```
module "ami" {
  source = "github.com/bboykov/tf_aws_filter_ami"
}

output "ami_id" {
  value = "${module.ami.id}"
}
```

Defaults are set to pull out latest Ubuntu Xenial HVM instance with EBS root volume.

