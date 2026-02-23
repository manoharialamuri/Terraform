resource "aws_route53_record" "www" {
  count = 10
  count = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}" #mongodb.daws88s.store
  type    = "A"
  ttl     = 1
  records = [aws_instance.Roboshop[count.index].private_ip]
}

#roboshop mapping to public ip- As part of functions
resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}" #roboshop.daws88s.store
  type    = "A"
  ttl     = 1
  records = [aws_instance.Roboshop[index(var.instances, "frontend")].public_ip]
}