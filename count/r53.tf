resource "aws_route53_record" "www" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}" #mongodb.daws88s.store
  type    = "A"
  ttl     = 1
  records = [aws_instance.Roboshop[count.index].private_ip]
}