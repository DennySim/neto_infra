resource "local_file" "config" {

  content = templatefile("${path.module}/config.tpl", 
    { 
      registry_id = "${yandex_container_registry.app-registry.id}"
      registry_url = var.registry_url
      git_repo = var.git_repo
    }   
  )
  
  filename = "./config.xml"
}