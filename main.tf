resource "google_compute_region_health_check" "health-check" {

  name                = var.name
  timeout_sec         = var.timeout_sec
  check_interval_sec  = var.check_interval_sec
  description         = var.description
  healthy_threshold   = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold
  region              = var.region

  dynamic "http_health_check" {
    for_each = var.http_health_check
    content {
      host               = lookup(http_health_check.value, "host")
      request_path       = lookup(http_health_check.value, "request_path")
      response           = lookup(http_health_check.value, "response")
      port               = lookup(http_health_check.value, "portport")
      port_name          = lookup(http_health_check.value, "port_name")
      proxy_header       = lookup(http_health_check.value, "proxy_header")
      port_specification = lookup(http_health_check.value, "port_specification")

    }
  }


  dynamic "https_health_check" {
    for_each = var.https_health_check
    content {
      host               = lookup(http_health_check.value, "host")
      request_path       = lookup(http_health_check.value, "request_path")
      response           = lookup(https_health_check.value, "response")
      port               = lookup(https_health_check.value, "portport")
      port_name          = lookup(https_health_check.value, "port_name")
      proxy_header       = lookup(https_health_check.value, "proxy_header")
      port_specification = lookup(https_health_check.value, "port_specification")

    }
  }


  dynamic "tcp_health_check" {
    for_each = var.tcp_health_check
    content {
      request            = lookup(tcp_health_check.value, "request")
      response           = lookup(tcp_health_check.value, "response")
      port               = lookup(tcp_health_check.value, "portport")
      port_name          = lookup(tcp_health_check.value, "port_name")
      proxy_header       = lookup(tcp_health_check.value, "proxy_header")
      port_specification = lookup(tcp_health_check.value, "port_specification")

    }
  }


  dynamic "ssl_health_check" {
    for_each = var.tcp_health_check
    content {
      request            = lookup(ssl_health_check.value, "request")
      response           = lookup(ssl_health_check.value, "response")
      port               = lookup(ssl_health_check.value, "portport")
      port_name          = lookup(ssl_health_check.value, "port_name")
      proxy_header       = lookup(ssl_health_check.value, "proxy_header")
      port_specification = lookup(ssl_health_check.value, "port_specification")

    }
  }

  dynamic "http2_health_check" {
    for_each = var.http2_health_check
    content {
      host               = lookup(http2_health_check.value, "host")
      request_path       = lookup(http2_health_check.value, "request_path")
      response           = lookup(http2_health_check.value, "response")
      port               = lookup(http2_health_check.value, "portport")
      port_name          = lookup(http2_health_check.value, "port_name")
      proxy_header       = lookup(http2_health_check.value, "proxy_header")
      port_specification = lookup(http2_health_check.value, "port_specification")

    }
  }

}
