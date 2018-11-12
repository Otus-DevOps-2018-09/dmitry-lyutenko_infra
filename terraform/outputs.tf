output "app_external_ip_1" {
  value = "${google_compute_instance.app.0.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "app_external_ip_2" {
  value = "${google_compute_instance.app.1.network_interface.0.access_config.0.assigned_nat_ip}"
}

output "ip_address" {
  value = "${google_compute_global_forwarding_rule.reddit-fr.ip_address}"
}
