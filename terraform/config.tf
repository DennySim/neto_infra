resource "local_file" "config" {

  content = templatefile("${path.module}/config.tpl", 
    { 
      git_repo              = var.git_repo
      repo_owner            = var.repo_owner
      repository            = var.repository
      registry_url          = var.registry_url
      registry_id           = "${yandex_container_registry.app-registry.id}"
      registry_repo_name    = var.registry_repo_name
      image_name            = var.image_name
      pipeline_display_name = var.pipeline_display_name
    }   
  )
  
  filename = "./config.xml"
}