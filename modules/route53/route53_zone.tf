resource "aws_route53_zone" "rangelconsultoria-com-br" {
  enable_accelerated_recovery = false
  force_destroy               = false
  name                        = var.route53_zone_name
}
