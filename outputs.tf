output "id" {
  description = "The ID of the found AMI"
  value       = "${data.aws_ami.this.id}"
}
