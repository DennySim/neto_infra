resource "yandex_container_registry" "app-registry" {
  name      = var.registry_name
  folder_id = var.yandex_folder_id

  labels = {
    my-label = var.registry_label
  }
}

resource "yandex_container_repository" "repo" {
  name = "${yandex_container_registry.app-registry.id}/${var.registry_repo_name}"
}