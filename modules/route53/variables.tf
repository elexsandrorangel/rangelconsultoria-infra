variable "route53_zone_name" {
  description = "The name of the Route53 hosted zone"
  type        = string
  default     = "rangelconsultoria.com.br"
}

variable "main_domain" {
  description = "The main domain for the Route53 records"
  type        = string
  default     = "rangelconsultoria.com.br"
}

variable "papyrus_subdomain" {
  description = "The papyrus subdomain for the Route53 records"
  type        = string
  default     = "papyrus.rangelconsultoria.com.br"
}

variable "papyrus_alb_dns_name" {
  description = "The DNS name of the Papyrus ALB"
  type        = string
  default     = "alb-papyrus-web-18550536.us-east-1.elb.amazonaws.com"
}

variable "auth_rangelconsultoria_com_br_server"{
  description = "The auth server for rangelconsultoria.com.br"
  type        = string
  default     = "199.36.158.100"
}

variable "portainer_rangelconsultoria_com_br_server"{
  description = "The portainer server for rangelconsultoria.com.br"
  type        = string
  default     = "ip-10-100-4-194.ec2.internal"
}

variable "vpn_rangelconsultoria_com_br_server"{
  description = "The vpn server for rangelconsultoria.com.br"
  type        = string
  default     = "44.215.32.133"
}