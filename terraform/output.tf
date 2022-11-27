output "internal_ip_address_jenkins_server" {
  value = "${yandex_compute_instance.jenkins_server.network_interface.0.ip_address}"
}

output "external_ip_address_yandex_cloud_jenkins_server" {
  value = "${yandex_compute_instance.jenkins_server.network_interface.0.nat_ip_address}"
}