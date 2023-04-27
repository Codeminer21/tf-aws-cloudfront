locals {
  s3_origin_id = var.s3_origin_id
}

resource "aws_cloudfront_origin_access_identity" "origin_access_identity" {
  comment = var.origin_access_identity_comment
}

resource "aws_cloudfront_distribution" "cloudfront_distribution" {
  origin {
    domain_name = var.cloudfront_distribution_domain_name
    origin_id   = var.cloudfront_distribution_origin_id
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = var.cloudfront_distribution_comment
  default_root_object = var.cloudfront_distribution_default_root_object

  default_cache_behavior {
    allowed_methods  = var.cloudfront_distribution_allow_methods
    cached_methods   = var.cloudfront_distribution_cached_methods
    target_origin_id = var.cloudfront_distribution_origin_id

    forwarded_values {
      query_string = true

      cookies {
        forward = var.cloudfront_distribution_cookies_forward
      }
    }

    viewer_protocol_policy = var.cloudfront_distribution_viewer_protocol_policy
    min_ttl                = var.cloudfront_distribution_min_ttl
    default_ttl            = var.cloudfront_distribution_default_ttl
    max_ttl                = var.cloudfront_distribution_max_ttl
  }

  restrictions {
    geo_restriction {
      restriction_type = var.cloudfront_distribution_geo_restriction_type
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}