resource "aws_route53_zone" "zone" {
  name = var.domain_name

  tags = {
    Environment = var.env
  }
}