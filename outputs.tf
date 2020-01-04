output "creation_timestamp" {
  value = "${google_compute_region_health_check.health-check.creation_timestamp}"
}

output "type" {
  value = "${google_compute_region_health_check.health-check.type}"
}

output "self_link" {
  value = "${google_compute_region_health_check.health-check.self_link}"
}
