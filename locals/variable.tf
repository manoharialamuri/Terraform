variable "name" {
    type = string
    default = "locals-demo"
}

variable "Env" {
    type = string
    default = "dev"

}

variable "ec2_tags" {
    default = {
        Name = "locals-demo"
        Env = "prod"
    }
}
# merge will replace env -dev with Env - prod
variable "sg_tags" {
    default = {
        Name = "locals-demo"
    }
}