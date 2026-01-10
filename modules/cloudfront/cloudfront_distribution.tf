resource "aws_cloudfront_distribution" "rangelconsultoria_cfd" {
  aliases = ["rangelconsultoria.com.br", "www.rangelconsultoria.com.br"]

  custom_error_response {
    error_caching_min_ttl = "10"
    error_code            = "403"
    response_code         = "200"
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = ["GET", "HEAD"]
    cache_policy_id = aws_cloudfront_cache_policy.managed-caching_optimized.id
    cached_methods  = ["GET", "HEAD"]
    compress        = var.compress_cache
    default_ttl     = var.default_ttl

    grpc_config {
      enabled = false
    }

    max_ttl                = var.default_ttl
    min_ttl                = var.default_ttl
    smooth_streaming       = false
    target_origin_id       = "rangelconsultoria-site.s3.us-east-1.amazonaws.com"
    viewer_protocol_policy = "allow-all"
  }

  default_root_object = "index.html"
  enabled             = var.enable_distribution
  comment = var.comment
  http_version        = "http2and3"
  is_ipv6_enabled     = var.enable_ipv6

  origin {
    connection_attempts         = "3"
    connection_timeout          = "10"
    domain_name                 = "rangelconsultoria-site.s3.us-east-1.amazonaws.com"
    origin_id                   = "rangelconsultoria-site.s3.us-east-1.amazonaws.com"
    response_completion_timeout = "0"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E1GIF50I4NZBZ1"
    }
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      locations        = ["AF", "CD", "CG", "CN", "EE", "HK", "IQ", "IR", "KE", "KP", "KZ", "LA", "LT", "LV", "LY", "MM", "MZ", "NA", "PK", "PS", "RU", "RW", "VN"]
      restriction_type = "blacklist"
    }
  }

  retain_on_delete = false
  staging          = false

  tags = {
    Application = var.application
    Environment = var.environment
  }

  viewer_certificate {
    acm_certificate_arn            = var.rangelconsultoria_certificate_arn
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}

resource "aws_cloudfront_distribution" "cdn_rangelconsultoria_cfd" {
  aliases = ["cdn.papyrus.rangelconsultoria.com.br"]

  default_cache_behavior {
    allowed_methods = ["GET", "HEAD"]
    cache_policy_id = aws_cloudfront_cache_policy.managed-caching_optimized.id
    cached_methods  = ["GET", "HEAD"]
    compress        = var.compress_cache
    default_ttl     = var.default_ttl

    grpc_config {
      enabled = false
    }

    max_ttl                    = var.default_ttl
    min_ttl                    = var.default_ttl
    origin_request_policy_id   = "216adef6-5c7f-47e4-b989-5492eafa07d3"
    response_headers_policy_id = "60669652-455b-4ae9-85a4-c4c02393f86c"
    smooth_streaming           = false
    target_origin_id           = "papyrus-web-alb-846944630.us-east-1.elb.amazonaws.com"
    viewer_protocol_policy     = "redirect-to-https"
  }

  enabled         = var.enable_distribution
  http_version    = "http2and3"
  is_ipv6_enabled = var.enable_ipv6
  comment         = var.comment

  origin {
    connection_attempts = "3"
    connection_timeout  = "10"

    custom_origin_config {
      http_port                = "80"
      https_port               = "443"
      origin_keepalive_timeout = "5"
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = "30"
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name                 = "alb-papyrus-web-18550536.us-east-1.elb.amazonaws.com"
    origin_id                   = "papyrus-web-alb-846944630.us-east-1.elb.amazonaws.com"
    response_completion_timeout = "0"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      locations        = ["AF", "BY", "CD", "CG", "CN", "KP", "RU", "SO", "SY", "TH", "TW", "VN"]
      restriction_type = "blacklist"
    }
  }

  retain_on_delete = false
  staging          = false

  viewer_certificate {
    acm_certificate_arn            = var.rangelconsultoria_cdn_certificate_arn
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}
