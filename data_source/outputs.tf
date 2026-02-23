output "aws_id" {
    value = data.aws_ami.example
}

output "instances_info" {
    value = data.aws_instance.Terraform
}