# Filter AMI module

Wraps up the `aws_ami`  data source.

## Usage

Typical usage is without any argumets.

```
module "ubuntu_lastest_ami" {
  source = "github.com/bboykov/terraform-aws-filter-ami"
}

output "ami_id" {
  value = "${module.ubuntu_lastest_ami.id}"
}
```


# Examples

See the [examples](examples/) directory.



## Inputs

| Name                | Description                                                     | Type   | Default                            | Required |
|---------------------|-----------------------------------------------------------------|:------:|:----------------------------------:|:--------:|
| name                | Limit search to specific starting AMI name string               | string | `ubuntu-bionic-18.04-amd64-server` | no       |
| owners              | Limit search to specific AMI owners. Default is Ubuntu and self | list   | `<list>`                           | no       |
| root_device_type    | The type of root device (ie: ebs or instance-store).            | string | `ebs`                              | no       |
| virtualization_type | The type of virtualization of the AMI (ie: hvm or paravirtual). | string | `hvm`                              | no       |

## Outputs

| Name | Description             |
|------|-------------------------|
| id   | The ID of the found AMI |

