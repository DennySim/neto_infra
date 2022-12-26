resource "yandex_compute_instance" "jenkins_server" {
  zone                      = "ru-central1-a"
  hostname                  = "jenkins-server.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 4
    core_fraction=20
  }

  boot_disk {
    initialize_params {
      image_id    = "fd8n2l6igots3v1qfptm"
      name        = "root-master-node"
      type        = "network-nvme"
      size        = "30"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.public_subnets[0].id}"
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("./id_rsa.pub")}"
  }

  depends_on = [
    yandex_vpc_subnet.public_subnets,
  ]
} 