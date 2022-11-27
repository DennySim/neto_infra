##### CREATE SERVICEACCOUNT FOR REGISTRY AND KUBERNETES #####
resource "yandex_iam_service_account" "diplom" {
  name        = "diplom"
}

resource "yandex_resourcemanager_folder_iam_member" "diplom" {
  folder_id = var.yandex_folder_id
  role      = "editor"
  member    = "serviceAccount:${yandex_iam_service_account.diplom.id}"
}

resource "yandex_iam_service_account_key" "diplom-auth-key" {
  service_account_id = "${yandex_iam_service_account.diplom.id}"
  description        = "diplom key for service account"
  key_algorithm      = "RSA_4096"
}