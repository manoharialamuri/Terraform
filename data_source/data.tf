data "aws_ami" "example" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
     name   = "name"
     values = ["Redhat-9-DevOps-Practice"]
  }
   filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_instance" "Terraform" {
    instance_id = "i-016b4be13187b4462"
  }
