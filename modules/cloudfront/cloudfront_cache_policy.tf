resource "aws_cloudfront_cache_policy" "managed-elemental-mediapackage" {
  comment     = "Policy for Elemental MediaPackage Origin"
  default_ttl = "86400"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Elemental-MediaPackage"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "false"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["origin"]
      }
    }

    query_strings_config {
      query_string_behavior = "whitelist"

      query_strings {
        items = ["aws.manifestfilter", "end", "m", "start"]
      }
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-default-no-cookies-v2" {
  comment     = "Default Amplify cache policy without cookies"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-DefaultNoCookies-V2"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "whitelist"

      cookies {
        items = ["__dpl"]
      }
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Accept", "Authorization", "CloudFront-Viewer-Country", "Host", "RSC", "X-Amplify-Dpl"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-default-v2" {
  comment     = "Default Amplify cache policy"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-Default-V2"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "all"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Accept", "Authorization", "CloudFront-Viewer-Country", "Host", "RSC", "X-Amplify-Dpl"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-image-optimization" {
  comment     = "Amplify cache policy for image optimization"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-ImageOptimization"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Accept", "Authorization", "Host"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify" {
  comment     = "Policy for Amplify Origin"
  default_ttl = "2"
  max_ttl     = "600"
  min_ttl     = "2"
  name        = "Managed-Amplify"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "all"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Authorization", "CloudFront-Viewer-Country", "Host"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-caching-disabled" {
  comment     = "Policy with caching disabled"
  default_ttl = "0"
  max_ttl     = "0"
  min_ttl     = "0"
  name        = "Managed-CachingDisabled"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "false"
    enable_accept_encoding_gzip   = "false"

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-static-content-v2" {
  comment     = "Amplify cache policy for static content"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-StaticContent-V2"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "whitelist"

      cookies {
        items = ["__dpl"]
      }
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Authorization", "CloudFront-Viewer-Country", "Host", "RSC", "X-Amplify-Dpl"]
      }
    }

    query_strings_config {
      query_string_behavior = "whitelist"

      query_strings {
        items = ["dpl"]
      }
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-use-origin-cache-control-headers-query-strings" {
  comment     = "Policy for origins that return Cache-Control headers and serve different content based on values present in the query string."
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "UseOriginCacheControlHeaders-QueryStrings"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "all"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["host", "origin", "x-http-method", "x-http-method-override", "x-method-override"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-default" {
  comment     = "Default Amplify cache policy"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-Default"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "all"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Accept", "Authorization", "CloudFront-Viewer-Country", "Host"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-caching_optimized" {
  comment     = "Policy with caching enabled. Supports Gzip and Brotli compression."
  default_ttl = "86400"
  max_ttl     = "31536000"
  min_ttl     = "1"
  name        = "Managed-CachingOptimized"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-image-optimization-v2" {
  comment     = "Amplify cache policy for image optimization"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-ImageOptimization-V2"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "whitelist"

      cookies {
        items = ["__dpl"]
      }
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Accept", "Authorization", "CloudFront-Viewer-Country", "Host", "RSC", "X-Amplify-Dpl"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-static-content" {
  comment     = "Amplify cache policy for static content"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-StaticContent"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Authorization", "Host"]
      }
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-use-origin-cache-control-headers" {
  comment     = "Policy for origins that return Cache-Control headers. Query strings are not included in the cache key."
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "UseOriginCacheControlHeaders"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "all"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["host", "origin", "x-http-method", "x-http-method-override", "x-method-override"]
      }
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-amplify-default-no-cookies" {
  comment     = "Default Amplify cache policy without cookies"
  default_ttl = "0"
  max_ttl     = "31536000"
  min_ttl     = "0"
  name        = "Managed-Amplify-DefaultNoCookies"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "true"
    enable_accept_encoding_gzip   = "true"

    headers_config {
      header_behavior = "whitelist"

      headers {
        items = ["Accept", "Authorization", "CloudFront-Viewer-Country", "Host"]
      }
    }

    query_strings_config {
      query_string_behavior = "all"
    }
  }
}

resource "aws_cloudfront_cache_policy" "managed-caching_optimized-for-uncompressed-objects" {
  comment     = "Default policy when compression is disabled"
  default_ttl = "86400"
  max_ttl     = "31536000"
  min_ttl     = "1"
  name        = "Managed-CachingOptimizedForUncompressedObjects"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = "false"
    enable_accept_encoding_gzip   = "false"

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}
