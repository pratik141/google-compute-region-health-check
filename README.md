# terraform-google-compute-region-health-check

	Health Checks

**Basic usage**
---
```hcl
module "node_pool" {
  source = ""

  name                = var.name
  timeout_sec         = var.timeout_sec
  check_interval_sec  = var.check_interval_sec
  description         = var.description
  healthy_threshold   = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold
  region              = var.region
  http_health_check   = var.http_health_check

}
```

### Variable details

 Variable name | Description | Option | type | default value |
| :---: | :---: | :---: | :---: | :---: |
| name                 | name                | required | string | - |
| timeout_sec          | timeout_sec         | required | string | - |
| check_interval_sec   | check_interval_sec  | required | string | - |
| description          | description         | required | string | - |
| healthy_threshold    | healthy_threshold   | required | number | - |
| unhealthy_threshold  | unhealthy_threshold | required | number | - |
| region               | region              | optional | number | - |
| http_health_check    | http_health_check   | optional | bool   | [] |
| https_health_chec    | https_health_chec   | optional | bool   | [] |
| tcp_health_check     | tcp_health_check    | optional | bool   | [] |
| ssl_health_check     | ssl_health_check    | optional | string | [] |
| http2_health_check   | http2_health_check  | optional | list   | [] |


### Output details

* creation_timestamp
* type
* self_link
