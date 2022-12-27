resource "null_resource" "wait" {
  provisioner "local-exec" {
    command = "sleep 60"
  }

  depends_on = [
    local_file.inventory
  ]
}

resource "null_resource" "ansible_jenkins" {
  provisioner "local-exec" {
    command = "ANSIBLE_FORCE_COLOR=1 ansible-playbook -i ../ansible/inventory/prod/hosts.yml ../ansible/01_jenkins_setup.yml -e 'ansible_python_interpreter=/usr/bin/python3'"
  }

  depends_on = [
    null_resource.wait,
    yandex_kubernetes_node_group.netology-node-group,
    yandex_kubernetes_cluster.netology_regional_cluster
  ]
}