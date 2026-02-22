variable "instances" {
    type = list
    default = ["mongodb", "catalogue", "redis", "cart", "user", "shipping", "payment", "mysql", "rabbitmq", "frontend"]
}

variable "zone_id" {
    default = "Z0996154EJGGPGBA9M2V"
}

variable "domain_name" {
    default = "daws88s.store"
}

variable "fruits" {
    type = list(string)
    default = ["apple", "banana", "apple", "mango"]
}

variable "fruits_set" {
    type = set(string)
    default = ["apple", "banana", "apple", "mango"]
}
