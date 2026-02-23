resource "aws_route53_record" "www" {
  for_each = aws_instance.Roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}

#roboshop mapping to public ip- As part of functions

resource "aws_route53_record" "www" {
  for_each = aws_instance.Roboshop
  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.Roboshop, "frontend").public_ip]
  allow_overwrite = true
}