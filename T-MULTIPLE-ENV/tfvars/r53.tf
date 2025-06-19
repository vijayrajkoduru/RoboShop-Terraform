 resource "aws_route53_record" "Hacker" {
  count           = length(var.instances)
  zone_id         = var.zone_id
  name            = var.instances[count.index] == "frontend" && var.environment == "prod" ? var.domain_name : "${var.instances[count.index]}-${var.environment}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = [var.instances[count.index] == "frontend" && var.environment == "prod" ? aws_instance.Hacker[count.index].public_ip : aws_instance.Hacker[count.index].private_ip]
  allow_overwrite = true
}
 
/* resource "aws_route53_record" "frontend" {
  zone_id         = var.zone_id
  name            = var.domain_name
  type            = "A"
  ttl             = 1
  records         = [aws_instance.Hacker[0].public_ip]
  allow_overwrite = true

} */