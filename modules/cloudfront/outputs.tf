output "aws_cloudfront_distribution_rangelconsultoria_cfd" {
  value = {
    id         = aws_cloudfront_distribution.rangelconsultoria_cfd.id
    domain_name = aws_cloudfront_distribution.rangelconsultoria_cfd.domain_name
    host_name   = "www.rangelconsultoria.com.br"
  }
}
