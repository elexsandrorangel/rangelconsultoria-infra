# TODO: Group and review
output "rangelconsultoria-com-br_zone" {
  value = {
    id = "${aws_route53_zone.rangelconsultoria-com-br.id}"
    arn = "${aws_route53_zone.rangelconsultoria-com-br.arn}"
    name = "${aws_route53_zone.rangelconsultoria-com-br.name}"
    name_servers = "${aws_route53_zone.rangelconsultoria-com-br.name_servers}"
  }
}

# Output for all key Route53 records
output "rangelconsultoria-com-br_records" {
  value = {
    acm_validations = aws_route53_record.acm-validations-rangelconsultoria.fqdn
    autodiscover_srv = aws_route53_record.autodiscover-tcp-rangelconsultoria.fqdn
    auth_a = aws_route53_record.auth-rangelconsultoria.fqdn
    email_cname = aws_route53_record.email-rangelconsultoria.fqdn
    portainer_cname = aws_route53_record.portainer.fqdn
    root_a = aws_route53_record.rangelconsultoria-com-br_A_.fqdn
    mx = aws_route53_record.rangelconsultoria-com-br_MX_.fqdn
    ns = aws_route53_record.rangelconsultoria-com-br_NS_.fqdn
    soa = aws_route53_record.rangelconsultoria-com-br_SOA_.fqdn
    txt = aws_route53_record.rangelconsultoria-com-br_TXT_.fqdn
    vpn_a = aws_route53_record.vpn-rangelconsultoria-com-br.fqdn
    www_cname = aws_route53_record.www-rangelconsultoria-com-br.fqdn
    papyrus_acm_cdn = aws_route53_record.acm-validations-cdn-papyrus.fqdn
    papyrus_acm = aws_route53_record.acm-validations-papyrus.fqdn
    papyrus_cdn = aws_route53_record.cdn-papyrus.fqdn
    papyrus = aws_route53_record.papyrus.fqdn
  }
}

output "rangelconsultoria-com-br_zone_id" {
  value = aws_route53_zone.rangelconsultoria-com-br.zone_id
}

output "rangelconsultoria-com-br_name_servers" {
  value = aws_route53_zone.rangelconsultoria-com-br.name_servers
}

