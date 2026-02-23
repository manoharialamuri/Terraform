variable "common_tags" {
    default = {
        Project = "roboshop"
        Terraform = "true"
        Env = "dev"
    }
}

variable "ec2_tags" {
    default = {
        Name = "functions-demo"
        Env = "prod"
    }
}
merge will replace env -dev with Env - prod
variable "sg_tags" {
    default = {
        Name = "functions-demo"
    }
}