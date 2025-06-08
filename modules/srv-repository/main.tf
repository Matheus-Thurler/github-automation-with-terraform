resource "github_repository" "srv_repository" {
  name        = var.repository_name + "-srv"
  description = var.repository_description

  visibility = var.visibility

  template {
    owner                = var.template_owner
    repository           = var.template_repository
    include_all_branches = true
  }
}

resource "github_repository" "srv_repository-config" {
  name        = var.repository_name + "-srv-config"
  description = var.repository_description

  visibility = var.visibility

  template {
    owner                = var.template_owner
    repository           = var.template_repository
    include_all_branches = true
  }
}

resource "github_actions_secret" "cloud_credential" {
  repository       = github_repository.srv_repository.name
  secret_name      = "example_secret_name"
  plaintext_value  = var.some_secret_string
}

resource "github_actions_secret" "example_secret" {
  repository       = "example_repository"
  secret_name      = "example_secret_name"
  encrypted_value  = var.some_encrypted_secret_string
}