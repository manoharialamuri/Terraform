variable "instances" {
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        redis = "t3.micro"
        shipping = "t3.small"
    }
}# map related

variable "instances" {
    type = list
    default = ["mongodb", "catalogue"]
}

variable "zone_id" {
    default = "Z0996154EJGGPGBA9M2V"
}

variable "domain_name" {
    default = "daws88s.store"
}