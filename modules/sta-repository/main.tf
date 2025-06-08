resource "github_repository" "sta_repository" {
  name        = var.repository_name + "-sta"
  description = var.repository_description

  visibility = var.visibility

  template {
    owner                = var.template_owner
    repository           = var.template_repository
    include_all_branches = true
  }
}

resource "github_actions_secret" "aws_access_key" {
  repository       = github_repository.sta_repository.name
  secret_name      = "AWS_ACCESS_KEY"
  plaintext_value  = var.aws_access_key
}

resource "github_actions_secret" "aws_secret_key" {
  repository       = github_repository.sta_repository.name
  secret_name      = "AWS_SECRET_KEY"
  plaintext_value  = var.aws_secret_key
}

resource "github_actions_secret" "aws_region" {
  repository       = github_repository.sta_repository.name
  secret_name      = "AWS_REGION"
  plaintext_value  = var.aws_region
}

resource "github_actions_secret" "aws_s3_bucket_name" {
  repository       = github_repository.sta_repository.name
  secret_name      = "AWS_S3_BUCKET_NAME"
  plaintext_value  = var.aws_s3_bucket_name
}
