resource "local_file" "inventory" {
  content = <<-DOC
    # Ansible inventory containing variable values from Terraform.
    # Generated by Terraform.
    all:
      vars:
        ansible_connection: ssh
        ansible_user: ubuntu
        folder_id: ${var.yandex_folder_id}
    jenkins_server:
      hosts:
        jenkins_server.netology.yc:
          ansible_host: ${yandex_compute_instance.jenkins_server.network_interface.0.nat_ip_address}
    DOC
    
  filename = "${path.module}/../ansible/inventory/prod/hosts.yml"

  depends_on = [
    yandex_compute_instance.jenkins_server,
  ]
}