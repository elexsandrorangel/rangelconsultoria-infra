resource "aws_route53_record" "acm-validations-rangelconsultoria" {
  # multivalue_answer_routing_policy = false
  name                             = "_240a7667b9047999afaf9ee82b6713da.${var.main_domain}"
  records                          = ["_e3d5862f6d1eb543bbeeb9ca386d2ed7.cltjbwlkcy.acm-validations.aws."]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "autodiscover-tcp-rangelconsultoria" {
  # multivalue_answer_routing_policy = false
  name                             = "_autodiscover._tcp.${var.main_domain}"
  records                          = ["100 1 443 autodiscover.secureserver.net.${var.main_domain}"]
  ttl                              = "43200"
  type                             = "SRV"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "auth-rangelconsultoria" {
  # multivalue_answer_routing_policy = false
  name                             = "auth.${var.main_domain}"
  records                          = [var.auth_rangelconsultoria_com_br_server]
  ttl                              = "300"
  type                             = "A"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}


resource "aws_route53_record" "email-rangelconsultoria" {
  # multivalue_answer_routing_policy = false
  name                             = "email.${var.main_domain}"
  records                          = ["email.secureserver.net."]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "portainer" {
  # multivalue_answer_routing_policy = false
  name                             = "portainer.${var.main_domain}"
  records                          = [var.portainer_rangelconsultoria_com_br_server]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "rangelconsultoria-com-br_A_" {
  alias {
    evaluate_target_health = false
    name                   = "d2dor5xjkpwcbf.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
  }

  # multivalue_answer_routing_policy = false
  name                             = "${var.main_domain}"
  type                             = "A"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "rangelconsultoria-com-br_MX_" {
  # multivalue_answer_routing_policy = false
  name                             = "${var.main_domain}"
  records                          = ["0 smtp.secureserver.net", "10 mailstore1.secureserver.net"]
  ttl                              = "300"
  type                             = "MX"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "rangelconsultoria-com-br_NS_" {
  # multivalue_answer_routing_policy = false
  name                             = "${var.main_domain}"
  records                          = ["ns-1162.awsdns-17.org.", "ns-2024.awsdns-61.co.uk.", "ns-500.awsdns-62.com.", "ns-915.awsdns-50.net."]
  ttl                              = "172800"
  type                             = "NS"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "rangelconsultoria-com-br_SOA_" {
  # multivalue_answer_routing_policy = false
  name                             = "${var.main_domain}"
  records                          = ["ns-915.awsdns-50.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl                              = "900"
  type                             = "SOA"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "rangelconsultoria-com-br_TXT_" {
  # multivalue_answer_routing_policy = false
  name                             = "${var.main_domain}"
  records                          = ["D3766197", "google-site-verification=aA3sWvqOfQ-16c60me3n8eWDqsWVTMkHb8taV3EusCQ", "v=spf1 include:secureserver.net -all"]
  ttl                              = "300"
  type                             = "TXT"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "vpn-rangelconsultoria-com-br" {
  # multivalue_answer_routing_policy = false
  name                             = "vpn.${var.main_domain}"
  records                          = [var.vpn_rangelconsultoria_com_br_server]
  ttl                              = "300"
  type                             = "A"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "www-rangelconsultoria-com-br" {
  # multivalue_answer_routing_policy = false
  name                             = "www.${var.main_domain}"
  records                          = ["${var.main_domain}"]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

# Papyrus
resource "aws_route53_record" "acm-validations-cdn-papyrus" {
  # multivalue_answer_routing_policy = false
  name                             = "_b0fa848f42286d552b17b8ca179a962d.cdn.${var.papyrus_subdomain}"
  records                          = ["_cc09708dc71516cc9d0c757a1fb6713e.cltjbwlkcy.acm-validations.aws."]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}

resource "aws_route53_record" "acm-validations-papyrus" {
  # multivalue_answer_routing_policy = false
  name                             = "_db3bfecc3912dfd6be9e085143be57c2.${var.papyrus_subdomain}"
  records                          = ["_97cad3b6fb9c26c9464e4ac34b9d9bd9.cltjbwlkcy.acm-validations.aws."]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}


resource "aws_route53_record" "cdn-papyrus" {
  # multivalue_answer_routing_policy = false
  name                             = "cdn.${var.papyrus_subdomain}"
  records                          = ["dm15b77vqdhae.cloudfront.net"]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}


resource "aws_route53_record" "papyrus" {
  # multivalue_answer_routing_policy = false
  name                             = "${var.papyrus_subdomain}"
  records                          = [var.papyrus_alb_dns_name]
  ttl                              = "300"
  type                             = "CNAME"
  zone_id                          = "${aws_route53_zone.rangelconsultoria-com-br.zone_id}"
}